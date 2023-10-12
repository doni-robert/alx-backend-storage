-- Script that ranks country origins of bands , ordered by the
-- number of non-unique fans
CREATE OR REPLACE VIEW band_rank(origin, nb_fans) AS
	SELECT origin, SUM(fans)
	FROM metal_bands
	GROUP BY origin
	ORDER BY SUM(fans) DESC;
SELECT * FROM band_rank;
