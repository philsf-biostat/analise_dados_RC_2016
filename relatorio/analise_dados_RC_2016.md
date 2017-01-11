# Relatório Rodrigo Cardoso (INTO 2016)
Felipe Figueiredo  
April 12, 2016  

# Metodologia utilizada

A análise descritiva foi apresentada na forma de tabelas e figuras.
Os dados observados foram sumarizados pela média e desvio padrão (DP) para dados numéricos (quantitativos) e pela frequência (n) e proporção (%) para dados categóricos (qualitativos).
Foram feitas tabelas de contingência para inferir a associação de dados categóricos de contagens.
A significância da associação desses dados foi determinada utilizando-se o teste exato de Fisher.

Em todas as análises, foi adotada a significância de 5%.
As análises estatísticas foram feitas utilizando o software estatístico R, versão 3.3.2 (https://www.R-project.org).


# Resultados








## Descritiva pura


-----------------------------------------------
          X                level       Overall 
---------------------- -------------- ---------
          n                              65    

       Sexo (%)              F        29 (44.6)

                             M        36 (55.4)

 Tipo_Histologico (%)        G1       26 (40.0)

                             G2       19 (29.2)

                             G3       4 ( 6.2) 

                             D        12 (18.5)

                             CC       4 ( 6.2) 

Presenca_Metastase (%)      Não       52 (81.2)

                            Sim       12 (18.8)

  Local_Recidiva (%)        Não       56 (87.5)

                            Sim       8 (12.5) 

      Obito (%)             Não       53 (81.5)

                            Sim       12 (18.5)

   Localizacao (%)      apendicular   47 (72.3)

                           axial      18 (27.7)

  Tipo_Cirurgia (%)        ampla      37 (56.9)

                       intralesional  7 (10.8) 

                          marginal    1 ( 1.5) 

                          radical     18 (27.7)

                        radioterapia  1 ( 1.5) 

                       sem tratamento 1 ( 1.5) 

   Estadiamento (%)          IA       20 (30.8)

                             IB       10 (15.4)

                            IIA       9 (13.8) 

                            IIB       22 (33.8)

                            III       4 ( 6.2) 

tempo.diagnostico (%)     <3meses     8 (12.3) 

                        3 A 6 MESES   5 ( 7.7) 

                         6m a 1ano    19 (29.2)

                         1 a 3 anos   24 (36.9)

                           >3anos     9 (13.8) 
-----------------------------------------------

## Extratificação: Óbito


---------------------------------------------------------------
          X                level         Não       Sim      p  
---------------------- -------------- --------- --------- -----
          n                              53        12          

       Sexo (%)              F        25 (47.2) 4 (33.3)  0.524

                             M        28 (52.8) 8 (66.7)       

 Tipo_Histologico (%)        G1       25 (47.2) 1 ( 8.3)  0.002

                             G2       16 (30.2) 3 (25.0)       

                             G3       3 ( 5.7)  1 ( 8.3)       

                             D        5 ( 9.4)  7 (58.3)       

                             CC       4 ( 7.5)  0 ( 0.0)       

Presenca_Metastase (%)      Não       47 (90.4) 5 (41.7)  0.001

                            Sim       5 ( 9.6)  7 (58.3)       

  Local_Recidiva (%)        Não       48 (90.6) 8 (72.7)  0.131

                            Sim       5 ( 9.4)  3 (27.3)       

   Localizacao (%)      apendicular   37 (69.8) 10 (83.3) 0.485

                           axial      16 (30.2) 2 (16.7)       

  Tipo_Cirurgia (%)        ampla      32 (60.4) 5 (41.7)  0.108

                       intralesional  7 (13.2)  0 ( 0.0)       

                          marginal    1 ( 1.9)  0 ( 0.0)       

                          radical     12 (22.6) 6 (50.0)       

                        radioterapia  1 ( 1.9)  0 ( 0.0)       

                       sem tratamento 0 ( 0.0)  1 ( 8.3)       

   Estadiamento (%)          IA       19 (35.8) 1 ( 8.3)  0.007

                             IB       10 (18.9) 0 ( 0.0)       

                            IIA       7 (13.2)  2 (16.7)       

                            IIB       16 (30.2) 6 (50.0)       

                            III       1 ( 1.9)  3 (25.0)       

tempo.diagnostico (%)     <3meses     5 ( 9.4)  3 (25.0)  0.588

                        3 A 6 MESES   5 ( 9.4)  0 ( 0.0)       

                         6m a 1ano    15 (28.3) 4 (33.3)       

                         1 a 3 anos   20 (37.7) 4 (33.3)       

                           >3anos     8 (15.1)  1 ( 8.3)       
---------------------------------------------------------------

## Extratificação: Metástase


--------------------------------------------------------------
          X               level        Não.      Sim      p   
--------------------- -------------- --------- -------- ------
          n                             52        12          

      Sexo (%)              F        22 (42.3) 6 (50.0) 0.750 

                            M        30 (57.7) 6 (50.0)       

Tipo_Histologico (%)        G1       26 (50.0) 0 ( 0.0) <0.001

                            G2       18 (34.6) 1 ( 8.3)       

                            G3       1 ( 1.9)  2 (16.7)       

                            D        4 ( 7.7)  8 (66.7)       

                            CC       3 ( 5.8)  1 ( 8.3)       

      Obito (%)            Não       47 (90.4) 5 (41.7) 0.001 

                           Sim       5 ( 9.6)  7 (58.3)       

 Local_Recidiva (%)        Não       48 (92.3) 7 (63.6) 0.026 

                           Sim       4 ( 7.7)  4 (36.4)       

   Localizacao (%)     apendicular   37 (71.2) 9 (75.0) 1.000 

                          axial      15 (28.8) 3 (25.0)       

  Tipo_Cirurgia (%)       ampla      32 (61.5) 4 (33.3) 0.030 

                      intralesional  7 (13.5)  0 ( 0.0)       

                         marginal    1 ( 1.9)  0 ( 0.0)       

                         radical     11 (21.2) 7 (58.3)       

                       radioterapia  1 ( 1.9)  0 ( 0.0)       

                      sem tratamento 0 ( 0.0)  1 ( 8.3)       

  Estadiamento (%)          IA       20 (38.5) 0 ( 0.0) <0.001

                            IB       9 (17.3)  1 ( 8.3)       

                           IIA       8 (15.4)  1 ( 8.3)       

                           IIB       15 (28.8) 6 (50.0)       

                           III       0 ( 0.0)  4 (33.3)       

tempo.diagnostico (%)    <3meses     5 ( 9.6)  3 (25.0) 0.237 

                       3 A 6 MESES   5 ( 9.6)  0 ( 0.0)       

                        6m a 1ano    14 (26.9) 5 (41.7)       

                        1 a 3 anos   19 (36.5) 4 (33.3)       

                          >3anos     9 (17.3)  0 ( 0.0)       
--------------------------------------------------------------

## Extratificação: Estadiamento


------------------------------------------------------------------------------------------------
          X                level          IA         IB        IIA       IIB       III      p   
---------------------- -------------- ---------- ---------- --------- --------- --------- ------
          n                               20         10         9        22         4           

       Sexo (%)              F        10 ( 50.0) 2 ( 20.0)  4 ( 44.4) 9 (40.9)  4 (100.0) 0.107 

                             M        10 ( 50.0) 8 ( 80.0)  5 ( 55.6) 13 (59.1) 0 ( 0.0)        

 Tipo_Histologico (%)        G1       17 ( 85.0) 9 ( 90.0)  0 ( 0.0)  0 ( 0.0)  0 ( 0.0)  <0.001

                             G2        0 ( 0.0)   0 ( 0.0)  6 ( 66.7) 13 (59.1) 0 ( 0.0)        

                             G3        0 ( 0.0)   0 ( 0.0)  1 ( 11.1) 2 ( 9.1)  1 ( 25.0)       

                             D         0 ( 0.0)   0 ( 0.0)  2 ( 22.2) 7 (31.8)  3 ( 75.0)       

                             CC       3 ( 15.0)  1 ( 10.0)  0 ( 0.0)  0 ( 0.0)  0 ( 0.0)        

      Obito (%)             Não       19 ( 95.0) 10 (100.0) 7 ( 77.8) 16 (72.7) 1 ( 25.0) 0.007 

                            Sim        1 ( 5.0)   0 ( 0.0)  2 ( 22.2) 6 (27.3)  3 ( 75.0)       

Presenca_Metastase (%)      Não       20 (100.0) 9 ( 90.0)  8 ( 88.9) 15 (71.4) 0 ( 0.0)  <0.001

                            Sim        0 ( 0.0)  1 ( 10.0)  1 ( 11.1) 6 (28.6)  4 (100.0)       

  Local_Recidiva (%)        Não       19 ( 95.0) 10 (100.0) 7 ( 77.8) 16 (76.2) 4 (100.0) 0.218 

                            Sim        1 ( 5.0)   0 ( 0.0)  2 ( 22.2) 5 (23.8)  0 ( 0.0)        

   Localizacao (%)      apendicular   15 ( 75.0) 4 ( 40.0)  9 (100.0) 16 (72.7) 3 ( 75.0) 0.061 

                           axial      5 ( 25.0)  6 ( 60.0)  0 ( 0.0)  6 (27.3)  1 ( 25.0)       

  Tipo_Cirurgia (%)        ampla      11 ( 55.0) 6 ( 60.0)  7 ( 77.8) 13 (59.1) 0 ( 0.0)  0.001 

                       intralesional  7 ( 35.0)   0 ( 0.0)  0 ( 0.0)  0 ( 0.0)  0 ( 0.0)        

                          marginal     1 ( 5.0)   0 ( 0.0)  0 ( 0.0)  0 ( 0.0)  0 ( 0.0)        

                          radical      1 ( 5.0)  4 ( 40.0)  2 ( 22.2) 8 (36.4)  3 ( 75.0)       

                        radioterapia   0 ( 0.0)   0 ( 0.0)  0 ( 0.0)  1 ( 4.5)  0 ( 0.0)        

                       sem tratamento  0 ( 0.0)   0 ( 0.0)  0 ( 0.0)  0 ( 0.0)  1 ( 25.0)       
------------------------------------------------------------------------------------------------

