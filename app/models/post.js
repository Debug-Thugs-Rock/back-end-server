const { Number } = require('mongoose')
const mongoose = require('mongoose')

// child schema for subdocument relationship with comments
const commentSchema = new mongoose.Schema({
  comment: {
    type: String,
    required: true
  }
}, {
  timestamps: true
})

const postSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  text: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  likes: {
    type: Number,
    min: 0
  },
  comments: [commentSchema]
}, {
  timestamps: true
})

module.exports = mongoose.model('Post', postSchema)
