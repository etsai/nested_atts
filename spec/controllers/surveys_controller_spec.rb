require 'spec_helper'

describe SurveysController do
  let!(:survey) { Survey.create(title: "hello") }

  context 'GET #index' do
    it 'populates an array of surveys' do
      get :index
      expect(assigns(:survey)).to eq ([survey])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  context 'GET #new' do
    it 'renders the :new view' do
      get :new
      expect(response).to render_template :new
    end
  end

  context 'POST #create' do
    it 'redirects to something'

    it 'does magic'
  end

  context 'GET #edit' do
    pending
  end

  context 'POST #update' do
    pending
  end



end
