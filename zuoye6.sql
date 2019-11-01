SELECT emp.ename,emp.deptno '销售部'
FROM emp
WHERE emp.deptno=
(SELECT deptno FROM dept WHERE dname='销售部');