SELECT SUM("Boyd Yards") AS "Boyd Yards",
	   SUM("Boyd Yards") / SUM("Boyd Receptions")  as "Boyd YPC",
	   SUM("Higgins Yards") AS "Higgins Yards",
	   SUM("Higgins Yards") / SUM("Higgins Receptions") as "Higgins YPC",
	   SUM("Chase Yards") AS "Chase Yards",
	   SUM("Chase Yards")/ SUM("Chase Receptions") as "Chase YPC",
	   CONCAT(SUM(CASE WHEN "Result" = 'Win' THEN 1 ELSE 0 END), '-', SUM(CASE WHEN "Result" = 'Loss' THEN 1 ELSE 0 END)) AS "Win/Loss"
FROM ryan_clark


-- Bengals have a dominant core of WRs. In my opinion, just yards and TDs doesn't put into perspective how dominant Chase was his rookie year. So we needed
-- target and reception data to help illustrate that.