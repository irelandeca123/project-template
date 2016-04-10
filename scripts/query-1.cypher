
//This query retreives the candidate chosen by user showing the party he/she is running and the constituency.

MATCH (cand:Candidate)-[r]->(c:Constituency)
WHERE cand.name = "James Lawless"
RETURN r