require "rails_helper"

class QuestionTest < ActiveSupport::TestCase

    RSpec.describe "Questions", type: :request do
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
                get "/questions/index"
                expect(response).to have_http_status(:ok)
            end
        end
        
        describe "new" do 
            it "should return a successful request" do
                get "/questions/new"
                expect(response).to have_http_status(:ok)
            end
        end

        describe "create" do
            it "should redirect after create a succesfull publication" do
                expect do
                    post "/questions", params: { question: @attr_valid}
                end.to change(Question, :count).by(1)
            end
        end 
    end
end