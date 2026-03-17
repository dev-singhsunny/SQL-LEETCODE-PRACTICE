DELETE P
FROM Person P
    JOIN (
        SELECT Email,
            MIN(id) AS KeepID
        FROM Person
        GROUP BY Email
    ) AS P2 ON P.Email = P2.Email
WHERE P.id > P2.KeepID;