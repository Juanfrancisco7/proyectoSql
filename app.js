document.addEventListener("DOMContentLoaded", function() {
    const usuariosLista = document.getElementById("usuarios-lista");

    // Llamar a la función para cargar los usuarios al cargar la página
    cargarUsuarios();

    function cargarUsuarios() {
        // Realizar una solicitud HTTP para obtener los datos de la base de datos
        fetch("usuarios")
            .then(response => response.json())
            .then(usuarios => {
                // Limpiar la lista de usuarios antes de agregar nuevos elementos
                usuariosLista.innerHTML = "";

                // Iterar sobre la lista de usuarios y crear elementos de lista para cada uno
                usuarios.forEach(usuario => {
                    const li = document.createElement("li");
                    li.textContent = `ID: ${usuario.id} - Nombre: ${usuario.nombre} - Edad: ${usuario.edad}`;
                    usuariosLista.appendChild(li);
                });
            })
            .catch(error => console.error("Error al cargar usuarios:", error));
    }
});
