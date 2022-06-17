Feature: : Lista de choferes dispobiles

    Como mayorista , 
    Quiero visualiazar los choferes disponible, 
    Para poder solicitar el servicio a alguno.

Scenario: El mayorista desea contratar el servicio de transporte de carga

Given el <mayorista> quiere contratar un chofer    
And el usuario se encuentra en la pantalla de "Choferes Disponibles"
When vaya a revisar la pantalla
Then visualizará los <choferes_disponible> que estan disponibles para el servicio

Examples:
    | mayorista | choferes_disponible |
    | Mercedes  | Javier Gomez, Juana Mendoza, Brando Fernandez |