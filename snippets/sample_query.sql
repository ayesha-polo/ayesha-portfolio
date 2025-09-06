-- Example SQL similarity search using pgvector
-- This query selects documents ordered by similarity to a query embedding.

SELECT *, 1 - (embedding <=> q.embedding) AS similarity
FROM documents,
     (SELECT embed('your query') AS embedding) AS q
ORDER BY embedding <=> q.embedding
LIMIT 5;
