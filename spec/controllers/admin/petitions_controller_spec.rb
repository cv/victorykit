module Admin
  describe PetitionsController do
    before :each do
      AnalyticsGateway.stub(:get_report_results).and_return({})
      stub_bandit controller
    end
    describe "GET index" do
      let(:action) { get :index }
      it_behaves_like "an admin only resource page"
    end
    describe "GET new_dashboard" do
      let(:action) { get :new_dashboard }
      it_behaves_like "an admin only resource page"
    end
  end
end
