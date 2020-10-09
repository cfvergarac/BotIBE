*** Settings ***
Resource          ../RecursosQA.robot
#Test Setup       Register Keyword To Run On Failure    close browser

*** Test Cases ***
CP_001
    Abrir_Pagina_Principal     QA    gc
    Ingresar_tipo_vuelo        RT
    Ingresar_lugares           CTG   BOG
    Seleccionar_Fechas         2020-10-21     2020-10-24
    Seleccionar_moneda         USD
    Ingresa_Pasajeros          1    0    0
    Continuar
    Seleccionar_flex      no
    Llena_datos_viajero
    Agregar_ancillarie    no
    continuar_a_sillas
    Selecciona_sillas
    hacer_pago    tc
