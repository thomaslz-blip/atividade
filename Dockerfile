# Usa imagem oficial do Python
FROM python:3.10-slim

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . /app

# Instala dependências (se tiver requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Comando para rodar a aplicação
CMD ["python", "app.py"]
