Given que o cliente entre em contato via Reclame Aqui
And perfil de Reclame Aqui abra o protocolo com ID: Reativo / Financeiro / pagamento indevido ou duplicidade (Boleto)
And o antendente selecionar a solução <Solução> e o protocolo for direcionado para fila CSC CAR
When CSC CAR selecionar a solução "Solicitar comprovante para o cliente"
And for "Reativo"
Then Enviar e-mail automático para o cliente com a solução "Solicitar comprovante para o cliente" e o incidente deve ficar com status aguardando por 8 dias
When cliente não responder
Then encerrar protocolo
And se cliente responder
Then mover para a fila CSC CAR Reativo ou OV


Examples:

|Solução|OLA|
|Solicitar Vale|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por CC|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por OP|protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|