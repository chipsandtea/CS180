-- Lab 2, Query 3
-- Find the different colors and apartment counts of houses where persons named John Smith live.

SELECT h.HouseID
FROM Houses h
    (SELECT
