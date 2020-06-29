native:
	./mvnw clean package -DskipTests \
	-Pnative

native-snapshot:
	./mvnw clean package -DskipTests \
	-Pnative \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom

native-debug:
	./mvnw clean package -DskipTests \
	-Pnative-debug

native-debug-attach:
	./mvnw clean package -DskipTests \
	-Pnative-debug-attach

native-debug-snapshot:
	./mvnw clean package -DskipTests \
	-Pnative-debug \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom

native-debug-snapshot-with-boolean:
	./mvnw clean package -DskipTests \
	-Pnative \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom \
	-Dquarkus.native.debug.enabled=true

native-debug-attach-snapshot-with-boolean:
	./mvnw clean package -DskipTests \
	-Pnative-debug-attach \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom \
	-Dquarkus.native.debug.enabled=true

maven-debug-native-debug-snapshot-with-boolean:
	mvnDebug clean package -DskipTests \
	-X \
	-Pnative \
	-Dquarkus.platform.version=999-SNAPSHOT \
	-Dquarkus-plugin.version=999-SNAPSHOT \
	-Dquarkus.platform.artifact-id=quarkus-bom \
	-Dquarkus.native.debug.enabled=true
