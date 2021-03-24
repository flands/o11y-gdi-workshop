#!/bin/bash
while true
do
    sleep 10
    echo 'Running the java client command'
    java -jar target/java-agent-example-1.0-SNAPSHOT-shaded.jar http://aspnetcore:5000/api/items
done

