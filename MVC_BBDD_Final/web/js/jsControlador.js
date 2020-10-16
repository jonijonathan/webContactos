function validarRegistro() {
    var nombre = document.getElementById("nombre");
    var arialNombre = document.getElementById("arialErrorNombre");
    var email = document.getElementById("email");
    var arialEmail = document.getElementById("arialErrorEmail");
    var contra = document.getElementById("clave");
    var arialContra = document.getElementById("arialErrorClave");
    var formularioRegistro = document.getElementById("formularioRegistro");

    email.addEventListener('input', function (event) {
        if (email.validity.valid) {
            arialEmail.innerHTML = ''; // Restablece el contenido del mensaje
            arialEmail.className = 'error'; // Restablece el estado visual del mensaje
        } else {
            // Si todavía hay un error, muestra el error exacto
            showErrorEmail();
        }
    });

    nombre.addEventListener('input', function (event) {
        if (nombre.validity.valid) {
            arialNombre.innerHTML = ''; // Restablece el contenido del mensaje
            arialNombre.className = 'error'; // Restablece el estado visual del mensaje
        } else {
            // Si todavía hay un error, muestra el error exacto
            showErrorNombre();
        }
    });

    contra.addEventListener('input', function (event) {
        if (contra.validity.valid) {
            arialContra.innerHTML = ''; // Restablece el contenido del mensaje
            arialContra.className = 'error'; // Restablece el estado visual del mensaje
        } else {
            // Si todavía hay un error, muestra el error exacto
            showErrorContra();
        }
    });

    function showErrorContra() {
        if (contra.validity.valueMissing) {
            // Si el campo está vacío
            // muestra el mensaje de error siguiente.
            arialContra.textContent = 'Debe introducir una Contraseña.';
        } else if (contra.validity.typeMismatch) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialContra.textContent = 'El valor introducido debe ser una contraseña.';
        } else if (contra.validity.tooShort) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialContra.textContent = 'La contraseña es muy corta.';
        }
        // Establece el estilo apropiado
        arialContra.className = 'error active';
    }


    function showErrorNombre() {
        if (nombre.validity.valueMissing) {
            // Si el campo está vacío
            // muestra el mensaje de error siguiente.
            arialNombre.textContent = 'Debe introducir un nombre.';
        } else if (nombre.validity.typeMismatch) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialNombre.textContent = 'El valor introducido debe ser un nombre.';
        } else if (nombre.validity.tooShort) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialNombre.textContent = 'El nombre es muy corto.';
        }
        // Establece el estilo apropiado
        arialNombre.className = 'error active';
    }

    function showErrorEmail() {
        if (email.validity.valueMissing) {
            // Si el campo está vacío
            // muestra el mensaje de error siguiente.
            arialEmail.textContent = 'Debe introducir una dirección de correo electrónico.';
        } else if (email.validity.typeMismatch) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialEmail.textContent = 'El valor introducido debe ser una dirección de correo electrónico.';
        }
        // Establece el estilo apropiado
        arialEmail.className = 'error active';
    }

    formularioRegistro.addEventListener('submit', function (event) {
        // si el campo de correo electrónico es válido, dejamos que el formulario se envíe

        if (!email.validity.valid) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorEmail();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }

        if (!nombre.validity.valid) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorNombre();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }

        if (!contra.validity.valid) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorContra();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }
    });

}

function validarLoggin() {
    var nombre = document.getElementById("nombre");
    var arialNombre = document.getElementById("arialErrorNombre");
    var email = document.getElementById("email");
    var arialEmail = document.getElementById("arialErrorEmail");
    var contra = document.getElementById("clave");
    var arialContra = document.getElementById("arialErrorClave");
    var formularioLogging = document.getElementById("formularioLogging");

    email.addEventListener('input', function (event) {
        if (email.validity.valid) {
            arialEmail.innerHTML = ''; // Restablece el contenido del mensaje
            arialEmail.className = 'error'; // Restablece el estado visual del mensaje
        } else {
            // Si todavía hay un error, muestra el error exacto
            showErrorEmail();
        }
    });


    contra.addEventListener('input', function (event) {
        if (contra.validity.valid) {
            arialContra.innerHTML = ''; // Restablece el contenido del mensaje
            arialContra.className = 'error'; // Restablece el estado visual del mensaje
        } else {
            // Si todavía hay un error, muestra el error exacto
            showErrorContra();
        }
    });

    function showErrorContra() {
        if (contra.validity.valueMissing) {
            // Si el campo está vacío
            // muestra el mensaje de error siguiente.
            arialContra.textContent = 'Debe introducir una Contraseña.';
        }
        // Establece el estilo apropiado
        arialContra.className = 'error active';
    }


    function showErrorEmail() {
        if (email.validity.valueMissing) {
            // Si el campo está vacío
            // muestra el mensaje de error siguiente.
            arialEmail.textContent = 'Debe introducir una dirección de correo electrónico.';
        } else if (email.validity.typeMismatch) {
            // Si el campo no contiene una dirección de correo electrónico
            // muestra el mensaje de error siguiente.
            arialEmail.textContent = 'El valor introducido debe ser una dirección de correo electrónico.';
        }
        // Establece el estilo apropiado
        arialEmail.className = 'error active';
    }

    formularioLogging.addEventListener('submit', function (event) {
        // si el campo de correo electrónico es válido, dejamos que el formulario se envíe

        if (!email.validity.valid) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorEmail();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }

        if (!contra.validity.valid) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorContra();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }
    });

}
