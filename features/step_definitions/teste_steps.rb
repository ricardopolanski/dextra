Dado(/^que eu acesse a página da VV$/) do
  visit 'http://www.lourencodemonaco.com.br/vvtest/'
  page.windows[0].maximize
end

Dado(/^acesse o menu "([^"]*)"$/) do |arg1|
    click_link('Pesquisa – QA')
end


Quando('eu preencher todos os campos obrigatórios') do 
    find('#nf-field-5').set "Ricardo" 
    find('#nf-field-6').set "Polanski"
    find('#nf-field-7').set "ricardo.polanski@dextra-sw.com"
    find('#nf-field-8').set "ricardo.polanski@dextra-sw.com"
    find('#nf-field-17').set "41984005106"
    find('#nf-label-class-field-10-1').click
    find("option[value='menos-de-5-anos']").click
    find("option[value='desafio']").click
    find('#nf-label-class-field-13-0').click 
    page.execute_script "window.scrollBy(0,10000)"
    sleep 1
    find('#nf-field-14').set "Ruby, Python" 
    
    sleep 1
end

Então(/^deve ser direcionado para uma página de sucesso$/) do
    find('#nf-field-16').hover
    find('#nf-field-16').click
  sleep 10
end
