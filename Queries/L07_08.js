// Download & Unzip Data
$ wget "https://github.com/ziad-saab/scenarios/raw/master/querying-mongo/events.json.gz"
$ gunzip events.json.gz

// Import Data To MongoDB (As udacity)
$ mongoimport --db udacity --jsonArray ./events.json

// Login To MongoDB
$ mongo

// Check Database List
> show dbs

// Select Database
use udacity

// Check Tables --> There is one table whose name is "events".
show collections

// Check Data
db.events.find({}).pretty().limit(2)