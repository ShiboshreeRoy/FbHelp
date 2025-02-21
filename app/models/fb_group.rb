class FbGroup < ApplicationRecord
  belongs_to :user
  validates :description, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])

end
