# Usa imagem oficial do Python
FROM python:3.10-slim

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . /app

# Instala dependências listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Comando para rodar a aplicação Flask
CMD ["python", "app.py"]
