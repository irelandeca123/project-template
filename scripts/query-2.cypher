//Displays all constituencies that contain 4 Seats and shows the relationships and parties involved

MATCH (cand:Candidate)-[r]->(c:Constituency)
WHERE c.Seats CONTAINS '4'
RETURN r 