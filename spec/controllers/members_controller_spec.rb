require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe MembersController, type: :controller do

  let(:chapter) { FactoryGirl.create(:chapter) }

  # This should return the minimal set of attributes required to create a valid
  # Member. As you add validations to Member, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:member)
  }

  let(:invalid_attributes) {
    { first_name: nil, last_name: nil, email: nil, password_digest: nil, major: nil, graduation_date: nil, is_executive: nil, role: nil }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MembersController. Be sure to keep this updated too.
  let(:valid_session) { { chapter_id: chapter.id } }

  describe "GET #index" do
    it "assigns all members as @members" do
      member = chapter.members.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:members)).to eq([member])
    end
  end

  describe "GET #show" do
    it "assigns the requested member as @member" do
      member = chapter.members.create! valid_attributes
      get :show, params: {id: member.to_param}, session: valid_session
      expect(assigns(:member)).to eq(member)
    end
  end

  describe "GET #new" do
    it "assigns a new member as @member" do
      get :new, params: {}, session: valid_session
      expect(assigns(:member)).to be_a_new(Member)
    end
  end

  describe "GET #edit" do
    it "assigns the requested member as @member" do
      member = chapter.members.create! valid_attributes
      valid_session[:member_id] = member.id
      get :edit, params: {id: member.to_param}, session: valid_session
      expect(assigns(:member)).to eq(member)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Member" do
        expect {
          post :create, params: {member: valid_attributes}, session: valid_session
        }.to change(Member, :count).by(1)
      end

      it "assigns a newly created member as @member" do
        post :create, params: {member: valid_attributes}, session: valid_session
        expect(assigns(:member)).to be_a(Member)
        expect(assigns(:member)).to be_persisted
      end

      it "redirects to the member's chapter" do
        post :create, params: {member: valid_attributes}, session: valid_session
        expect(response).to redirect_to(after_signup_path)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved member as @member" do
        post :create, params: {member: invalid_attributes}, session: valid_session
        expect(assigns(:member)).to be_a_new(Member)
      end

      it "re-renders the 'new' template" do
        post :create, params: {member: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:member, first_name: 'Raymond')
      }

      it "updates the requested member" do
        member = chapter.members.create! valid_attributes
        put :update, params: {id: member.to_param, member: new_attributes}, session: valid_session
        member.reload
        expect(member.valid?).to be_truthy
      end

      it "assigns the requested member as @member" do
        member = chapter.members.create! valid_attributes
        put :update, params: {id: member.to_param, member: valid_attributes}, session: valid_session
        expect(assigns(:member)).to eq(member)
      end

      it "redirects to the chapter homepage" do
        member = chapter.members.create! valid_attributes
        put :update, params: {id: member.to_param, member: valid_attributes}, session: valid_session
        expect(response).to redirect_to(chapter)
      end
    end

    context "with invalid params" do
      it "assigns the member as @member" do
        member = chapter.members.create! valid_attributes
        put :update, params: {id: member.to_param, member: invalid_attributes}, session: valid_session
        expect(assigns(:member)).to eq(member)
      end

      it "re-renders the 'edit' template" do
        member = chapter.members.create! valid_attributes
        put :update, params: {id: member.to_param, member: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested member" do
      member = chapter.members.create! valid_attributes
      @member = member
      expect {
        delete :destroy, params: {id: member.to_param}, session: valid_session
      }.to change(Member, :count).by(-1)
    end

    it "redirects to the chapter page" do
      member = chapter.members.create! valid_attributes
      delete :destroy, params: {id: member.to_param}, session: valid_session
      expect(response).to redirect_to(chapter)
    end
  end

end
