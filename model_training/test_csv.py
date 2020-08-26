import pandas as pd
# Read in data and display first 5 rows
features = pd.read_csv('for_testing_dos_no_rat.csv')
features.describe()
print('The shape of our features is:', features.shape)

import numpy as np
# Labels are the values we want to predict

features= features.drop('id', axis = 1)
features = features.drop('Dyscalculia', axis = 1)


feature_list = list(features.columns)


features = np.array(features)



import pickle
#file = open('model.txt','rb')
# s = file.readlines()
# file.close()
with open('model.txt', 'rb') as pickle_file:
    rf = pickle.load(pickle_file)

predictions = rf.predict(features)
print(predictions)
