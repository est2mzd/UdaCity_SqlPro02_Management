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


//----------------------------------------------------------------//
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


//----------------------------------------------------------------//
// Find the first 10 comments for a given post id, sorted in reverse chronological order
// SQL
SELECT * FROM comments
WHERE post_id = 555
ORDER BY posted_at DESC
LIMIT 10;

// MongoDB
db.comments.find(
    { postId: 555}
).sort(
    { postedAt: -1} // 1 for ascending
).limit(2).pretty()


//----------------------------------------------------------------//
// Find the total # of likes/dislikes for a given comment
// SQL
SELECT
    COUNT(DISTINCT comment_likes.author_id) AS totalLikes,
    COUNT(DISTINCT comment_dislikes.author_id) AS totalDislikes
FROM
    LEFT JOIN comment_likes ON comments.id = comment_likes.comment_id
    LEFT JOIN comment_dislikes ON comments.id = comment_dislikes.comment_id
WHERE
    comment.id = '060d2680-daaa-442e-9f71-306828f273ce'

// MongoDB - 1
db.comments.find(
    { _id: '060d2680-daaa-442e-9f71-306828f273ce' },
    { totalLikes: 1, totalDislikes: 1}
)

// MongoDB - 2
db.comments.countDocuments({
    'author.userId' : 42
})


//----------------------------------------------------------------//
// Add a new like for a comment
// SQL
INSERT INTO comment_likes (comment_id, author_id) VALUES
    ('060d2680-daaa-442e-9f71-306828f273ce', 55);


// MongoDB
db.commentLikes.insertOne({
    commentId: '060d2680-daaa-442e-9f71-306828f273ce',
    userId:55
})

db.comments