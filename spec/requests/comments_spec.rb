require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/comments", type: :request do

  before(:each) do
    FactoryBot.create(:comment, text: "Comment testing 1")
    FactoryBot.create(:comment, text: "Comment testing 2")
    FactoryBot.create(:comment, text: "Comment testing 3 - End comment")
  end

  # test to check all current comments.
  describe "get all comments at /comments" do
    it "return all comments present" do
      get "/comments"
      expect(response).to have_http_status(:success)
      #print JSON.parse(response.body)
      expect(JSON.parse(response.body).size).to eq(3)    
    end
  end

            #Doesn't work? not sure why - doesn't carry over messages to this test.
  describe "get a comment at /comments/:id" do
    it "return a comment based on id / params" do
      print JSON.parse(response.body)
      get "/comments/1"
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Comment testing 1")  
    end

    it "returns notfound - based on wrong ID/param" do
      get "/comments/4444"
      expect(response).to have_http_status(:not_found) 
      expect(response.body).to include("wrong id")  
    end

  end


  # This should return the minimal set of attributes required to create a valid
  # Comment. As you add validations to Comment, be sure to
  # adjust the attributes here as well.
   let(:valid_attributes) {
     skip("Add a hash of attributes valid for your model")
   }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # CommentsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }
                                  This will be uncommented once manual testing has finished.
  describe "GET /index" do
    it "renders a successful response" do
      Comment.create! valid_attributes
      get comments_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      comment = Comment.create! valid_attributes
      get comment_url(comment), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Comment" do
        expect {
          post comments_url,
               params: { comment: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Comment, :count).by(1)
      end

      it "renders a JSON response with the new comment" do
        post comments_url,
             params: { comment: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Comment" do
        expect {
          post comments_url,
               params: { comment: invalid_attributes }, as: :json
        }.to change(Comment, :count).by(0)
      end

      it "renders a JSON response with errors for the new comment" do
        post comments_url,
             params: { comment: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested comment" do
        comment = Comment.create! valid_attributes
        patch comment_url(comment),
              params: { comment: new_attributes }, headers: valid_headers, as: :json
        comment.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the comment" do
        comment = Comment.create! valid_attributes
        patch comment_url(comment),
              params: { comment: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the comment" do
        comment = Comment.create! valid_attributes
        patch comment_url(comment),
              params: { comment: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested comment" do
      comment = Comment.create! valid_attributes
      expect {
        delete comment_url(comment), headers: valid_headers, as: :json
      }.to change(Comment, :count).by(-1)
    end
  end
end
