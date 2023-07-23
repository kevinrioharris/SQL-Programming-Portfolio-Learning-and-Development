# Problem: You are given a table, BST, containing two columns: N and P, 
  #where N represents the value of a node in Binary Tree, and P is the parent of N.
  #Write a query to find the node type of Binary Tree ordered by the value of the node.
  
#MySQL

SELECT BT.N,
CASE
    WHEN BT.P IS NULL THEN 'Root'
    WHEN EXISTS (SELECT B.P FROM BST B WHERE B.P = BT.N) THEN 'Inner'        
    ELSE 'Leaf'
END
FROM BST AS BT 
ORDER BY BT.N
