USE [Practice ]
SELECT * FROM [Practice ].[dbo].['FIFA 16$']

SELECT * FROM ['FIFA 16$']

--SELECT A.short_name, B.short_name
--FROM ['FIFA 16$'] AS A
--JOIN ['FIFA 17$'] AS B
--   ON A.short_name = B.short_name

SELECT C.short_name,D.short_name
FROM ['FIFA 18$'] AS C
JOIN ['FIFA 19$'] AS D
  ON C.short_name = D.short_name

-- CONSTANT FEMALE FIFA FOOTBALLER FOR THE PERIOD OF 7 YEARS
SELECT ['FIFA 16$'].short_name
FROM ['FIFA 16$']
JOIN ['FIFA 17$']
   ON ['FIFA 16$'].short_name = ['FIFA 17$'].short_name
JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name = ['FIFA 18$'].short_name
JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name = ['FIFA 19$'].short_name
JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   

 
 --COUNTS OF PREFERRED FOOT
SELECT ['FIFA 16$'].preferred_foot, COUNT(['FIFA 16$'].preferred_foot) AS number_of_preferredfoot
  FROM ['FIFA 16$']
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].preferred_foot 
   ORDER BY ['FIFA 16$'].preferred_foot DESC


 --COUNT OF NATIONALITY
SELECT ['FIFA 16$'].nationality_name, COUNT(['FIFA 16$'].nationality_name) AS count_of_nationalityname
FROM ['FIFA 16$']
INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].nationality_name
   ORDER BY count_of_nationalityname DESC


--TOP 10 PLAYERS WITH THE HIGHEST GoalKeepingOverall
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].goalkeeping_diving + ['FIFA 16$'].goalkeeping_handling + ['FIFA 16$'].goalkeeping_kicking + ['FIFA 16$'].goalkeeping_positioning + ['FIFA 16$'].goalkeeping_reflexes) AS GK_OVERALL
  FROM ['FIFA 16$']
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY GK_OVERALL DESC

--BOTTOM 10 PLAYERS WITH THE HIGHEST GoalKeepingOverall
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].goalkeeping_diving + ['FIFA 16$'].goalkeeping_handling + ['FIFA 16$'].goalkeeping_kicking + ['FIFA 16$'].goalkeeping_positioning + ['FIFA 16$'].goalkeeping_reflexes) AS GK_OVERALL
  FROM ['FIFA 16$']
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY GK_OVERALL

-- TOP 10 PLAYERS WITH THE OVERALL_DRIBBING_SKILLS
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].skill_dribbling + ['FIFA 16$'].skill_curve + ['FIFA 16$'].skill_fk_accuracy + ['FIFA 16$'].skill_long_passing + ['FIFA 16$'].skill_ball_control) AS OVERALL_DRIBBING_SKILLS
  FROM ['FIFA 16$'] 
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY OVERALL_DRIBBING_SKILLS DESC

--BOTTOM 10 PLAYERS WITH THE OVERALL_DRIBBING_SKILLS
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].skill_dribbling + ['FIFA 16$'].skill_curve + ['FIFA 16$'].skill_fk_accuracy + ['FIFA 16$'].skill_long_passing + ['FIFA 16$'].skill_ball_control) AS OVERALL_DRIBBING_SKILLS
  FROM ['FIFA 16$'] 
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY OVERALL_DRIBBING_SKILLS 

--THE AVERAGE AGE OF A PLAYER
SELECT AVG(['FIFA 16$'].age) AS Average_Age_Of_A_Player
	FROM ['FIFA 16$'] 
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name

--TOP 10 PLAYERS BY THEIR MOVEMENT STRENGHT
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].movement_acceleration + ['FIFA 16$'].movement_sprint_speed + ['FIFA 16$'].movement_agility + ['FIFA 16$'].movement_reactions + ['FIFA 16$'].movement_balance) AS OVERALL_MOVEMENT_STRENGHT
  FROM ['FIFA 16$'] 
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY OVERALL_MOVEMENT_STRENGHT DESC

--BOTTOM 10 PLAYERS BY THEIR MOVEMENT STRENGHT
SELECT TOP 10  ['FIFA 16$'].short_name, SUM(['FIFA 16$'].movement_acceleration + ['FIFA 16$'].movement_sprint_speed + ['FIFA 16$'].movement_agility + ['FIFA 16$'].movement_reactions + ['FIFA 16$'].movement_balance) AS OVERALL_MOVEMENT_STRENGHT
  FROM ['FIFA 16$'] 
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name
   ORDER BY OVERALL_MOVEMENT_STRENGHT

--PLAYERS WITH THEIR BODY MASS INDEX
SELECT ['FIFA 16$'].short_name, ['FIFA 16$'].weight_kg, ['FIFA 16$'].height_cm,
CASE
     WHEN ROUND(['FIFA 16$'].weight_kg / SQUARE (['FIFA 16$'].height_cm/100), 2) > 30 THEN 'OBESE' 
	 WHEN ROUND(['FIFA 16$'].weight_kg / SQUARE (['FIFA 16$'].height_cm/100), 2)  BETWEEN 25 AND 30 THEN 'OVERWEIGHT'
	 WHEN ROUND(['FIFA 16$'].weight_kg / SQUARE (['FIFA 16$'].height_cm/100), 2)  BETWEEN 18.5 AND 25 THEN 'NORMAL WEIGHT' 
	 ELSE 'UNDERWEIGHT'
END
AS BMI
FROM ['FIFA 16$']
  INNER JOIN
   ['FIFA 17$']
   ON ['FIFA 16$'].short_name =  ['FIFA 17$'].short_name 
INNER JOIN ['FIFA 18$']
   ON ['FIFA 17$'].short_name  = ['FIFA 18$'].short_name 
INNER JOIN ['FIFA 19$']
   ON ['FIFA 18$'].short_name  = ['FIFA 19$'].short_name
INNER JOIN ['FIFA 20$']
   ON ['FIFA 19$'].short_name = ['FIFA 20$'].short_name
JOIN ['FIFA 21$']
   ON ['FIFA 20$'].short_name = ['FIFA 21$'].short_name
JOIN ['FIFA 22$']
   ON ['FIFA 21$'].short_name = ['FIFA 22$'].short_name
   GROUP BY ['FIFA 16$'].short_name, ['FIFA 16$'].weight_kg, ['FIFA 16$'].height_cm
   ORDER BY BMI