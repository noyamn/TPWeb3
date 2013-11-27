$(document).ready(function () {

    cargarExamen(get("id"));
    siguientePregunta(0);

});




function get(var_name) {
    var re = new RegExp(var_name + "(?:=([^&]*))?", "i");
    var pm = re.exec(decodeURIComponent(location.search));
    if (pm === null) return undefined;
    return pm[1] || "";
}

function cargarExamen(id) {  
    $.support.cors = true;
    $.ajax({
        type: "POST",
        url: "http://localhost:19831/Servicio/RealizarExamen.asmx/getExamen",
        data: '{"id":' + id + '}',
        cache: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            $('#nombreExamen').html(response.d.nombre);
            $('#nombreCurso').html(response.d.curso);
            $('#duracion').html(response.d.duracion);
        },
        error: function (response) {
            alert("ERROR");
        }
    });
}

function siguientePregunta(empieza) {
    $.support.cors = true;
    var id = get("id");
    $.ajax({
        type: "POST",
        url: "http://localhost:19831/Servicio/RealizarExamen.asmx/obtenerSiguientePregunta",
        data: '{}',
        cache: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            debugger;

            if (empieza!=0) {
                calificar();
            }
            $('#pregunta').html(response.d.descripcion);

            var contenido = "";
            $.each(response.d.respuestas, function (index, value) {
                var aux = "<li>" + value.descripcion + "<input type='checkbox' value='"+value.id+"'/></li>";
                contenido = contenido + aux;

            });
            $("#listaRespuesta").html(contenido);
           
            if (response.d.ultima == true) {
               $('#botonSiguiente').attr({ 
                 'href': 'javascript:ultimaPregunta()',
                });

            }

        },
        error: function (response) {
            debugger;
            alert("ERROR");
        }
    });
}

function calificar() {
    $.support.cors = true;
    var a = new Array();
    var contador = 0;
     $("input:checkbox:checked").each(function(){
     //cada elemento seleccionado
     a[contador]=$(this).val();
     contador++;
    });

    $.ajax({
        type: "POST",
        url: "http://localhost:19831/Servicio/RealizarExamen.asmx/calificarRespuesta",
        data: JSON.stringify({ _respuesta: a }),
        cache: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
           
        },
        error: function (response) {
            debugger;
          
        }
    });
}

function ultimaPregunta() {
    calificar();
    window.location="resultado-examen.aspx";
}             