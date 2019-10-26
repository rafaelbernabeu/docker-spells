docker run \
    --name=zookeeper1 \
    --network rab \
    --hostname=zookeeper1 \
    -p 2181:2181 \
    -e ZOO_MY_ID=1 \
    -e ZOO_PORT=2181 \
    -e ZOO_SERVERS='server.1=0.0.0.0:2888:3888;2181 server.2=zookeeper2:2888:3888;2181 server.3=zookeeper3:2888:3888;2181' \
    -e ZOO_STANDALONE_ENABLED='false' \
    zookeeper

docker run  \
    --name=zookeeper2 \
    --network rab \
    --hostname=zookeeper2 \
    -e ZOO_MY_ID=2 \
    -e ZOO_PORT=2182 \
    -e ZOO_SERVERS='server.1=zookeeper1:2888:3888;2181 server.2=0.0.0.0:2888:3888;2181 server.3=zookeeper3:2888:3888;2181' \
    -e ZOO_STANDALONE_ENABLED='false' \
    zookeeper

docker run \
    --name=zookeeper3 \
    --network rab \
    --hostname=zookeeper3 \
    -e ZOO_MY_ID=3 \
    -e ZOO_PORT=2183 \
    -e ZOO_SERVERS='server.1=zookeeper1:2888:3888;2181 server.2=zookeeper2:2888:3888;2181 server.3=0.0.0.0:2888:3888;2181' \
    -e ZOO_STANDALONE_ENABLED='false' \
    zookeeper

docker run -d \
    --name=broker1 \
    --hostname=broker1 \
    -e KAFKA_BROKER_ID=1 \
    -e KAFKA_BROKER_RACK=1 \
    -e KAFKA_JMX_PORT=9999 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker1:29092 \
    confluentinc/cp-kafka

docker run -d \
    --name=broker2 \
    --hostname=broker2 \
    -e KAFKA_BROKER_ID=2 \
    -e KAFKA_BROKER_RACK=1 \
    -e KAFKA_JMX_PORT=9998 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker2:29093 \
    confluentinc/cp-kafka

docker run -d \
    --name=broker3 \
    --hostname=broker3 \
    -e KAFKA_BROKER_ID=3 \
    -e KAFKA_BROKER_RACK=2 \
    -e KAFKA_JMX_PORT=9997 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker3:29092 \
    confluentinc/cp-kafka

docker run -d \
    --name=broker4 \
    --hostname=broker4 \
    -e KAFKA_BROKER_ID=4 \
    -e KAFKA_BROKER_RACK=2 \
    -e KAFKA_JMX_PORT=9996 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker4:29092 \
    confluentinc/cp-kafka

docker run -d \
    --name=broker5 \
    --hostname=broker5 \
    -e KAFKA_BROKER_ID=5 \
    -e KAFKA_BROKER_RACK=3 \
    -e KAFKA_JMX_PORT=9995 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker5:29092 \
    confluentinc/cp-kafka

docker run -d \
    --name=broker6 \
    --hostname=broker6 \
    -e KAFKA_BROKER_ID=6 \
    -e KAFKA_BROKER_RACK=3 \
    -e KAFKA_JMX_PORT=9994 \
    -e KAFKA_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2182,zookeeper3:2183 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://broker6:29092 \
    confluentinc/cp-kafka

docker run -d -p 19000:9000 --name kafka-manager -e ZK_HOSTS="zookeeper1:2181,zookeeper2:2182,zookeeper3:2183" sheepkiller/kafka-manager
