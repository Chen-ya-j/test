/**SELECT a.ename,dept.dname,b.empno,s.grade
FROM emp as a,dept,emp as b,salgrade as s
WHERE a.sal>
(SELECT AVG(sal) from emp)
AND a.deptno=dept.deptno
AND a.mgr=b.empno
AND a.sal BETWEEN s.losal AND s.hisal;**/


CREATE VIEW emp_view(a,b,c,d)
as
SELECT a.ename,dept.dname,b.empno,s.grade
FROM emp as a LEFT JOIN dept
ON a.deptno=dept.deptno
LEFT JOIN emp as b
ON a.mgr=b.ename
LEFT JOIN salgrade as s
ON a.sal BETWEEN s.losal AND s.hisal
WHERE a.sal>
(SELECT AVG(sal) from emp);