*** Settings ***
Resource          ../RecursosQA.robot
Test Template    Flujo_compra
#Test Setup       Register Keyword To Run On Failure    close browser


*** Test Cases ***
CP_001	 QA    BOG    BLB   2020-10-22   x   14  0  0   USD   gc



*** Keywords ***
Flujo_compra
    [Arguments]     ${AMBIENTE}    ${ORIGEN}     ${DESTINO}    ${FECHAIDA}    ${FECHAVUELTA}   ${NADULTOS}    ${NNINOS}    ${NINFANTES}    ${MONEDA}    ${NAVEGADOR}
    ${URL}=    concatena url       ${AMBIENTE}   ${ORIGEN}     ${DESTINO}    ${FECHAIDA}    ${FECHAVUELTA}    ${NADULTOS}   ${NNINOS}   ${NINFANTES}   ${MONEDA}   ${NAVEGADOR}
    Manejo_flex
    Seleccionar_flex      no
    Llena_datos_viajero
    Agregar_ancillarie    no
    continuar_a_sillas
    #Sleep    15s
    Selecciona_sillas
    #hacer_pago    tc


