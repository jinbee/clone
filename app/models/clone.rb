class Clone < ApplicationRecord
    validates :content, 
    length:{ in: 1..140 ,:message =>'は半角1文字以上140文字以下でお願いします。'}
end
