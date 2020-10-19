function validarRegistro() {
    var nombre = document.getElementById("nombre");
    var arialNombre = document.getElementById("arialErrorNombre");
    var email = document.getElementById("email");
    var arialEmail = document.getElementById("arialErrorEmail");
    var contra = document.getElementById("clave");
    var arialContra = document.getElementById("arialErrorClave");
    var formularioRegistro = document.getElementById("formularioRegistro");
    var rCatcha = document.getElementById("rCatcha");
    var response = grecaptcha.getResponse();
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

    function showErrorCatcha() {

        arialErrorCatcha.textContent = 'Tienes que completar el catcha';
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

        if (response.length == 0) {
            // Si no es así, mostramos un mensaje de error apropiado
            showErrorCatcha();
            // Luego evitamos que se envíe el formulario cancelando el evento
            event.preventDefault();
        }
    });

}

var code = '';

function validarLoggin() {
    var email = document.getElementById("email");
    var arialEmail = document.getElementById("arialErrorEmail");
    var contra = document.getElementById("clave");
    var arialContra = document.getElementById("arialErrorClave");
    var formularioLogging = document.getElementById("formularioLogging");

    var arialCatcha = document.getElementById("arialErrorCatcha");
    var inputAValidar = document.getElementById("textoCatcha");
    //var catchaCorrecto = validCaptcha(inputAValidar);


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


        if (!validCaptcha(inputAValidar)) {
            arialCatcha.textContent = 'Catcha Erroneo';
            event.preventDefault();
        }


    });



    function validCaptcha(textoCatcha) {
        //var string1 = removeSpaces(code);

        var string2 = removeSpaces(inputAValidar.value);

        if (code == string2) {
            return true;
        } else {
            captcha();
            return false;
        }
    }

}
function captcha() {
    var alpha = new Array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    var numero = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);
    var signo = new Array("+", "-", "*");

    var a = alpha[Math.floor(Math.random() * alpha.length)];
    var b = alpha[Math.floor(Math.random() * alpha.length)];
    var c = alpha[Math.floor(Math.random() * alpha.length)];
    var d = alpha[Math.floor(Math.random() * alpha.length)];
    var e = alpha[Math.floor(Math.random() * alpha.length)];
    var f = alpha[Math.floor(Math.random() * alpha.length)];
    var g = alpha[Math.floor(Math.random() * alpha.length)];

    var n1 = numero[Math.floor(Math.random() * numero.length)];
    var n2 = numero[Math.floor(Math.random() * numero.length)];
    var sg = signo[Math.floor(Math.random() * signo.length)];

    //code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' ' + f + ' ' + g;

    code = n1 + sg + n2;
    creaIMG(code);
    switch (sg) {
        case "+":
            code = n1 + n2;
            break;
        case "-":
            code = n1 - n2;
            break;
        case "*":
            code = n1 * n2;
            break;
    }

}
function removeSpaces(string) {
    return string.split(' ').join('');
}

function creaIMG(texto) {
    var ctxCanvas = document.getElementById('captcha').getContext('2d');
    var fontSize = "30px";
    var fontFamily = "Arial";
    var width = 250;
    var height = 50;
    //tamaño
    ctxCanvas.canvas.width = width;
    ctxCanvas.canvas.height = height;
    //color de fondo
    ctxCanvas.fillStyle = "whitesmoke";
    ctxCanvas.fillRect(0, 0, width, height);
    //puntos de distorsión
    ctxCanvas.setLineDash([7, 10]);
    ctxCanvas.lineDashOffset = 5;
    ctxCanvas.beginPath();
    var line;
    for (var i = 0; i < (width); i++) {
        line = i * 5;
        ctxCanvas.moveTo(line, 0);
        ctxCanvas.lineTo(0, line);
    }
    ctxCanvas.stroke();
    //formato texto
    ctxCanvas.direction = 'ltr';
    ctxCanvas.font = fontSize + " " + fontFamily;
    //texto posicion
    var x = (width / 9);
    var y = (height / 3) * 2;
    //color del borde del texto
    ctxCanvas.strokeStyle = "yellow";
    ctxCanvas.strokeText(texto, x, y);
    //color del texto
    ctxCanvas.fillStyle = "red";
    ctxCanvas.fillText(texto, x, y);
}
