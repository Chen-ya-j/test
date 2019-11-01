/*SELECT ename
FROM emp
WHERE sal>ALL(SELECT sal
FROM emp WHERE deptno=30);      //部门30任何一个人的工资
*/

SELECT ename,sal,dept.dname
FROM emp LEFT JOIN dept
ON emp.deptno=dept.deptno
WHERE sal>ALL(SELECT MAX(sal)
      FROM emp WHERE deptno=30); 