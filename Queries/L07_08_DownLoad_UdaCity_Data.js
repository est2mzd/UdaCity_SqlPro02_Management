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

//-------------------------------------------------------------------------------------//

// Q1: The total number of events in the collection
db.events.countDocuments({})
    -->225000

// Q2: The total number of events for the device with ID 8f5844d2-7ab3-478e-8ea7-4ea05ab9052e
db.events.countDocuments({deviceId: '8f5844d2-7ab3-478e-8ea7-4ea05ab9052e'})
    --> 240

// Q3: The total number of events that came from a Firefox browser and happened on or after April 20th, 2019
db.events.countDocuments(
    {'browser.vendor': 'firefox'},
    {timestamp: {$gte: ISODate('2019-04-20')}}
)
    --> 67215

// Q4: The list of the top 100 events that happened in Chrome on Windows, sorted in reverse chronological order
db.events.find({
    'browser.vendor': 'chrome',
    'browser.os': 'windows',
}).sort({
    timestamp: -1
}).limit(100)

// alternative solution for Q4
db.events.find({
    browser:{vendor: 'chrome', os:'windows'}
}).sort({
    timestamp: -1
}).limit(100)