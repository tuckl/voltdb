I created following directories and put the files.


Inventories:
(1)Directory: /Users/tul560/myvoltdb/finalproject 
      hads_table.sql (to test with csvloader) 
      hads2.sql (to test with kafkaloader) 
      thads2013n.csv 
      kafka_python_producer.py
      voltdbclient.py

This is python 2.7 virtualenv.
(2)Directory: /Users/tul560/Documents/PlayProjects/p2_env1
   voltdbclient.py
   finalproj.ipynb


(3)
#.bash_profile modification
#Add and change this path to point to your kafka lib 
#for voltdb kafka loader
export ZKLIB=/Users/tul560/Documents/kafka/kafka_2.11-0.9.0.1/libs