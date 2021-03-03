Given que um pedido com ponto _TMA
When pago com "Boleto"
And deve achar o ID: Preventivo / Financeiro / Atendimento Manual - TMA (Boleto)
And o pedido não for de "Ouvidoria"
Then pedido deverá ser direcionado para fila "Sac Crítico - Restituição"
And para o perfil "Sac Crítico - Restituição" deverá aparecer a solução <Solução>


Examples:
|Solução|
|Solicitar reembolso por ordem de pagamento|
|Solicitar reembolso por crédito em conta|
|Solicitar vale retratação|
|Insucesso de contato|
|Encerrar Tratativa|