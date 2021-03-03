Given que o cliente entre em contato via Reclame Aqui
And perfil de Reclame Aqui abra o protocolo com ID: Reativo / Financeiro / pagamento indevido ou duplicidade (Boleto)
And o antendente selecionar a solução <Solução>
And <OLA> 
And CSC CAR deve conseguir acessar URL do boleto na aba "Financeiro" e consiga olhar o código "nosso número"
And a URL deve ficar disponível mesmo após o vencimento do boleto
When CSC CAR selecionar a solução "Estorno processado"
Then o protocolo deve ser direcionado para OV- retorno

Examples:
|Solução|OLA|
|Solicitar Vale|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por CC|Protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|
|Solicitar Reembolso por OP|protocolo deve ser direcionado para a fila do CSC CAR com OLA de 2 dias ( se estourar o prazo, mantém na fila)|