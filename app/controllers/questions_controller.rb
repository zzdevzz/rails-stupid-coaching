class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]
    if @input == 'I am going to work'
      @response = 'Great!'
    elsif @input.end_with?('?')
      @response = 'Silly question, get dressed an go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
