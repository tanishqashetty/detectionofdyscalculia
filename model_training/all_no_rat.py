# -*- coding: utf-8 -*-
"""
Created on Fri Aug 31 23:19:32 2018

@author: sarthak
"""

# Pandas is used for data manipulation
import pandas as pd
# Read in data and display first 5 rows
features = pd.read_csv('all_no_rat_for_web.csv')
features.describe()
#print('The shape of our features is:', features.shape)

import numpy as np
# Labels are the values we want to predict
labels = np.array(features['Dyscalculia'])
features= features.drop("Dyscalculia", axis = 1)
features= features.drop('id', axis = 1)



feature_list = list(features.columns)


features = np.array(features)



from sklearn.model_selection import train_test_split
# Split the data into training and testing sets
train_features, test_features, train_labels, test_labels = train_test_split(features, labels, test_size = 0.45, random_state = 42)



from sklearn.preprocessing import Imputer
Imputer = Imputer(missing_values ='NaN', strategy='mean', axis=0)



Imputer= Imputer.fit(train_features[: , 1:2])
train_features[:,1:2]=Imputer.transform(train_features[:,1:2])

Imputer= Imputer.fit(test_features[: , 1:2])
test_features[:,1:2]=Imputer.transform(test_features[:,1:2])


#Imputer= Imputer.fit(train_labels[: , 1:2])
#train_labels[:,1:2]=Imputer.transform(train_labels[:,1:2])


train_features = train_features.astype(np.float32)
train_labels = train_labels.astype(np.float32)
test_features = test_features.astype(np.float32)
test_labels = test_labels.astype(np.float32)



#print('Training Features Shape:', train_features.shape)
#print('Training Labels Shape:', train_labels.shape)
#print('Testing Features Shape:', test_features.shape)
#print('Testing Labels Shape:', test_labels.shape)

from sklearn.ensemble import RandomForestRegressor


rf = RandomForestRegressor(n_estimators = 1042, random_state = 42)
#print(train_features.dtypes)
rf.fit(train_features, train_labels);


import pickle
s = pickle.dumps(rf)
file = open('model.txt','wb')
file.write(s)
file.close()



predictions = rf.predict(test_features)
errors = abs(predictions - test_labels)
#print('Mean Absolute Error:', round(np.mean(errors), 2), 'degrees.')

mape = 100 * (errors / test_labels.size)
# Calculate and display accuracy
accuracy = 100 - np.mean(mape)
print('Accuracy:', round(accuracy, 2), '%.')

# Import tools needed for visualization
from sklearn.tree import export_graphviz
import pydot
# Pull out one tree from the forest
tree = rf.estimators_[5]
# Export the image to a dot file
import os
os.environ["PATH"] += os.pathsep + 'D:/Coding/Anaconda/GV/bin/'

export_graphviz(tree, out_file = 'random_forest.dot', feature_names = feature_list, rounded = True, precision = 1)
# Use dot file to create a graph
(graph, ) = pydot.graph_from_dot_file('random_forest.dot')
graph.write_png('random_forest.png')

# Limit depth of tree to 3 levels
rf_small = RandomForestRegressor(n_estimators=10, max_depth = 3)
rf_small.fit(train_features, train_labels)
# Extract the small tree
tree_small = rf_small.estimators_[5]
# Save the tree as a png image
export_graphviz(tree_small, out_file = 'random_forest_small.dot', feature_names = feature_list, rounded = True, precision = 1)
(graph, ) = pydot.graph_from_dot_file('random_forest_small.dot')
graph.write_png('random_forest_small.png');

# Get numerical feature importances
importances = list(rf.feature_importances_)
# List of tuples with variable and importance
feature_importances = [(feature, round(importance, 2)) for feature, importance in zip(feature_list, importances)]
# Sort the feature importances by most important first
feature_importances = sorted(feature_importances, key = lambda x: x[1], reverse = True)
# Print out the feature and importances 
#[print('Variable: {:20} Importance: {}'.format(*pair)) for pair in feature_importances];

