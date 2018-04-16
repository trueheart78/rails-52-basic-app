# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe 'GET #index' do
    context 'when the user is not logged in via casino' do
      it 'requires login' do
        get :index

        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'when the user is logged in via casino' do
      it 'does not require login' do
        get :index, session: user_session

        expect(response).to be_successful
      end

      let(:user) { build :user }
      let(:user_session) do
        {
          cas: {
            user: user.username,
            extra_attributes: {
              email: user.email,
              name: user.name
            }
          }
        }
      end
    end
  end
end
