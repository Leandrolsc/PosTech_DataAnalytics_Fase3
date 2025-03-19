SELECT '112020' as MesAno
      ,COUNT(CASE B00113 WHEN 1 THEN 1 END)  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,COUNT(CASE 
                WHEN B009B = 1 THEN 1
                WHEN B009D = 1 THEN 1
                WHEN B009F = 1 THEN 1
            END) as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_112020` 
UNION ALL
SELECT '102020' as MesAno
      ,COUNT(CASE B00113 WHEN 1 THEN 1 END)  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,COUNT(CASE 
                WHEN B009B = 1 THEN 1
                WHEN B009D = 1 THEN 1
                WHEN B009F = 1 THEN 1
            END) as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_102020` 
UNION ALL
SELECT '092020' as MesAno
      ,COUNT(CASE B00113 WHEN 1 THEN 1 END)  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,COUNT(CASE 
                WHEN B009B = 1 THEN 1
                WHEN B009D = 1 THEN 1
                WHEN B009F = 1 THEN 1
            END) as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_092020` 
UNION ALL
SELECT '082020' as MesAno
      ,COUNT(CASE B00113 WHEN 1 THEN 1 END)  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,COUNT(CASE 
                WHEN B009B = 1 THEN 1
                WHEN B009D = 1 THEN 1
                WHEN B009F = 1 THEN 1
            END) as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_082020` 
UNION ALL
SELECT '072020' as MesAno
      ,COUNT(CASE B00113 WHEN 1 THEN 1 END)  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,COUNT(CASE 
                WHEN B009B = 1 THEN 1
                WHEN B009D = 1 THEN 1
                WHEN B009F = 1 THEN 1
            END) as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_072020` 
UNION ALL
SELECT '062020' as MesAno
      ,0  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,0 as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_062020` 
UNION ALL
SELECT '052020' as MesAno
      ,0  as Diarreia
      ,COUNT(CASE B0014  WHEN 1 THEN 1 END)  as DificuldadeRespirar
      ,COUNT(CASE B0015  WHEN 1 THEN 1 END)  as DorCabeca
      ,COUNT(CASE B0013  WHEN 1 THEN 1 END)  as DorGarganta
      ,COUNT(CASE B00112 WHEN 1 THEN 1 END)  as DorMuscular
      ,COUNT(CASE B0016  WHEN 1 THEN 1 END)  as DorPeito
      ,COUNT(CASE B00110 WHEN 1 THEN 1 END)  as DorOlhos
      ,COUNT(CASE B0019  WHEN 1 THEN 1 END)  as Fadiga
      ,COUNT(CASE B0011  WHEN 1 THEN 1 END)  as Febre
      ,COUNT(CASE B0018  WHEN 1 THEN 1 END)  as NarizEntupidoEscorrendo
      ,COUNT(CASE B0017  WHEN 1 THEN 1 END)  as Nausea    
      ,COUNT(CASE B00111 WHEN 1 THEN 1 END)  as PerdaCheiroSabor
      ,COUNT(CASE B0012  WHEN 1 THEN 1 END)  as Tosse
      ,0 as QtdTotalCasosPositivos
      ,COUNT(*) TotalLinhas
FROM `PNAD_COVID.PNAD_COVID_052020` 
ORDER BY 1