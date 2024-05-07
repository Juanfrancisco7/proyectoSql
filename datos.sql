-- Crear la tabla Usuarios
CREATE TABLE Usuarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT,
    Puntuacion INT
);

-- Insertar datos de ejemplo
INSERT INTO Usuarios (Nombre, Edad, Puntuacion) VALUES
('Juan', 27, 15),
('María', 31, 18),
('Pedro', 24, 12),
('Ana', 29, 14),
('Luis', 35, 19),
('Sofía', 26, 16),
('Carlos', 37, 20),
('Laura', 28, 17),
('Miguel', 33, 13),
('Elena', 30, 11);