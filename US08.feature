Feature: : El chofer entrega la carga

    Como chofer , 
    Quiero notificar mi entrega,
    Para que mi cliente me pague.

Scenario: El chofer entrega la carga

Given el <chofer> entrega la carga   
And el <chofer> se encuentra en la pantalla de "Servicio Comenzado"
When complete el viaje se le depositará el  pago
Then el chofer seleccionara el boton "Servicio finalizado" <estado_servicio>

Examples:
    | chofer | estado_servicio |
    | Victor  | Finalizado |