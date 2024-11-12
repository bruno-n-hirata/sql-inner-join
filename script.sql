CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(100) NOT NULL
);

INSERT INTO departamentos (nome_departamento) VALUES
('Recursos Humanos'),
('Tecnologia da Informação'),
('Marketing');

CREATE TABLE empregados (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

INSERT INTO empregados (nome, departamento_id) VALUES
('Alice', 1),
('Bob', 2),
('Carlos', 3),
('Diana', 2);

SELECT empregados.nome, departamentos.nome_departamento
FROM empregados
INNER JOIN departamentos ON empregados.departamento_id = departamentos.id;
