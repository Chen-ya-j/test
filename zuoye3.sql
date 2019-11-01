SELECT a.ename,b.ename,a.deptno,dept.dname
FROM emp as a,emp as b,dept
WHERE a.mgr=b.empno AND
a.hiredate<b.hiredate
AND a.deptno=dept.deptno;