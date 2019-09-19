require 'pry'

class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

def slug
    # self.name.downcase.split(' ').join('-')
    
    
    self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    # binding.pry
end

def self.find_by_slug(name)
    
    
        Artist.all.find{|artist| artist.slug == name}  
    

    # name = slug.split('-').map{|name| name.capitalize}.join(" ")
    
    # Artist.all.find{|artist| artist.name.downcase == name.downcase}
    # binding.pry
end


end