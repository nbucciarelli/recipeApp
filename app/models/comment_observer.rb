class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts "Comment created..."
  end
end
