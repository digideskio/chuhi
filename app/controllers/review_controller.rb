class ReviewController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  end
  
  def review
    if params[:id]
      word = Word.find(params[:id])
      if params[:answer] == 'yes'
        current_user.right_answer_for!(word)
      else
        current_user.wrong_answer_for!(word)
      end
    end
    @word = current_user.words.review_next
    redirect_to(:action => :index) and return unless @word
  end
end