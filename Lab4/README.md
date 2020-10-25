# Determinação de Indutâncias em Máquinas Rotativas


O objetivo desta aula de laboratório é determinar indutâncias próprias e mútuas de uma máquina rotativa conhecida como máquina síncrona. Esta é uma máquina de corrente alternada que será estuda, do ponto de vista elétrico, nas disciplinas de CEME II e Máquinas elétricas. O foco aqui será a parte magnética do problema. 



<h2> Máquina considerada</h2>

A máquina considerada é uma máquina síncrona de dois polos. Esta máquina possui três conjuntos de bobinas no estator e um no rotor. O rotor, por sua vez, pode ser de polos lisos ou salientes como mostrado respectivamente nas figuras seguintes. Observe, por exemplo, a fase A da primeira figura. Ela é composta por quatro bobinas e estas estão ligadas em série entre si. Ou seja, apenas uma circuito é associado a este grupo de bobinas. O mesmo é válido para os demais grupos de bobinas. Além disto, as bolinhas e as cruzes indicam onde a corrente sai e onde entra. Esta estratégia de disposição das bobinas é popularmente conhecida como *enrolamento distribuído* e maiores informações podem ser encontradas nos seguintes livros:   

- Chapman, Fundamentos das Máquinas Elétricas. 5ed. Capítulo 3 e Apêndice B 
- Umans, Máquinas Elétricas de Fitzgerald e Kingsley. 7ed. Capítulo 4





<p align="center">
<img align="center" src="./figuras/cad/MaquinaRotativa2.png" width="600">
</p> 
<br>  


<p align="center">
<img align="center" src="./figuras/cad/MaquinaRotativaSaliente2.png" width="600">
</p> 
<br>  


Os arquivos <code>MaquinaRotativaTriFasica.FEMM</code> e <code>MaquinaRotativaTriFasicaSaliente.FEMM</code> foram criados para representar as duas máquinas das figuras anteriores.


<h2> Objetivo </h2>

Como mencionado, obder as indutâncias própias e mútuas para as diferrentes posições do rotor. A metodologia utilizada será a mesma do **Lab3**, ou seja, uma bobina é alimentada de cada vez.


<h2> Usando um Script *Lua* para movimentar o rotor da máquina e automatizar os testes</h2>





<!--


 ![Máquina](./figuras/maquina.gif)

 >