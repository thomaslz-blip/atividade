# Usar imagem oficial do Python
FROM python:3.10-slim

# Definir diretório de trabalho
WORKDIR /app

# Copiar arquivos
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

# Expor porta
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
