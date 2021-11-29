class QuestionsController < ApplicationController
    def new
        @question = Question.new
        @aula = Aula.find(params[:id])
    end

    def create
        @questions_params = params.require(:question).permit(:title, :description, 
                                                             :publication_date, :user_id, :aula_id)
        @question = Question.create(@questions_params)
      if @question.save
          redirect_to questions_index_path(:id => @question.aula_id), notice: 'Question creada'
      else
          redirect_to questions_index_path(:id => @question.aula_id), 
                      notice: 'Error al crear Question, por favor revisar
                       que los espacios estan completados'
      end
    end

    def index
        @aula = Aula.find(params[:id])
    end

    def show
        @question = Question.find(params[:id])
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
        @question = Question.find(params[:id])
        @questions_new_params = params.require(:question).permit(:content, :description, 
                                                                 :publication_date, :user_id,
                                                                 :aula_id)
      if @question.update(@questions_new_params)
          redirect_to questions_index_path(:id => @question.aula_id), notice: 'Question editada'
      else
          redirect_to questions_index_path(:id => @question.aula_id), 
                      notice: 'Error al crear Question, por favor revisar
                       que los espacios estan completados'
      end
    end

    def delete
        @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_index_path(:id => @question.aula_id), notice: 'Question eliminada'
    end
end
