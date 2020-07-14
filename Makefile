native:
	./mvnw dependency:sources -Dsilent=true
	./mvnw clean package -DskipTests \
	-Pnative

native-snapshot:
	./mvnw dependency:sources -Dsilent=true
	./mvnw clean package -DskipTests \
	-Pnative \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom

maven-debug-native-debug-snapshot-with-boolean:
	mvnDebug clean package -DskipTests \
	-X \
	-Pnative \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom \
	-Dquarkus.native.debug.enabled=true
