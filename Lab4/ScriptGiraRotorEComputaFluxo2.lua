-- Script para girar o rotor da máquina, ler o fluxo concatenado pelas bobinas e salvar os resultados em um arquivo .csv


-- Cria ou abre o arquivo onde serão gavados os valores dos fluxos concatenados
f = openfile ("Resultados.csv", "w")

-- Escreve o cabeçalho do arquivo .csv
write (f, "Posicao,Fluxo_Concatenado_rotor,Fluxo_Concatenado_estatorA,Fluxo_Concatenado_estatorB,Fluxo_Concatenado_estatorC\n")



-- Intervalo entre os ângulos 
delta_angulo = 90



-- Repetição para girar o rotor e computar os resultados
for angulo = 0,360-delta_angulo,delta_angulo do 

    -- Seleciona o que será gerádo
    -- O 4 indica que tudo (nós, linhas e labels) será girado dentro do circulo de raio=5.001cm
    mi_selectcircle(0,0,7.62,4)

    -- Roda a analise de resultados
    mi_analyze()

    -- Mostra o resultado
    -- Se quiser mostrar a solução 
    -- mi_loadsolution()
    
    -- Mostra a densidade de fluxo
    -- Se habilitou a apresentação da solução e quiser mostar a densidade de fluxo
    -- Fica muito mais lento
    -- mo_showdensityplot(0,0,0.6,0,"bmag")

    -- Salva o print do resultado (posição inicial)
    -- Se quiser salvar um print de cada imagem, descomente
    -- Fica mais lento
    -- nome_do_arquivo = ".//figs//posicao_"..angulo.."_graus.emf"
    -- mo_savemetafile(nome_do_arquivo)


    -- Computa as variáveis da bobina do Rotor
    Corrente_rotor,Tensao_rotor,Fluxo_Concatenado_rotor = mo_getcircuitproperties("Rotor")

    -- Computa as variáveis da bobina da fase A do Estator
    Corrente_estatorA,Tensao_estatorA,Fluxo_Concatenado_estatorA = mo_getcircuitproperties("EstatorA")

    -- Computa as variáveis da bobina da fase A do Estator
    Corrente_estatorB,Tensao_estatorB,Fluxo_Concatenado_estatorB = mo_getcircuitproperties("EstatorB")

    -- Computa as variáveis da bobina da fase A do Estator
    Corrente_estatorC,Tensao_estatorC,Fluxo_Concatenado_estatorC = mo_getcircuitproperties("EstatorC")

    -- Grava os resultados no arquivo de dados
    write (f, angulo,",",Fluxo_Concatenado_rotor,",",Fluxo_Concatenado_estatorA,",",Fluxo_Concatenado_estatorB,",",Fluxo_Concatenado_estatorC, "\n")


    -- Gira o rotor ao redor do ponto (0,0)
    -- Novamente, o 4 indica que tudo (nós, linhas e labels) será girado
    mi_moverotate(0,0,delta_angulo,4)
    

end


-- Fecha o arquivo .csv
closefile(f)