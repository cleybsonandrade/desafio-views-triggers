USE company;

-- =====================================================
-- VIEW 1
-- Número de empregados por departamento e localidade
-- =====================================================

CREATE VIEW vw_empregados_departamento AS

SELECT
    d.Dname AS Departamento,
    d.Dlocation AS Localidade,
    COUNT(e.Ssn) AS Total_Empregados
FROM department d
LEFT JOIN employee e
ON d.Dnumber = e.Dno
GROUP BY d.Dname,d.Dlocation;

--------------------------------------------------------

-- VIEW 2
-- Departamentos e seus gerentes

CREATE VIEW vw_departamentos_gerentes AS

SELECT

    d.Dname AS Departamento,
    CONCAT(e.Fname,' ',e.Lname) AS Gerente

FROM department d
JOIN employee e
ON d.Mgr_ssn = e.Ssn;

--------------------------------------------------------

-- VIEW 3
-- Projetos com maior número de empregados

CREATE VIEW vw_projetos_empregados AS

SELECT

    p.Pname AS Projeto,
    COUNT(w.Essn) AS Total

FROM project p

JOIN works_on w
ON p.Pnumber = w.Pno

GROUP BY p.Pname
ORDER BY Total DESC;

--------------------------------------------------------

-- VIEW 4
-- Projetos, departamentos e gerentes

CREATE VIEW vw_projetos_departamentos AS

SELECT

    p.Pname,
    d.Dname,
    CONCAT(e.Fname,' ',e.Lname) AS Gerente

FROM project p

JOIN department d
ON p.Dnum = d.Dnumber

JOIN employee e
ON d.Mgr_ssn = e.Ssn;

--------------------------------------------------------

-- VIEW 5
-- Empregados com dependentes e se são gerentes

CREATE VIEW vw_dependentes AS

SELECT

    CONCAT(e.Fname,' ',e.Lname) AS Empregado,

    COUNT(dep.Dependent_name) AS Dependentes,

    CASE

        WHEN e.Ssn IN
        (
            SELECT Mgr_ssn
            FROM department
        )

        THEN 'SIM'

        ELSE 'NÃO'

    END AS Gerente

FROM employee e

LEFT JOIN dependent dep
ON e.Ssn = dep.Essn

GROUP BY e.Ssn;
