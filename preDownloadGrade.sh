version=$1

mkdir gradle-$version
cd gradle-$version
gradle wrapper --gradle-version $version
./gradlew tasks

