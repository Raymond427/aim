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

RSpec.describe AppointmentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Appointment. As you add validations to Appointment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:appointment)
  }

  let(:invalid_attributes) {
    { first_name: '', last_name: '', email: '', phone_number: '', message: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AppointmentsController. Be sure to keep this updated too.
  let(:chapter) { FactoryGirl.create(:chapter) }
  let(:logged_in_member) { FactoryGirl.create(:member) }
  let(:logged_in_session) {{ chapter_id: chapter.id, member_id: logged_in_member.id }} # logs in a member
  let(:logged_out_session) {{}}

  describe "GET #index" do
    it "assigns all appointments as @appointments" do
      appointment = Appointment.create! valid_attributes
      get :index, params: {}, session: logged_in_session
      expect(assigns(:appointments)).to eq([appointment])
    end
  end

  describe "GET #show" do
    it "assigns the requested appointment as @appointment" do
      appointment = Appointment.create! valid_attributes
      get :show, params: {id: appointment.to_param}, session: logged_in_session
      expect(assigns(:appointment)).to eq(appointment)
    end
  end

  describe "GET #new" do
    it "assigns a new appointment as @appointment" do
      get :new, params: {}, session: logged_in_session
      expect(assigns(:appointment)).to be_a_new(Appointment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Appointment" do
        expect {
          post :create, params: {appointment: valid_attributes}, session: logged_in_session
        }.to change(Appointment, :count).by(1)
      end

      it "assigns a newly created appointment as @appointment" do
        post :create, params: {appointment: valid_attributes}, session: logged_in_session
        expect(assigns(:appointment)).to be_a(Appointment)
        expect(assigns(:appointment)).to be_persisted
      end

      it "redirects to the homepage" do
        post :create, params: {appointment: valid_attributes}, session: logged_in_session
        expect(response).to redirect_to(chapter)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved appointment as @appointment" do
        post :create, params: {appointment: invalid_attributes}, session: logged_in_session
        expect(assigns(:appointment)).to be_a_new(Appointment)
      end

      it "re-renders the 'new' template" do
        post :create, params: {appointment: invalid_attributes}, session: logged_in_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested appointment" do
      appointment = Appointment.create! valid_attributes
      expect {
        delete :destroy, params: {id: appointment.to_param}, session: logged_in_session
      }.to change(Appointment, :count).by(-1)
    end

    it "redirects to the appointments list" do
      appointment = Appointment.create! valid_attributes
      delete :destroy, params: {id: appointment.to_param}, session: logged_in_session
      expect(response).to redirect_to(appointments_url)
    end
  end

end
