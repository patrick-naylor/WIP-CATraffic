#Import required packages
import psycopg2
import pandas as pd
import numpy as np

#Connect to postgresql server. Password removed
conn = psycopg2.connect(host='localhost', database='traffic', user='patricknaylor', password='') 
cur = conn.cursor()

#Collect real lat and lon values
cur.execute('SELECT latitude FROM collisions WHERE latitude IS NOT NULL AND longitude IS NOT NULL') 
lat_arr = np.array(cur.fetchall()) 
lat_arr = np.concatenate(lat_arr) 
cur.execute('SELECT longitude FROM collisions WHERE longitude IS NOT NULL AND latitude IS NOT NULL') 
lon_arr = np.array(cur.fetchall()) 
lon_arr = np.concatenate(lon_arr)

#Save positional data to a pandas csv
column_names = ['latitude', 'longitude'] 
data = np.zeros((np.shape(lat_arr)[0], 2)) 
data[:, 0] = lat_arr
data[:, 1] = lon_arr 
pos_df =  pd.DataFrame(data = data, columns=column_names)pos_df.to_csv('/Users/patricknaylor/desktop/CA_traffic/Data/position_df.csv')

#collect and save fatality data
cur.execute('SELECT killed_victims FROM collisions WHERE latitude IS NOT NULL AND longitude IS NOT NULL AND killed_victims IS NOT NULL')
kill_arr = np.array(cur.fetchall())
kill_arr = np.concatenate(kill_arr)
np.savetxt('/Users/patricknaylor/desktop/CA_traffic/Data/killed_res.csv', kill_arr, delimiter=',')