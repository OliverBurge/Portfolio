class Skill < ApplicationRecord
	validates_presence_of :title, :percet_utilized
end
