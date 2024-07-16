# # Function to download and install a Maven dependency
# function install_jar() {
#     local url=$1
#     local file=$2
#     local groupid=$3
#     local artifactid=$4
#     local version=$5

#     echo "Downloading $artifactid..."
#     wget -q $url -O $file

#     echo "Installing $artifactid into Maven local repository..."
#     mvn install:install-file \
#     -Dfile=$file \
#     -DgroupId=$groupid \
#     -DartifactId=$artifactid \
#     -Dversion=$version \
#     -Dpackaging=jar \
#     -DgeneratePom=true
# }

# # MASON Version 20
# install_jar "http://central.maven.org/maven2/mason/mason/20/mason-20.jar" \
#             "mason.20.jar" \
#             "mason" \
#             "mason" \
#             "20"

# # Commons-Math Version 3.6.1
# install_jar "http://central.maven.org/maven2/org/apache/commons/commons-math3/3.6.1/commons-math3-3.6.1.jar" \
#             "commons-math3-3.6.1.jar" \
#             "org.apache.commons" \
#             "commons-math3" \
#             "3.6.1"

# # JSON in Java Version 20180813
# install_jar "http://central.maven.org/maven2/org/json/json/20180813/json-20180813.jar" \
#             "json-20180813.jar" \
#             "org.json" \
#             "json" \
#             "20180813"

# # WebGraph Version 3.6.1
# install_jar "http://central.maven.org/maven2/it/unimi/dsi/webgraph/3.6.1/webgraph-3.6.1.jar" \
#             "webgraph-3.6.1.jar" \
#             "it.unimi.dsi" \
#             "webgraph" \
#             "3.6.1"

# # DSI Utilities Version 2.5.4
# install_jar "http://central.maven.org/maven2/it/unimi/dsi/dsiutils/2.5.4/dsiutils-2.5.4.jar" \
#             "dsiutils-2.5.4.jar" \
#             "it.unimi.dsi" \
#             "dsiutils" \
#             "2.5.4"

# # fastutil Version 8.2.3
# install_jar "http://central.maven.org/maven2/it/unimi/dsi/fastutil/8.2.3/fastutil-8.2.3.jar" \
#             "fastutil-8.2.3.jar" \
#             "it.unimi.dsi" \
#             "fastutil" \
#             "8.2.3"

# # Sux for Java Version 4.2.0
# install_jar "http://central.maven.org/maven2/it/unimi/dsi/sux4j/4.2.0/sux4j-4.2.0.jar" \
#             "sux4j-4.2.0.jar" \
#             "it.unimi.dsi" \
#             "sux4j" \
#             "4.2.0"

# # JSAP Version 2.1
# install_jar "http://central.maven.org/maven2/com/martiansoftware/jsap/2.1/jsap-2.1.jar" \
#             "jsap-2.1.jar" \
#             "com.martiansoftware" \
#             "jsap" \
#             "2.1"

# # SLF4J Version 1.7.25
# install_jar "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar" \
#             "slf4j-api-1.7.25.jar" \
#             "org.slf4j" \
#             "slf4j-api" \
#             "1.7.25"

# # MySQL Connector for Java Version 5.1
# install_jar "http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.49/mysql-connector-java-5.1.49.jar" \
#             "mysql-connector-java-5.1.49.jar" \
#             "mysql" \
#             "mysql-connector-java" \
#             "5.1.49"

# # JUnit5 Version 5
# install_jar "http://central.maven.org/maven2/org/junit/jupiter/junit-jupiter/5.7.0/junit-jupiter-5.7.0.jar" \
#             "junit-jupiter-5.7.0.jar" \
#             "org.junit.jupiter" \
#             "junit-jupiter" \
#             "5.7.0"

# # Mockito Core Version 4.0.0
# install_jar "http://central.maven.org/maven2/org/mockito/mockito-core/4.0.0/mockito-core-4.0.0.jar" \
#             "mockito-core-4.0.0.jar" \
#             "org.mockito" \
#             "mockito-core" \
#             "4.0.0"

# # Byte Buddy Version 1.11.19
# install_jar "http://central.maven.org/maven2/net/bytebuddy/byte-buddy/1.11.19/byte-buddy-1.11.19.jar" \
#             "byte-buddy-1.11.19.jar" \
#             "net.bytebuddy" \
#             "byte-buddy" \
#             "1.11.19"

# # Byte Buddy Agent Version 1.11.19
# install_jar "http://central.maven.org/maven2/net/bytebuddy/byte-buddy-agent/1.11.19/byte-buddy-agent-1.11.19.jar" \
#             "byte-buddy-agent-1.11.19.jar" \
#             "net.bytebuddy" \
#             "byte-buddy-agent" \
#             "1.11.19"

# # Objenesis Version 3.2
# install_jar "http://central.maven.org/maven2/org/objenesis/objenesis/3.2/objenesis-3.2.jar" \
#             "objenesis-3.2.jar" \
#             "org.objenesis" \
#             "objenesis" \
#             "3.2"

# # Mockito Inline Version 4.0.0
# install_jar "http://central.maven.org/maven2/org/mockito/mockito-inline/4.0.0/mockito-inline-4.0.0.jar" \
#             "mockito-inline-4.0.0.jar" \
#             "org.mockito" \
#             "mockito-inline" \
#             "4.0.0"

# echo "All dependencies downloaded and installed."

mvn install:install-file \
-Dfile=jars/mason.20.jar \
-DgroupId=mason \
-DartifactId=mason \
-Dversion=20 \
-Dpackaging=jar \
-DgeneratePom=true