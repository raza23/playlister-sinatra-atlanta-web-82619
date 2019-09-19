class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres



    def slug
        self.name.downcase.split(' ').join('-')
    end
    
    def self.find_by_slug(slug)
        
        name = slug.split('-').map{|name| name.capitalize}.join(" ")
        Song.find_by(name: name)
    end
    
    
end