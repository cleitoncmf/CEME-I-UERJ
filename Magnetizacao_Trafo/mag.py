# Curva de magnetização do Tranformador
import numpy as np
import matplotlib.pyplot as plt




# Primeira curva de magnetização
imp = np.array([0,
               0.3,
               0.5,
               0.6,
               0.8,
               0.9,
               1.0,
               1.5,
               2,
               3,
               4,
               5,
               6,
               7,
               8,
               9,
               10,
               20])

lambp = np.array([0,
                 0.23,
                 0.35,
                 0.40,
                 0.45,
                 0.46,
                 0.47,
                 0.49,
                 0.50,
                 0.52,
                 0.54,
                 0.56,
                 0.57,
                 0.58,
                 0.59,
                 0.60,
                 0.61,
                 0.70])


imn = -np.flip(imp)
lambn = -np.flip(lambp)

im = np.concatenate((imn,imp))
lambm = np.concatenate((lambn,lambp))




# Segunda Curva de magnetização

lambp2 = np.array([0,
                 0.06,
                 0.10,
                 0.12,
                 0.16,
                 0.18,
                 0.20,
                 0.30,
                 0.40,
                 0.52,
                 0.54,
                 0.56,
                 0.57,
                 0.58,
                 0.59,
                 0.60,
                 0.61,
                 0.70])

lambn2 = -np.flip(lambp2)
lambm2 = np.concatenate((lambn2,lambp2))



lambm3 = im*0.04 
lambm4 = im*0.02 



# Plotar a curva de magnetização
fig= plt.figure(figsize=(10,6))
plt.plot(im,lambm,im,lambm2,im,lambm3,im,lambm4)
plt.grid()
plt.xlim([-10,10])
plt.ylim([-0.7,0.7])
plt.title('Curva de Magnetização do Transformador')
plt.ylabel('Fluxo concatenado - Wbe')
plt.xlabel('Corrente de magnetização - A')
plt.show()