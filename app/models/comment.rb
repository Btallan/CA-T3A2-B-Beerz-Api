class Comment < ApplicationRecord
    validate_presence_of :text
end
