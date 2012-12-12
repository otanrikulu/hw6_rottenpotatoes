class QueryImprovement < ActiveRecord::Migration
  def change
    add_index 'reviews', 'movie_id', :unique => true
    add_index 'reviews', 'moviegoer_id', :unique => true
  end

  def down
  end
end

class AddEmailIndexToMoviegoers < ActiveRecord::Migration
  def up
    add_index 'moviegoers', 'email', :unique => true
    # :unique is optional - see text for important warning!
  end
end
