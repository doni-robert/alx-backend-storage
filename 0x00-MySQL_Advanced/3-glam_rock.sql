-- Script that lists all the bands with glam rock as their main style
-- ranked by their longevity
CREATE OR REPLACE VIEW glam_rock AS
        SELECT band_name AS band_name,
	IF(split IS NULL, 2022, split) - formed AS lifespan 
        FROM metal_bands
	WHERE style LIKE '%Glam rock%'
        ORDER BY lifespan DESC;
SELECT * FROM glam_rock;

