# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.from_cas' do
    context 'when the user does not exist' do
      it 'creates a new record'
    end

    context 'when the user does exist' do
      it 'returns the existing record'
      it 'does not create a new record'
    end
  end
end
