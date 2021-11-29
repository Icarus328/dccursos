class AnswersController < ApplicationController
    def new
        @answer =Answer.new
        @question = Question.find(params[:id])
    end

    def create
        @answer_params = params.require(:answer).permit(:content, :user_id, :question_id)
      @answer = Answer.create(@answer_params)
      if @answer.save
          redirect_to answers_index_path(:id => @answer.question_id), notice: 'Answer creada'
      else
          redirect_to answers_index_path(:id => @answer.question_id), 
                      notice: 'Error al crear Answer, por favor revisar que los espacios estan 
                      completados'
      end
      end

    def index
        @question = Question.find(params[:id])
    end

    def show
        @answer = Answer.find(params[:id])
    end

    def edit
        @answer = Answer.find(params[:id])
    end

    def update
        @answer = Answer.find(params[:id])
        @answers_new_params = params.require(:answer).permit(:content, :user_id, :question_id)
    if @answer.update(@answers_new_params)
        redirect_to answers_index_path(:id => @answer.question_id), notice: 'Answer editada'
    else
        redirect_to answers_index_path(:id => @answer.question_id), 
                    notice: 'Error al edita Answer, por favor revisar que los espacios estan 
                    completados'
    end
  end

    def delete
        @answer = Answer.find(params[:id])
      @answer.destroy
      redirect_to answers_index_path(:id => @answer.question_id), notice: 'Answer eliminada'
    end
end
