const express = require("express");
const sqlite3 = require("sqlite3").verbose();

const app = express();
const PORT = 3000;

// Conectar a la base de datos SQLite
const db = new sqlite3.Database("sql/usuarios.db");

// Ruta para obtener la lista de usuarios
app.get("/usuarios", (req, res) => {
    db.all("SELECT * FROM usuarios", (err, rows) => {
        if (err) {
            console.error("Error al obtener usuarios:", err);
            res.status(500).json({ error: "Error interno del servidor" });
        } else {
            res.json(rows);
        }
    });
});

// Iniciar el servidor
app.listen(PORT, () => {
    console.log(`Servidor en funcionamiento en http://localhost:${PORT}`);
});
