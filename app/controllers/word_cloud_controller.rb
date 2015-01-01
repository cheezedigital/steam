class WordCloudController < ApplicationController
  def index
    @title = 'Word Cloud'
    @new_words = WordCloudWord.new
    words = WordCloudWord.order('updated_at DESC').limit(100)

    if words.count > 0
      words_by_frequency = words.sort { |a, b| a.count <=> b.count }
      min_frequency = words_by_frequency.first.count
      max_frequency = words_by_frequency.last.count

      min_size = 10
      max_size = 100

      @cloud_words = Hash.new(0)
      words.each do |word|
        if max_frequency - min_frequency == 0
          denom = 1
        else
          denom - max_frequency - min_frequency
        end

        scale = (word.count - min_frequency).to_f / demon
        size = min_size + ((max_size - min_size) * scale).round
        @cloud
  end
end
