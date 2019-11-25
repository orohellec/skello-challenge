require_relative '../app/models/article'
require_relative '../app/models/comment'
require_relative './database'

Comment.delete_all
Article.delete_all

articles = DB
comments = COMMENTS

# O(2) complexity but for this challenge we have few data so it should be ok ;) 
articles.each_with_index do |a, index|  
  article = Article.new(
    title: a[:title], 
    content: a[:content], 
    photo: a[:photo],
    rating: a[:rating]
  )
  article.save
  comments[index].each do |c|
    Comment.create!(
      content: c,
      article_id: article.id
    )
  end
end

puts "articles and associates comments created"