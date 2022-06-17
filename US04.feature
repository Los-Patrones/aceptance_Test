Feature: : El chofer es contratado

    Como chofer , 
    Quiero recibir una notificación cuando contraten mi servicio, 
    Para generar ingresos con la aplicación.

Scenario: El chofer es contratado

Given el <chofer> ingreso a la app     
And el <chofer> se encuentre en la pantalla de "Choferes Disponibles"
When el <mayorista> pida su servicio    
And aparezca una <notificación> al chofer
Then el chofer podrá poner "aceptar"

Examples:
    | chofer | mayorista | notificación | 
    | Victor  | Rosario | Tiene una solicitud de su servicio |