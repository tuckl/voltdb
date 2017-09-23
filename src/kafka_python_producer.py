from kafka import KafkaProducer
import time

#we are going to send the messages to kafka producer, just mimicking that we can stream live data.
#when Kafka producer, we can have multiple comsumers can substribe the messages and route to many place.
#In the class lecture, we demostrated already that consumer can send to HDFS.
#Here we want to demostrate that we can send messages to VoltDB and performance analysis very fast. 
#In theory, analyzed data can be stored in VoltDB and send it for HDFS. With not much of time left, we will not built this piece.
 
f = open('/Users/tul560/myvoltdb/finalproject/thads2013n.csv', 'r')

producer = KafkaProducer(bootstrap_servers='localhost:9092')
topic = 'tuck1'

for line in f:
    print 'Sending message to kafka producer ### ' + line
    producer.send(topic, line )

f.closed
print 'Done sending kafka messages'
