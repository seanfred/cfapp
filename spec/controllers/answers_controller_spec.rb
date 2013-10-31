require 'spec_helper'
require 'factory_girl'

describe AnswersController do
  it 'sends a list of answers to create' do
    FactoryGirl.create_list(:answer, 10)

    get ''

  end
end
