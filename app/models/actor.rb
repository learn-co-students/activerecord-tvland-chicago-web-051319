class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        p "#{self.first_name} #{self.last_name}"
    end

    def list_roles
       character = Character.all.find_by(actor_id: self.id)
       show = Show.all.find_by(id: character.show_id)
       p "#{character.name} - #{show.name}"
    end

end
