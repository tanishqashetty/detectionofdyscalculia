from flask import Flask, json, request, render_template, send_from_directory
from flaskext.mysql import MySQL
#from flask_cors import CORS
import numpy as np
import pickle,datetime,os
from datetime import timedelta
with open('model.txt', 'rb') as pickle_file:
    rf = pickle.load(pickle_file)
app = Flask(__name__)
mysql = MySQL()
count = [45,3,63,34,23]
tests = ['test5','test6','test10','test18a','test18b']
#CORS(app)
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'dyscalculia'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
conn = mysql.connect()
globalCursor = conn.cursor()

@app.route('/new_patient', methods=['POST'])
def new_patient():
    cursor = conn.cursor()
    content = request.json
    print(request.json)
    if (request.json['cert'] == None):
        cursor.execute('INSERT INTO patient_info(p_name, p_iq, p_age, p_grade, p_gender, p_cert) VALUES ("'+str(content['name'])+'",'+str(content['iq'])+','+str(content['age'])+','+str(content['grade'])+','+str(content['gender'])+', null'+')')
    else:
        cursor.execute('INSERT INTO patient_info(p_name, p_iq, p_age, p_grade, p_gender, p_cert) VALUES ("'+str(content['name'])+'",'+str(content['iq'])+','+str(content['age'])+','+str(content['grade'])+','+str(content['gender'])+','+str(content['cert'])+')')
    id = cursor.lastrowid
    cursor.execute('UPDATE patient_info SET date="'+str(content['date'])+'" Where p_id = '+str(id))
    conn.commit()
    cursor.close()
    return json.dumps({'id':id})

@app.route('/check_test', methods=['POST'])
def check_test():
    cursor = conn.cursor()
    content = request.json
    result = cursor.execute('Select * from patient_info where p_id = '+str(content['id']))
    packet = []
    if (result == 1):
        result = cursor.execute('Select * from test5 where test5_id ='+str(content['id']))
        if (result == 1):
            for strings in tests:
                query = 'Select * from '+strings+' where '+strings+'_id = '+str(content['id'])
                cursor.execute(query)
                data = cursor.fetchone()
                temp = []
                for index, value in enumerate(data):
                    if (index !=0) :
                        temp.append(str(value))
                packet.append(temp)
        else:
            cursor.execute('INSERT INTO test5(test5_id, 5_01, 5_02, 5_03, 5_04, 5_05, 5_06, 5_07, 5_08, 5_09, 5_10, 5_11, 5_12, 5_13, 5_14, 5_15, 5_16, 5_17, 5_18, 5_19, 5_20, 5_21, 5_22, 5_23, 5_24, 5_25, 5_26, 5_27, 5_28, 5_29, 5_30, 5_31, 5_32, 5_33, 5_34, 5_35, 5_36, 5_37, 5_38, 5_39, 5_40, 5_41, 5_42, 5_43, 5_44, 5_45) VALUES ('+str(content['id'])+',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)')
            cursor.execute('INSERT INTO test6(test6_id, 6_Correct, 6_incorrect, 6_totalAns) VALUES ('+str(content['id'])+',0,0,0)')
            cursor.execute('INSERT INTO test10(test10_id, 10_01, 10_02, 10_03, 10_04, 10_05, 10_06, 10_07, 10_08, 10_09, 10_10, 10_11, 10_12, 10_13, 10_14, 10_15, 10_16, 10_17, 10_18, 10_19, 10_20, 10_21, 10_22, 10_23, 10_24, 10_25, 10_26, 10_27, 10_28, 10_29, 10_30, 10_31, 10_32, 10_33, 10_34, 10_35, 10_36, 10_37, 10_38, 10_39, 10_40, 10_41, 10_42, 10_43, 10_44, 10_45, 10_46, 10_47, 10_48, 10_49, 10_50, 10_51, 10_52, 10_53, 10_54, 10_55, 10_56, 10_57, 10_58, 10_59, 10_60, 10_61, 10_62, 10_63) VALUES ('+str(content['id'])+',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)')
            cursor.execute('INSERT INTO test18a(test18a_id, 18A_01, 18A_02, 18A_03, 18A_04, 18A_05, 18A_06, 18A_07, 18A_08, 18A_09, 18A_10, 18A_11, 18A_12, 18A_13, 18A_14, 18A_15, 18A_16, 18A_17, 18A_18, 18A_19, 18A_20, 18A_21, 18A_22, 18A_23, 18A_24, 18A_25, 18A_26, 18A_27, 18A_28, 18A_29, 18A_30, 18A_31, 18A_32, 18A_33, 18A_34) VALUES ('+str(content['id'])+',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)')
            cursor.execute('INSERT INTO test18b(test18b_id, 18B_01, 18B_02, 18B_03, 18B_04, 18B_05, 18B_06, 18B_07, 18B_08, 18B_09, 18B_10, 18B_11, 18B_12, 18B_13, 18B_14, 18B_15, 18B_16, 18B_17, 18B_18, 18B_19, 18B_20, 18B_21, 18B_22, 18B_23) VALUES ('+str(content['id'])+',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)')
            for i in count:
                temp = []
                for j in range(i):
                    temp.append("0")
                packet.append(temp)
    else:
        print('Throw this user out')
    conn.commit()
    cursor.close()
    return json.dumps({'data':packet})

@app.route('/update_record', methods=['POST'])
def update_record():
    cursor = conn.cursor()
    content = request.json
    query = 'Update '+str(content['name'])+' SET '
    if ( content['name'] != 'test6'):
        for index, value in enumerate(content['list']):
            query += str(content['name'])[4:].upper()+"_"+str(index+1).zfill(2)+" = "+str(value)+ ' '
            if index != len(content['list'])-1:
                query += " , "
    else:
        query+= " 6_Correct="+str(content['list'][0])+",6_incorrect="+str(content['list'][1])+",6_totalAns="+str(content['list'][2])+" "
    query += " Where "+str(content['name'])+"_id = "+str(content['id'])
    cursor.execute(query)
    conn.commit()
    cursor.close()
    return json.dumps(request.json)

@app.route('/predict', methods=['POST'])
def predict():
    cursor = conn.cursor()
    print(request.json)
    cursor.execute('Select * from model_view where p_id = '+str(request.json['id']))
    data = cursor.fetchone()
    temp = []
    for index, value in enumerate(data):
        if (index != 0):
            temp.append(value)
    data = temp
    data = np.array(data)
    data = data.reshape(1,-1)
    predictions = rf.predict(data)
    cursor.execute('UPDATE patient_info SET predicted='+str(predictions[0])+" Where p_id = "+str(request.json['id']))
    cursor.execute('Select * from patient_info where p_id ='+str(request.json['id']))
    data = cursor.fetchone()
    conn.commit()
    cursor.close()
    return json.dumps({'data':data,'result':predictions[0]})

@app.route('/actual_value', methods=['POST'])
def actual_value():
    cursor = conn.cursor()
    cursor.execute('UPDATE patient_info SET expected='+str(request.json['expected'])+" Where p_id = "+str(request.json['id']))
    conn.commit()
    cursor.close()
    return json.dumps(request.json)

@app.route('/get_profile', methods=['POST'])
def get_profile():
    cursor = conn.cursor()
    content = request.json
    packet = []
    questData = []
    info = {'info':None}
    result = cursor.execute('Select * from patient_info where p_id = '+str(content['id']))
    status = {'status': 0}
    if result == 1:
        status['status'] = 1
        cursor.execute('Select * from patient_info where p_id ='+str(request.json['id']))
        info['info'] = cursor.fetchone()
        result = cursor.execute('Select * from test5 where test5_id ='+str(content['id']))
        if (result == 1):
            for strings in tests:
                query = 'Select * from '+strings+' where '+strings+'_id = '+str(content['id'])
                cursor.execute(query)
                data = cursor.fetchone()
                temp = []
                for index, value in enumerate(data):
                    if (index !=0) :
                        temp.append(str(value))
                questData.append(temp)
    else:
        status['status'] = 0
    packet.append(status)
    packet.append({'questions':questData})
    packet.append(info)
    conn.commit()
    cursor.close()
    return json.dumps(packet, default = converter)

@app.route('/update_cert', methods=['POST'])
def update_cert():
    cursor = conn.cursor()
    cursor.execute('UPDATE patient_info SET p_cert='+str(request.json['cert'])+" Where p_id = "+str(request.json['id']))
    conn.commit()
    cursor.close()
    return json.dumps(request.json)

@app.route('/update_profile', methods=['POST'])
def update_profile():
    cursor = conn.cursor()
    content = request.json
    if (content['date'] != None):
        cursor.execute('UPDATE patient_info SET p_name="'+str(content['name'])+'",p_iq='+str(content['iq'])+',p_age='+str(content['age'])+',p_grade='+str(content['grade'])+',p_gender='+str(content['gender'])+',date="'+str(content['date'])+'" WHERE p_id = '+str(content['id']))
    else:
        cursor.execute('UPDATE patient_info SET p_name="'+str(content['name'])+'",p_iq='+str(content['iq'])+',p_age='+str(content['age'])+',p_grade='+str(content['grade'])+',p_gender='+str(content['gender'])+' WHERE p_id = '+str(content['id']))
    conn.commit()
    cursor.close()
    return json.dumps(request.json)

@app.route('/not_certified')
def not_certified():
    cursor = conn.cursor()
    cursor.execute('Select * from patient_info WHERE p_cert is null')
    packet = []
    row = cursor.fetchone()
    while row != None:
        # print(row)
        packet.append({
            'id':   row[0],
            'name': row[1],
            'age':  row[3],
            'grade': row[4],
            'gender': row[5]
        })
        row = cursor.fetchone()
    cursor.close()
    return json.dumps({'packet':packet})

@app.route('/find_user', methods=['POST'])
def find_user():
    try:
        globalCursor.execute("SELECT *  FROM patient_info WHERE p_name like '%"+str(request.json['name'])+"%' LIMIT 5")
    except:
        print('Error')
        os._exit(0)
    packet =[]
    row = globalCursor.fetchone()
    while row != None:
        # print(row)
        packet.append({
            'id':   row[0],
            'name': row[1],
            'age':  row[3],
            'grade': row[4],
            'gender': row[5]
        })
        row = globalCursor.fetchone()
    return json.dumps({'packet':packet})

@app.route('/find_cert', methods=['POST'])
def find_cert():
    try:
        globalCursor.execute("SELECT *  FROM patient_info WHERE p_cert like '%"+str(request.json['cert'])+"%' LIMIT 5")
    except:
        print('Error')
        os._exit(0)
    packet =[]
    row = globalCursor.fetchone()
    while row != None:
        # print(row)
        packet.append({
            'id':   row[0],
            'name': row[1],
            'age':  row[3],
            'grade': row[4],
            'gender': row[5],
            'cert': row[6]
        })
        row = globalCursor.fetchone()
    return json.dumps({'packet':packet})

__angular_paths = []
__angular_default_path = "index.html"
__root = "./static/"

for root, subdirs, files in os.walk(__root):
    if len(root) > len(__root):
        root += "/"

    for file in files:
        relativePath = str.replace(root + file, __root, "")
        __angular_paths.append(relativePath)

# Special trick to capture all remaining routes
@app.route('/<path:path>')
@app.route('/', defaults={'path': ''})
def angular(path):    
    # print(__angular_paths)
    if path not in __angular_paths:
        path = __angular_default_path
    
    return send_from_directory(__root, path)

def converter (o):
    if isinstance(o, datetime.datetime):
        o = o + timedelta(days=1)
        return str(o)


if __name__ == "__main__":
    app.run(port= 80,debug=True)
