class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")#Artist.find_by(name: "Drake")# when this method is called it should assign the song's artist to Drake
  end
end
