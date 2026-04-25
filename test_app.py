import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_home_status_code(client):
    response = client.get("/")
    assert response.status_code == 200

def test_home_content(client):
    response = client.get("/")
    assert "Olá! Sua aplicação está rodando no Docker" in response.get_data(as_text=True)


def test_home_not_found(client):
    response = client.get("/naoexiste")
    assert response.status_code == 404

def test_home_type(client):
    response = client.get("/")
    assert isinstance(response.data, bytes)

def test_home_length(client):
    response = client.get("/")
    assert len(response.data) > 0
