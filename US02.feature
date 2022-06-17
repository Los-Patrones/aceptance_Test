Feature: Registro de un conductor

    Como usuario , 
    Quiero registrarme, 
    Para acceder a más clientes que requieron los servicios de courier.

Scenario: El usuario se registra en la aplicación

Given el <usuario> no se encuentra afiliado
And el <usuario> se encuentra en la pantalla de "Crear cuenta"
When complete el campo <número_telefónico>,<mensaje_de_autentificación> y <contraseña>
And presione "Aceptar"
Then el sistema registra al usuario
And se observa la interfaz principal 

Examples:
    | usuario | número_telefónico | mensaje_de_autentificación | contraseña |
    | Yosef  | 964187312  | 4567  | Bs#j264 |

Scenario: El usuario se registra como conductor

Given el <usuario> presionó el botón de la esquina superior izquierda
And presiono el botón "Modo conductor" que se encuentra en la parte inferior
When complete los campo de la interfaz "Verificación" <nombres>,<apellidos>,<fecha_nacimiento>,<correo>,<DNI>
And <Numero_licencia_conducir>,<fecha_expiración>,<marca_auto>,<numero_placa>
And presione "Aceptar"
Then el sistema registra al usuario como conductor 

Examples:
    | usuario | nombres | apellidos | fecha_nacimiento | correo | DNI | Numero_licencia_conducir | fecha_expiración | marca_auto | numero_placa |
    | Yosef  | Yosef Uriel | Vasquez Sal y Rosas | 5/02/1990 | yosefuriel08@gmai.com | 72920056 | 232442 | 4/08/2022 | Renault | D5P-230 |