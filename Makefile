native:
	./mvnw package -DskipTests -Pnative

native-debug:
	./mvnw package -DskipTests -Pnative-debug

native-debug-attach:
	./mvnw package -DskipTests -Pnative-debug -Dquarkus.native.additional-build-args=--debug-attach=8000

clean:
	./mvnw clean
