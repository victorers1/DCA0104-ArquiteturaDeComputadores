#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
SIMULAÇÃO DE PAGINAÇÃO POR SUBSTITUIÇÃO FIFO
Created on Thu Dec  6 15:59:20 2018
@author: victor
"""

import numpy as np
import matplotlib.pyplot as plt
from collections import deque

referencia = [1, 2, 3, 4, 2, 1, 5, 6, 2, 1, 2, 3, 7, 6, 3, 2, 1, 2, 3, 6, 2, 4, 1, 6, 2, 2, 7, 3, 1, 3, 1, 3, 2, 4, 2, 2, 7, 4, 1, 3]  # String de referêcia
#fila = deque([])  # fila = [primeiro,  ..., último]
hist_falhas = []  # histórico de falha pro quant. de quadro

# SUBSTITUIÇÃO POR FIFO
for qtd_quadros in range(3, 8):
    # INICIALIZAÇÃO
    falhas = 0  # falhas para uma quant. fixa de quadros
    memoria = np.zeros(qtd_quadros)  # memória começa preenchida com zeros
    fila = deque([])
    for i in range(qtd_quadros):  # preenche fila
        fila.append(0)
    #print('memória inicial: {}\nfila incial: {}'.format(memoria, fila))
    
    # PAGINAÇÃO
    for pagina in referencia:
        if pagina not in memoria:
            #print('{} não está em {}'.format(pagina, memoria))
            prox_fila = fila.popleft(); fila.append(pagina)  # atualiza fila
            ind_prox = list(memoria).index(prox_fila)  # recupera índice na memória no qual se encontra o prox_fila
            memoria[ind_prox] = pagina
            #print('nova memória: {}\nnova fila: {}'.format(memoria, fila))
            falhas += 1
            
    # RESULTADO
    hist_falhas.append(falhas)

plt.stem(np.arange(3,8), hist_falhas)
plt.title('Histórico de falhas pela substituição FIFO')
plt.xlabel('Quantidade de quadros')
plt.ylabel('Falhas')
plt.show()


hist_falhas = []

# SUBSTITUIÇÃO PELO MÉTODO DA SEGUNDA CHANCE
for qtd_quadros in range(3,8):
    # INICIALIZAÇÃO
    falhas = 0
    memoria = np.zeros(qtd_quadros) # memória é um dicionário
    bit = np.zeros(qtd_quadros)
    fila = deque([])  #
    
    for i in range(qtd_quadros):
        fila.append(0)
    
    # PAGINAÇÃO
    for pagina in referencia:
        if pagina in memoria:  # se página já está na memória
            ind = list(memoria).index(pagina)
            bit[ind] = 1
            fila.remove(pagina); fila.append(pagina)  # põe no fim da fila
        else:  # se página não está na memória
           while True:
               prox_fila = fila[0]
               ind =  list(memoria).index(prox_fila)  # recupera índice na memória do elemento no fim da fila
               if bit[ind] == 0:  # não tem segunda chance
                   memoria[ind] = pagina # atualiza memória com nova página
                   fila.popleft(); fila.append(pagina) # atualiza fila
                   falhas+=1
                   break
               else:  # tem segunda chance
                   bit[ind] = 0
                   fila.popleft(); fila.append(prox_fila)  # põe próximo no fim da fila
            
    # RESULTADO
    hist_falhas.append(falhas)
    

plt.stem(np.arange(3,8), hist_falhas)
plt.title('Histórico de falhas pelo método da segunda chance')
plt.xlabel('Quantidade de quadros')
plt.ylabel('Falhas')
plt.show()
