#!/bin/sh
JARS="./jars/swt351.jar;./jars/swtosx351.jar;./jars/trove-2.0.4.jar;./jars/pathjson.jar;./jars/icu4j-localespi-4_0_1.jar;./jars/icu4j-charsets-4_0_1.jar;./jars/icu4j-4_0_1.jar"
OPTS=""

javac ${OPTS} -classpath ${JARS};. GemXMain.java
javac ${OPTS} -classpath ${JARS};. ccfinderx\*.java
javac ${OPTS} -classpath ${JARS};. gemx\*.java
javac ${OPTS} -classpath ${JARS};. gemx\dialogs\*.java
javac ${OPTS} -classpath ${JARS};. gemx\scatterplothelper\*.java
javac ${OPTS} -classpath ${JARS};. model\*.java
javac ${OPTS} -classpath ${JARS};. utility\*.java
javac ${OPTS} -classpath ${JARS};. res\*.java
javac ${OPTS} -classpath ${JARS};. constants\*.java
javac ${OPTS} -classpath ${JARS};. customwidgets\*.java
javac ${OPTS} -classpath ${JARS};. resources\*.java

rm gemxlib.jar
jar cvf gemxlib.jar ccfinderx/*.class gemx/*.class gemx/*.png gemx/dialogs/*.class gemx/dialogs/*.png gemx/scatterplothelper/*.class model/*.class utility/*.class res/*.class res/messages.properties constants/*.class customwidgets/*.class resources/*.class

mv GemXMain.class GemXMain.xclass
rm *.class
mv GemXMain.xclass GemXMain.class
