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

