require 'spec_helper'

describe 'users', :type => :class do
  let(:title) { users }

  describe 'Users class within site, basic test' do
    let (:params) { { } }

    it { should create_class("users")\
    }
  end
end
