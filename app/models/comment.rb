class Comment < ApplicationRecord
  belongs_to :topic

  before_save :filter_topic_lexicon

  DELIMITER = " "

  private
    def filter_topic_lexicon
      return unless topic&.lexicon

      lexicon = topic.lexicon
      lexicon_token_list = lexicon.split(DELIMITER)

      self.content = content.split(DELIMITER)
        .select { |token| lexicon_token_list.include?(token) }
        .join(DELIMITER)
    end
end
