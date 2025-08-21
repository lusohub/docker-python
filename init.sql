CREATE DATABASE recipes_db;
USE recipes_db;

CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO recipes (name) VALUES
('Bacalhau à Brás'),
('Francesinha'),
('Caldo Verde'),
('Arroz de Marisco'),
('Cozido à Portuguesa'),
('Pastéis de Nata'),
('Sopa da Pedra'),
('Polvo à Lagareiro'),
('Feijoada à Transmontana'),
('Arroz de Pato'),
('Açorda Alentejana'),
('Amêijoas à Bulhão Pato'),
('Sardinhas Assadas'),
('Leitão da Bairrada'),
('Carne de Porco à Alentejana'),
('Queijadas de Sintra'),
('Bifanas'),
('Tripas à Moda do Porto'),
('Pão de Ló'),
('Chanfana');