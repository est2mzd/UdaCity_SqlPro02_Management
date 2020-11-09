// Databaseの確認
db
----> test

// Databaseの切り替え　or　新規作成
use <database_name>
use example

// Databaseの確認
db
----> example


// Schemaless! Just insert data
db.presidents.insertMany([
    {
        firstName: 'George',
        lastName:  'Washington',
        elections: [1788,1792]
    },
    {
        firstName: "John",
        lastName:  "Adams",
        elections: [1796]
    }
])

//-------------------[PHP Start]---------------------------------//
// Interact with MongoDB through PHP
$collection = (new MongoDB\Client)->example->users;

$insertManyResult = $collection->insertMany([
    [
        'username' => 'admin',
        'email' => 'admin@example.com',
        'name' => 'Admin User',
    ],
    [
        'username' => 'test',
        'email' => 'test@example.com',
        'name' => 'Test User',
    ],
]);
//-------------------[PHP END]---------------------------------//


// Queries
// SELECT * FROM presidents;
db.presidents.find({})          // コンソールへの出力データが少ない
db.presidents.find({}).pretty() // コンソールへの出力データが多い


//---------------------------------------------------------------//
// SELECT * FROM presidents WHERE firstName = 'George';
db.presidents.find({
    firstName: 'George'
})

// SELECT * FROM presidents WHERE firstName != 'George';
db.presidents.find({
    firstName:{
        $not: {$eq: 'George'}
    }
})

// SELECT * FROM presidents 
//     WHERE firstName != 'George' AND last_name = 'Washington';
db.presidents.find({
    firstName: 'George',
    lastName:  'Washngton'
})

// SELECT * FROM presidents 
//     WHERE firstName != 'George' OR last_name = 'Washington';
db.presidents.find({
    $or:[
        {firstName: 'George'},
        {lastName:  'Washngton'}
    ]
})

// SELECT * FROM presidents 
//     WHERE lastName LIKE '%ash%';
db.presidents.find({
    lastName: /ash/            // Regular Expressions
})

// SELECT * FROM presidents 
//     WHERE LOWER(lastName) LIKE 'wash%';
db.presidents.find({
    lastName: /^ash/            // Regular Expressions
})

//----------------------------------------------------------------//

// Find all presidents that were elected after 1792
SELECT presidents.*
FROM presidents
JOIN elections ON presidents.id = elections.president_id
WHERE election.year > 1792;

// MongDB
db.presidents.find({
    elections: {$gt: 1792}
})