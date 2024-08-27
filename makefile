build: json.jar

json.jar:
	rm -rf classes
	mkdir -p classes
	javac -d classes src/main/java/org/json/*.java
	cd classes; jar cf ../$@ org
	rm -rf classes

clean:
	rm -rf classes json.jar
