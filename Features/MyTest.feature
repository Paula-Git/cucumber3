Feature: Prueba de conexion de BD y login
Scenario: Conexion Incorrecta en Base de Datos
Given Probar conexion BD ""
Scenario: Conexion Correcta en Base de Datos
Given Probar conexion BD "jdbc:mysql://localhost:3306/banco"

Scenario: Login sin datos
Given abrir navegador
When ingresa Username "" y Password ""
Then inicia sesion

Scenario: Login con datos incorrectos
Given abrir navegador
When ingresa Username "123" y Password "222222"
Then inicia sesion

Scenario: Login con datos correctos
Given Abrir navegador
When ingresa Username "111" y Password "123456"
Then inicia sesion