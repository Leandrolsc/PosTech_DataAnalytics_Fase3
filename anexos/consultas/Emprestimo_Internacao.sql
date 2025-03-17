SELECT '112020' as MesAno
        ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
        ,COUNT(CASE E001 WHEN 2 THEN 2 ELSE null END) Solicitou
        ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
        ,COUNT(*) Total
        ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
FROM `PNAD_COVID.PNAD_COVID_112020` 
WHERE B005 = 1
UNION ALL
SELECT '102020' as MesAno
        ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
        ,COUNT(CASE E001 WHEN 2 THEN 2 ELSE null END) Solicitou
        ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
       ,COUNT(*) Total
        ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
FROM `PNAD_COVID.PNAD_COVID_102020` 
WHERE B005 = 1
UNION ALL
SELECT '092020' as MesAno
        ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
        ,COUNT(CASE E001 WHEN 2 THEN 2 ELSE null END) Solicitou
        ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
        ,COUNT(*) Total
        ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
FROM `PNAD_COVID.PNAD_COVID_092020` 
WHERE B005 = 1
UNION ALL
SELECT '082020' as MesAno
        ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
        ,COUNT(CASE E001 WHEN 2 THEN 2 ELSE null END) Solicitou
        ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
        ,COUNT(*) Total
        ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
FROM `PNAD_COVID.PNAD_COVID_082020`
WHERE B005 = 1
UNION ALL
SELECT '072020' as MesAno
        ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
        ,COUNT(CASE E001 WHEN 2 THEN 2 ELSE null END) Solicitou
        ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
        ,COUNT(*) Total
        ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
FROM `PNAD_COVID.PNAD_COVID_072020` 
WHERE B005 = 1
-- UNION ALL
-- SELECT '062020' as MesAno
--         ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
--         ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
--         ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) TotalPreenchido
--         ,COUNT(*) Total
--         ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
-- FROM `PNAD_COVID.PNAD_COVID_062020` 
-- UNION ALL
-- SELECT '052020' as MesAno
--         ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) Emprestimo
--         ,COUNT(CASE E001 WHEN 3 THEN 3 ELSE null END) NaoEmprestimo
--         ,COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END) TotalPreenchido
--         ,COUNT(*) Total
--         ,(COUNT(CASE E001 WHEN 1 THEN 1 ELSE null END)/COUNT(*)) *100 as PercentualEmprestimo
-- FROM `PNAD_COVID.PNAD_COVID_052020` 
 ORDER BY 1
