SELECT '112020' MesAno,
      COUNT(CASE 
          WHEN B009B = 1 THEN 1
          WHEN B009D = 1 THEN 1
          WHEN B009F = 1 THEN 1
      ELSE null
      END)as ResultadoPositivos
      ,COUNT(*) qtdTotalLinhas
FROM `PNAD_COVID.PNAD_COVID_112020`
UNION ALL
SELECT '102020' MesAno,
      COUNT(CASE 
          WHEN B009B = 1 THEN 1
          WHEN B009D = 1 THEN 1
          WHEN B009F = 1 THEN 1
      ELSE null
      END)as ResultadoPositivos
      ,COUNT(*) qtdTotalLinhas
FROM `PNAD_COVID.PNAD_COVID_102020`
UNION ALL
SELECT '092020' MesAno,
      COUNT(CASE 
          WHEN B009B = 1 THEN 1
          WHEN B009D = 1 THEN 1
          WHEN B009F = 1 THEN 1
      ELSE null
      END)as ResultadoPositivos
      ,COUNT(*) qtdTotalLinhas
FROM `PNAD_COVID.PNAD_COVID_092020`
UNION ALL
SELECT '082020' MesAno,
      COUNT(CASE 
          WHEN B009B = 1 THEN 1
          WHEN B009D = 1 THEN 1
          WHEN B009F = 1 THEN 1
      ELSE null
      END) as ResultadoPositivos
      ,COUNT(*) qtdTotalLinhas
FROM `PNAD_COVID.PNAD_COVID_082020`
UNION ALL
SELECT '072020' MesAno,
      COUNT(CASE 
          WHEN B009B = 1 THEN 1
          WHEN B009D = 1 THEN 1
          WHEN B009F = 1 THEN 1
      ELSE null
      END)as ResultadoPositivos
      ,COUNT(*) qtdTotalLinhas
FROM `PNAD_COVID.PNAD_COVID_072020`
ORDER BY 1