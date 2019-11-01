SELECT a.ename,b.ename
FROM emp as a,emp as b
WHERE a.mgr=b.empno;

SELECT a.ename,b.ename
FROM emp as a left join emp as b
on a.mgr=b.empno;
SELECT a.ename,
IFNULL(b.ename,'老板'）
FROM emp as a left join emp b
on a.mgr=b.empno;