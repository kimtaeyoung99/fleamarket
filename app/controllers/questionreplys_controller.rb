class QuestionreplysController < ApplicationController
    
    def create
        @question = Question.find(params[:question_id])
        @questionreply = @question.questionreplys.new
        @questionreply.questionreply = params[:questionreply]
        @questionreply.user_id = params[:user_id]
        @questionreply.save
        
        redirect_to @question
    end
    
    def destroy
        @question = Question.find(params[:question_id])
        @questionreply = @question.questionreplys.find(params[:id])
        @questionreply.destroy
        
        redirect_to @question
    end
    
    def update
        @question = Question.find(params[:question_id])
        @questionreply = @question.questionreplys.find(params[:id])
        @questionreply.questionreply = params[:questionreply]
        @questionreply.user_id = params[:user_id]
        @questionreply.save
        
        redirect_to @question
    end
end
