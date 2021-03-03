Given que o cliente entre em contato via Reclame Aqui
And perfil de Reclame Aqui abra o protocolo com ID: Reativo / Financeiro / pagamento indevido ou duplicidade (Boleto)
When o atendente selecionar a solução: "Solicitar reembolso por ordem de pagamento"
Then o protocolo deve ser direcionado para a fila do CSC CAR 
And conseguir entrar na aba "financeiro" e clicar na URL do boleto para verificar o "nosso número"
And o CSC CAR colocar a solução Estorno processado
And o protocolo deve ser direcionado para OV- retorno

