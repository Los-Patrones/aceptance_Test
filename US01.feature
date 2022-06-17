Feature: Registro de un cliente

    Como usuario , 
    Quiero registrarme, 
    Para acceder a los servicios de courier.

Scenario: El usuario es registrado

Given el <usuario> no se encuentra afiliado
And el <usuario> se encuentra en la pantalla de "Crear cuenta"
When complete el campo <número_telefónico>,<mensaje_de_autentificación> y <contraseña>
And presione "Aceptar"
Then el sistema registra al usuario
And se observa la interfaz principal 

Examples:
    | usuario | número_telefónico | mensaje_de_autentificación | contraseña |
    | Jorge  | 964187312  | 4567  | As#j264 |


