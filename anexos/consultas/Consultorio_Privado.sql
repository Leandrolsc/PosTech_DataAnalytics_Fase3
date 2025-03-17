SELECT '112020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_112020` 
UNION ALL
SELECT '102020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
       ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
       ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_102020` 
UNION ALL
SELECT '092020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_092020` 
UNION ALL
SELECT '082020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_082020` 
UNION ALL
SELECT '072020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_072020` 
UNION ALL
SELECT '062020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_062020` 
UNION ALL
SELECT '052020' as MesAno
        ,COUNT(CASE B0044 WHEN 1 THEN 1 ELSE null END) Privado
        ,COUNT(CASE B0044 WHEN 2 THEN 2 ELSE null END) Publico
        ,COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END) TotalPreenchido
        ,COUNT(*) Total
        ,(COUNT(CASE WHEN NULLIF(B0044,9) is not null THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualPreenchimento
FROM `PNAD_COVID.PNAD_COVID_052020` 
ORDER BY 1
