class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @curso = Curso.find(params[:id])
    end
    

    def create
        @reviews_params = params.require(:review).permit(:description, :punctuation, :user_id, 
                                                         :curso_id)
        @review = Review.create(@reviews_params)
        if @review.save
            redirect_to reviews_index_path(:id => @review.curso_id), notice: 'Review creada'
        else
            redirect_to reviews_index_path(:id => @review.curso_id), 
                        notice: 'Error al crear Review, por favor revisar que los espacios
                         estan completados'
        end
    end

    def index
        @curso = Curso.find(params[:id])
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @reviews_new_params = params.require(:review).permit(:description, :punctuation, :user_id, 
                                                             :curso_id)
        if @review.update(@reviews_new_params)
            redirect_to reviews_index_path(:id => @review.curso_id), notice: 'Review editada'
        else
            redirect_to reviews_index_path(:id => @review.curso_id), 
                        notice: 'Error al crear Review, por favor revisar que los espacios
                         estan completados'
        end
    end

    def delete
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_index_path(:id => @review.curso_id), notice: 'Review eliminada'
    end
end
