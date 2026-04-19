from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Olá! Sua aplicação está rodando no Docker"

if __name__ == "__main__":
    # host=0.0.0.0 deixa acessível fora do container
    # port=5000 corresponde ao mapeamento que você fez no docker run
    app.run(host="0.0.0.0", port=5000)
