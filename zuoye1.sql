SELECT dept.*,a.cut
FROM dept,
(SELECT deptno,count(*) as cut
FROM emp
GROUP BY deptno) as a
WHERE dept.deptno=a.deptno;