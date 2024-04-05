/*
 * Museum Art Collection Analysis Project
 * Filename: MuseumArtCollectionAnalysis.sql
 *
 * This project showcases a series of SQL queries designed to analyze and cross-reference art collection data
 * from two prominent museum databases: MoMA (Museum of Modern Art) and the Metropolitan Museum of Art. 
 * It includes operations such as extracting unique tags from artworks, aggregating artworks by these tags,
 * and joining artist information across both collections based on ULAN (Union List of Artist Names) IDs.
 *
 * The queries perform tasks such as:
 * - Identifying unique tags across artworks and counting their occurrences.
 * - Aggregating titles of artworks associated with each tag.
 * - Matching artists from MoMA to artworks in the Met collection based on ULAN IDs, and vice versa.
 * - Grouping and counting Met artworks associated with MoMA artists.
 *
 * This analysis provides insights into how artists and artworks are interconnected across these collections,
 * offering a data-driven perspective on the categorization and attribution of artworks within major museum databases.
 */

-- Query 1: Extract and list all unique tags from the 'metobjects' table.
-- Each tag is split from a delimited string in the 'tags' column.
-- Results are ordered alphabetically by tag.
SELECT DISTINCT unnest(string_to_array(tags, '|')) AS tag
FROM metobjects 
ORDER BY tag;

-- Query 2: Aggregate titles by tags and count the occurrences of each tag.
-- First, it unnests the tags from the 'tags' column into individual rows.
-- Then, it aggregates titles associated with each tag into an array and counts them.
-- Results are grouped by tag and ordered by the count of items, descending.
WITH unnested_tags AS (
  SELECT 
    unnest(string_to_array(tags, '|')) AS tag,
    title
  FROM 
    metobjects 
),
aggregated_names AS (
  SELECT 
    tag,
    array_agg(title) AS item_names,  -- Aggregates titles into an array for each tag.
    count(title) AS item_count  -- Counts the number of titles for each tag.
  FROM 
    unnested_tags
  GROUP BY 
    tag
  ORDER BY item_count DESC  -- Orders the results by the count of titles, descending.
)
SELECT * FROM aggregated_names;

-- Query 3: Join 'momaartists' with 'metobjects' based on matching ULAN IDs.
-- Matches are found by extracting the numeric ID from the 'Artist ULAN URL' in 'metobjects'
-- and comparing it with the 'ulan' field in 'momaartists'.
-- This query retrieves the artist's ULAN, display name, and the title of associated items.
SELECT
  ma.ulan,
  ma.displayname,
  mo.title AS met_items  -- Titles from 'metobjects' that match the artist's ULAN.
FROM
  momaartists ma
JOIN
  metobjects mo
ON
  ma.ulan::TEXT = REGEXP_REPLACE(mo."Artist ULAN URL", '.*ulan/(\d+).*', '\1');

-- Query 4: Similar to Query 3, but aggregates titles into an array and counts the total items per artist.
-- Results are grouped by artist ULAN and display name, and ordered by the count of associated items, descending.
-- This query gives an overview of how many items from 'metobjects' are associated with each artist.
SELECT
  ma.ulan,
  ma.displayname,
  array_agg(mo.title) AS met_items,  -- Aggregates matching titles into an array for each artist.
  count(ma.displayname) AS met_items_count  -- Counts the number of items associated with each artist.
FROM
  momaartists ma
JOIN
  metobjects mo
ON
  ma.ulan::TEXT = REGEXP_REPLACE(mo."Artist ULAN URL", '.*ulan/(\d+).*', '\1')
GROUP BY
  ma.ulan,
  ma.displayname
ORDER BY
  met_items_count DESC;  -- Orders artists by the count of associated items, descending.