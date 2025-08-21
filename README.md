# docker-python

Este projeto é uma aplicação simples em FastAPI ligada a uma base de dados MySQL.
Fornece endpoints para obter receitas guardadas na base de dados.

- Os comandos neste README são apenas um exemplo para mostrar o processo manual.
- Tens liberdade para alterar nomes de serviços, variáveis de ambiente, ou estrutura do projeto.

## Requisitos

1. Criar um Dockerfile para a REST API em Python.
2. Criar um ficheiro compose.yml com 2 serviços:
	- REST API (FastAPI)
	- Base de Dados (MySQL)
3. Cria um dockerignore de acordo com o projeto


- Garante que a API só incia depois da base de dados estar pronta.
- A base de dados deve persistir dados (usar volumes).
- O docker-compose deve carregar automaticamente o ficheiro init.sql para popular a base de dados com receitas.


# Install MySQL on Ubuntu

```
sudo apt update
sudo apt install mysql-server -y
sudo mysqld_safe --skip-networking=0 --bind-address=0.0.0.0 &
sudo mysql_secure_installation
sudo mysql -u root -p
SOURCE ./init.sql;
```

## Verify & Setup root

```
mysql -u root -p

USE recipes_db;
SHOW TABLES;
SELECT * FROM recipes LIMIT 10;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'megaPassword';
FLUSH PRIVILEGES;
```

# Setup API

```
sudo apt install python3-venv -y
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Run API

```
uvicorn main:app --reload
```

# Resulto Esperado

GET https://app.github.dev/recipes

```
[
  {
    "id": 1,
    "name": "Bacalhau à Brás"
  },
  {
    "id": 2,
    "name": "Francesinha"
  },
  {
    "id": 3,
    "name": "Caldo Verde"
  },
  {
    "id": 4,
    "name": "Arroz de Marisco"
  },
  {
    "id": 5,
    "name": "Cozido à Portuguesa"
  },
  {
    "id": 6,
    "name": "Pastéis de Nata"
  },
  {
    "id": 7,
    "name": "Sopa da Pedra"
  },
  {
    "id": 8,
    "name": "Polvo à Lagareiro"
  },
  {
    "id": 9,
    "name": "Feijoada à Transmontana"
  },
  {
    "id": 10,
    "name": "Arroz de Pato"
  },
  {
    "id": 11,
    "name": "Açorda Alentejana"
  },
  {
    "id": 12,
    "name": "Amêijoas à Bulhão Pato"
  },
  {
    "id": 13,
    "name": "Sardinhas Assadas"
  },
  {
    "id": 14,
    "name": "Leitão da Bairrada"
  },
  {
    "id": 15,
    "name": "Carne de Porco à Alentejana"
  },
  {
    "id": 16,
    "name": "Queijadas de Sintra"
  },
  {
    "id": 17,
    "name": "Bifanas"
  },
  {
    "id": 18,
    "name": "Tripas à Moda do Porto"
  },
  {
    "id": 19,
    "name": "Pão de Ló"
  },
  {
    "id": 20,
    "name": "Chanfana"
  }
]
```