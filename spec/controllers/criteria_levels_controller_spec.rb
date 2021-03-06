require 'spec_helper'

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

describe CriteriaLevelsController do

  # This should return the minimal set of attributes required to create a valid
  # CriteriaLevel. As you add validations to CriteriaLevel, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CriteriaLevelsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all criteria_levels as @criteria_levels" do
      criteria_level = CriteriaLevel.create! valid_attributes
      get :index, {}, valid_session
      assigns(:criteria_levels).should eq([criteria_level])
    end
  end

  describe "GET show" do
    it "assigns the requested criteria_level as @criteria_level" do
      criteria_level = CriteriaLevel.create! valid_attributes
      get :show, {:id => criteria_level.to_param}, valid_session
      assigns(:criteria_level).should eq(criteria_level)
    end
  end

  describe "GET new" do
    it "assigns a new criteria_level as @criteria_level" do
      get :new, {}, valid_session
      assigns(:criteria_level).should be_a_new(CriteriaLevel)
    end
  end

  describe "GET edit" do
    it "assigns the requested criteria_level as @criteria_level" do
      criteria_level = CriteriaLevel.create! valid_attributes
      get :edit, {:id => criteria_level.to_param}, valid_session
      assigns(:criteria_level).should eq(criteria_level)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CriteriaLevel" do
        expect {
          post :create, {:criteria_level => valid_attributes}, valid_session
        }.to change(CriteriaLevel, :count).by(1)
      end

      it "assigns a newly created criteria_level as @criteria_level" do
        post :create, {:criteria_level => valid_attributes}, valid_session
        assigns(:criteria_level).should be_a(CriteriaLevel)
        assigns(:criteria_level).should be_persisted
      end

      it "redirects to the created criteria_level" do
        post :create, {:criteria_level => valid_attributes}, valid_session
        response.should redirect_to(CriteriaLevel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved criteria_level as @criteria_level" do
        # Trigger the behavior that occurs when invalid params are submitted
        CriteriaLevel.any_instance.stub(:save).and_return(false)
        post :create, {:criteria_level => {}}, valid_session
        assigns(:criteria_level).should be_a_new(CriteriaLevel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CriteriaLevel.any_instance.stub(:save).and_return(false)
        post :create, {:criteria_level => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested criteria_level" do
        criteria_level = CriteriaLevel.create! valid_attributes
        # Assuming there are no other criteria_levels in the database, this
        # specifies that the CriteriaLevel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CriteriaLevel.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => criteria_level.to_param, :criteria_level => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested criteria_level as @criteria_level" do
        criteria_level = CriteriaLevel.create! valid_attributes
        put :update, {:id => criteria_level.to_param, :criteria_level => valid_attributes}, valid_session
        assigns(:criteria_level).should eq(criteria_level)
      end

      it "redirects to the criteria_level" do
        criteria_level = CriteriaLevel.create! valid_attributes
        put :update, {:id => criteria_level.to_param, :criteria_level => valid_attributes}, valid_session
        response.should redirect_to(criteria_level)
      end
    end

    describe "with invalid params" do
      it "assigns the criteria_level as @criteria_level" do
        criteria_level = CriteriaLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CriteriaLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => criteria_level.to_param, :criteria_level => {}}, valid_session
        assigns(:criteria_level).should eq(criteria_level)
      end

      it "re-renders the 'edit' template" do
        criteria_level = CriteriaLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CriteriaLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => criteria_level.to_param, :criteria_level => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested criteria_level" do
      criteria_level = CriteriaLevel.create! valid_attributes
      expect {
        delete :destroy, {:id => criteria_level.to_param}, valid_session
      }.to change(CriteriaLevel, :count).by(-1)
    end

    it "redirects to the criteria_levels list" do
      criteria_level = CriteriaLevel.create! valid_attributes
      delete :destroy, {:id => criteria_level.to_param}, valid_session
      response.should redirect_to(criteria_levels_url)
    end
  end

end
