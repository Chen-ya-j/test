SELECT ename,dname
FROM emp LEFT JOIN dept 
ON emp.deptno=dept.deptno
WHERE job=(SELECT job FROM emp 
            WHERE ename='庞统');   //查询庞统的工作