# Irish Constituencies Neo4j Database
###### Stoyan Rizov, G00313180

## Introduction
Project is demonstrating a Parliamentary constituencies in the Republic of Ireland database including candidates for the 2016 General Election.
 

## Database
I have created candidates in two parties only which are Labour Party and Fianna Fáil,using website that is provided on the reference section of this file I inserted each candidate one by one using queries.
There is two nodes one called Candidate and one called Constituencies including properties into each label.


## Queries
Searching for given information using names , seats , and population.


#### Constituency Search
This query retreives the candidate chosen by user showing the party he/she is running and the constituency.
```cypher
MATCH (cand:Candidate)-[r]->(c:Constituency)
WHERE cand.name = "James Lawless"
RETURN r
```

#### Seats Search
Displays all constituencies that contain 4 Seats and shows the relationships and parties involved.
```cypher
MATCH (cand:Candidate)-[r]->(c:Constituency)
WHERE c.Seats CONTAINS '4'
RETURN r 
```

#### Population Search
Searching for constituencies using population in this example "113,835".
```cypher
MATCH (c:Constituency)
Where c.population = '113,835'
Return c
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Irishpoliticalmaps] (http://irishpoliticalmaps.blogspot.ie/2015/06/confirmed-candidates-for-next-general_3.html), the website for the candidates.
3. [Wikipedia] (https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), the website for the constituencies.