function muestra_oculta(id) {
    if (document.getElementById) { //se obtiene el id
        var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
        if (el.style.display == 'none') {
            el.style.display = 'block';
            document.getElementById('btn_usuario').value = "Guardar Cambios";
        }
        else {
            el.style.display = 'none';
            document.getElementById('btn_usuario').value = "Editar";
        }

        //el.style.display = (el.style.display == 'none') ? 'block' : 'none'; //damos un atributo display:none que oculta el div
    }
}
