require "open-uri"
class GamesController < ApplicationController

  def new
    @alphabet_array = ("a".."z").to_a
    @letters = @alphabet_array.sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    url = "https://dictionary.lewagon.com/#{@word}"

    @word_array = @word.split
    @letters_array = @letters.split 


    test_1 = @word_array.each do |user_letter|
      @letters.include?(user_letter)
    end

    # test_2 = fetch(url, { headers: {}, body: {}})
    test_2 = uri
    
    # if test_1 == true && test_2 == true
    #   return @word_exist = true
    # else
    #   return @word_exist = false
    # end

    # if @word_exist
    #   return @word.count
    # else
    #   return "Your word is invalid"
    # end

  end

end
