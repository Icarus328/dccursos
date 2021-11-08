require "rails_helper"

class ReviewTest < ActiveSupport::TestCase

    RSpec.describe "Reviews", type: :request do
        before(:each) do
            @attr_valid = {
                title: "Example name",
                text: "Buena pregunta",
                course: "intro a la progra",
                date: "03/10/21",
            }

            @attr_invalid = {
                title: 1,
                text: 1,
                course: 1,
                date: 1,
            }

        end
    
        describe "index" do
            it "should return a successful request" do
                get "/reviews/index"
                expect(response).to have_http_status(:ok)
            end
        end
        
        describe "new" do 
            it "should return a successful request" do
                get "/reviews/new"
                expect(response).to have_http_status(:ok)
            end
        end
        describe "create" do
            it "should redirect after create a publication" do
                expect do
                  post "/reviews", params: { review: @attr_invalid }
                end.to change(Review, :count).by(0)
            end
        end 
    end
end