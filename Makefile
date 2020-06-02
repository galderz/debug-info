native:
	./mvnw package -DskipTests -Pnative

native-debug:
	./mvnw package -DskipTests -Pnative-debug

native-debug-attach:
	./mvnw package -DskipTests -Pnative-debug-attach

clean:
	./mvnw clean
