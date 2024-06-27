# Use uma imagem base do OpenJDK 17
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo JAR buildado para o contêiner
COPY build/libs/backend-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta que a aplicação vai rodar
EXPOSE 8080

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
