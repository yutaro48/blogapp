require 'rails_helper'

RSpec.describe 'Api::Comments', type: :request do
  let!(:user) { create(:user) }
  let!(:article) { create(:article, user: user) }
  let!(:comment) { create_list(:comment, 3, article: article) }

  describe 'GET /api/comments' do
    it '200ステータスが返ってくる' do
      get api_comments_path(article_id: article.id)
      expect(response).to have_http_status(200)
    end
  end
end
