require "rails_helper"

describe RecipesController do
  describe "# GET /recipes", type: :request do
    before do
      get "/recipes"
    end
  
    it { expect(response).to have_http_status(:success) }
  end

  describe "# GET /recipes/:id", type: :request do
    before do
      @recipe = create(:recipe)
      get "/recipes/#{@recipe.id}"
    end

    it { expect(response).to have_http_status(:success) }
  end

  describe "# POST /recipes", type: :request do
    before do
      post "/recipes", params: { recipe: { name: 'Avocado' }}
    end

    it { expect(response).to have_http_status(201) }
  end

  describe "# PATCH/PUT /recipes/:id", type: :request do
    before do
      @recipe = create(:recipe)
      put "/recipes/#{@recipe.id}", params: { recipe: { name: "Avocado" }}
    end

    it { expect(response).to have_http_status(200) }
  end

  describe " # DELETE /recipes/:id", type: :request do
    before do
      @recipe = create(:recipe)
      delete "/recipes/#{@recipe.id}"
    end

    it { expect(response).to have_http_status(204) }
  end
end