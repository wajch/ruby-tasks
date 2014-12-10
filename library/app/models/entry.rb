class Entry < ActiveRecord::Base
validates :name, presence: true
validates :comment, presence: true
validates :avatar_url, format: { with: /\Ahttp(s)?:/, allow_blank: true }
end
