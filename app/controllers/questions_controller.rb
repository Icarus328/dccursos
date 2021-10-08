class QuestionsController < ApplicationController
    def new
        @question = Question.new
    end

    def create
        @questions_params = params.require(:question).permit(:title, :description, :course, 
                                                             :publication_date)
      @question = Question.create(@questions_params)
      if @question.save
          redirect_to questions_index_path, notice: 'question successfully created'
      else
          redirect_to questions_index_path, notice: 'Error while creating the question'
      end
    end

    def index
        @questions = Question.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
        @question = Question.find(params[:id])
      @questions_new_params = params.require(:question).permit(:title, :description, :course, 
                                                               :publication_date)
      if @question.update(@questions_new_params)
          redirect_to questions_index_path, notice: 'question edited correctly'
      else
          redirect_to questions_index_path, notice: 'Error while editing the question'
      end
    end

    def delete
        @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_index_path, notice: 'question nicely destroyed'
    end
end
