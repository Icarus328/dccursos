require "rails_helper"

class AulaTest < ActiveSupport::TestCase

    RSpec.describe "Aulas", type: :request do
        before(:each) do
            @attr_valid = {
             name: "Example name",
             duration: 123,
             theme: "Example theme",
             date: "03/10/21",
             number: 1,
             associated_video: "primera clase 1 de marzo",
             associatedcurso: "Example curso",
            }

            @attr_invalid = {
                name: 13,
                duration: "Hola como estas",
                theme: 123,
                date: "04/10/21",
                numer: "uno",
                associated_video: 3,
                associatedcurso: 4,
            }

        end

        describe "index" do
            it "should return a successful request" do
                get "/cursos/index"
                expect(response).to have_http_status(:ok)
            end
        end
        
        describe "new" do 
            it "should return a successful request" do
                get "/cursos/new"
                expect(response).to have_http_status(:ok)
            end
        end

        describe "create" do
            it "should redirect after create a publication" do
                expect do
                  post "/cursos", params: { curso: @attr_invalid }
                end.to change(Curso, :count).by(0)
            end
        end

        describe "new" do 
            it "should return a successful request" do
                get "/cursos/new"
                expect(response).to have_http_status(:ok)
            end
        end

    end
end