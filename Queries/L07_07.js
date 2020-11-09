//----------------------------------------------------------------//
// Denormalized: embedeed
db.comments.insertMany([
    {
        _id: '060d2680-daaa-442e-9f71-306828f273ce',
        postId: 555,
        comment: 'This is a comment',
        totalLikes: 1886,
        totalDislikes: 55,
        postedAt: new Date(), // current time of the server
        author: {
            userId: 43,
            username: 'User1',
            isVerified: true
        }
    },
    {
        _id: 'cb3c7c43-5568-4c17-b56f-41a012a03c78',
        postId: 555,
        comment: 'Another comment',
        totalLikes: 5788,
        totalDislikes: 3672,
        postedAt: new Date('2019-05-04T16:25:28-04:00'), // Specific date, in GMT-4
        author: {
            userId: 42,
            username: 'User5'
        }
    }
])


// Find all comments from users who are verified
// SQL
SELECT comments.*
FROM comments
JOIN users ON comments.user_id = users._id
WHERE users.verified;

// MongoDB
db.comments.find({
    'author.isVerified': true
})

































