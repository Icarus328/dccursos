class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @reviews_params = params.require(:review).permit(:description, :punctuation, 
                                                         :cursoasociado, :user_id)
        @review = Review.create(@reviews_params)
        if @review.save
            redirect_to reviews_index_path, notice: 'Review successfully created'
        else
            redirect_to reviews_index_path, notice: 'Error while creating the review. Verify that
             all fields are completed and
            the description and curso asociado correspond to strings and
            the punctuation corresponds to an integer. If the error persists please contact an 
            admin'
        end
    end

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @reviews_new_params = params.require(:review).permit(:description, :punctuation, 
                                                             :cursoasociado, :user_id)
        if @review.update(@reviews_new_params)
            redirect_to reviews_index_path, notice: 'Review edited correctly'
        else
            redirect_to reviews_index_path, notice: 'Error while editing the review. Verify that 
            all fields are completed and
            the description and curso asociado correspond to strings and
            the punctuation corresponds to an integer. If the error persists please contact an 
            admin'
        end
    end

    def delete
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_index_path, notice: 'Review nicely destroyed'
    end
end
