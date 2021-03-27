clear
clc

// Obtem o diretório onde o arquivo está armazenado
// Mantenha o arquivo com o nome "Circuito_Ima.sce" 
absPath = get_absolute_file_path("Circuito_Ima.sce")


// Permeabilidade relativa do vácuo
u0 = %pi*4e-7;

// Dados do Circuito Magnético
Dm = 4e-2;
Dg = 1e-2;
lm1 = 0.5e-2;
lm2 = 1e-2;
lm3 = 1.5e-2;
g = 5e-3;

// Obtendo os Dados das Curvas de Desmagnetização
try
    DESMAG_N33M20 = csvRead(absPath+'DESMAG_N33M20.csv');
    DESMAG_N33M60 = csvRead(absPath+'DESMAG_N33M60.csv');
catch
    disp("Confirme se o nome deste script é Circuito_Ima.sce");
    disp("Confirme se os arquivos DESMAG_N33M20.csv e DESMAG_N33M26.csv estão na mesma pasta deste script.");
end

// Separação dos dados da curva N33M20 20ºC
H_20 = DESMAG_N33M20(:,1);
B_20 = DESMAG_N33M20(:,2);

// Separação dos dados da curva N33M20 60ºC
H_60 = DESMAG_N33M60(:,1);
B_60 = DESMAG_N33M60(:,2);

// Reta de carga
H = -1200e3:0;
a1 = -u0 * (lm1/g)*(Dg/Dm);
a2 = -u0 * (lm2/g)*(Dg/Dm);
a3 = -u0 * (lm3/g)*(Dg/Dm);
B1 = a1.*H; // reta de carga para lm = 0.5cm
B2 = a2.*H; // reta de carga para lm = 1.0cm
B3 = a3.*H; // reta de carga para lm = 1.5cm

// Curvas de desmagnetização x Reta de Carga
scf(); // Cria uma figura nova
plot(H_20./1000,B_20,H_60./1000,B_60,'thickness',2.0)
plot(H./1000,B1,'r','thickness',2.0)
plot(H./1000,B2,'--r','thickness',2.0)
plot(H./1000,B3,':r','thickness',2.0)
xlabel("H - k A/m","fontsize", 4)
ylabel("B - T","fontsize", 4)
title("Curvas de Desmagnetização do Imã","fontsize", 4)
gca_1 = gca();
gca_1.font_size = 4;
gca_1.grid = [1,1];
gca_1.y_location = "right";
legenda_1 = legend("Desmag. 20ºC","Desmag. 60ºC","Reta de Carga",[-500,0.8])
//legenda_1.legend_location = [500,0.5];
legenda_1.fill_mode = "off";
xstring(-1100,0.35,"$\ell_m = 0.5cm$",14,0) 
xstring(-1100,0.7,"$\ell_m = 1.0cm$",26.5,0)
xstring(-1100,1.04,"$\ell_m = 1.0cm$",35,0)
plot(-825,0.26,'ko')
xstring(-825,0.24,"$B_m = 0.26T$",0,0) 
plot(-825,0.52,'ko')
xstring(-825,0.50,"$B_m = 0.52T$",0,0) 
plot(-820,0.77,'ko')
xstring(-825,0.75,"$B_m = 0.77T$",0,0) 

