Given que um pedido com ponto _TMA
Then deve achar o ID: Reativo / Financeiro / Atendimento Manual - TMA (boleto)
And ser direcionado para a fila de "SAC - Crítico Restituição"
Then o analista abrir o incidente
And colocar solução "Solicitar reembolso por ordem de pagamento"
Then o protocolo deve seguir regra de scalation já cadastrada e ir para coordenador se valor for menos que 3k reais, se for maior, vai para gerente.