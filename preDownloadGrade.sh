version=$1

mkdir gradle-$version
cd gradle-$version
gradle wrapper --gradle-version $version --distribution-type bin
./gradlew tasks
gradle wrapper --gradle-version $version --distribution-type all
./gradlew tasks
