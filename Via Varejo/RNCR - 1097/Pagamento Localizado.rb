Given que o cliente entre em contato via Reclame Aqui
And perfil de Reclame Aqui abra o protocolo com ID: Reativo / Financeiro / pagamento indevido ou duplicidade (Boleto)
And o antendente selecionar a solução <Solução>
And <OLA> 
When CSC CAR selecionar a solução "Pagamento localizado"
Then protocolo deve ser direcionado para "Monitoramento financiero" (OV e Reativo)
And manter o encaminhamento cadastrado hoje


Examples:
|Solução|OLA|
|Solicitar Vale|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por CC|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por OP|protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|