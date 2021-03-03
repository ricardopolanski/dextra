Given que o perfil Reclame Aqui 
And perfil de Reclame Aqui abra o protocolo com ID: Reativo / Financeiro / pagamento indevido ou duplicidade (Boleto)
When o CSC CAR selecionar a solução <Solução>
Then deve disponibilizado a URL do boleto na aba "restituição", para que o time da tesouraria consiga olhar o código "nosso número"
And a URL deve ficar disponível mesmo após o vencimento do boleto
And o protocolo deve ser direcionado para OV- retorno