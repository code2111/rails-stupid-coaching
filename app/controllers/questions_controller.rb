class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    if @question == "I'm going to work"
      @result = "Great"
    elsif @question.include?("?")
      @result = "Silly question, get dressed and go to work!."
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end



# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message == "I am going to work right now!"
#     return ""
#   elsif your_message.include?("?")
#     return "Silly question, get dressed and go to work!"
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   if your_message == "I am going to work right now!".upcase
#     return ""
#   elsif your_message == your_message.upcase && your_message.include?("?")
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   elsif your_message == your_message.upcase
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   else
#     return coach_answer(your_message)
#   end
# end
