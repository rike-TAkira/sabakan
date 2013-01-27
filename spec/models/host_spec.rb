require 'spec_helper'

describe Host do
  context 'validation' do
    context 'name'
    before do
      @host = Host.new()
    end

    it { @host.should_not be_valid }
#    describe 'name' do
#      context 'when invalid' do
#        context 'when name is nil' do
#          let(:host) { build(:host, name: nil) }
#          it { expect(host.valid?).to be_false }
#        end
#
#        context 'when name is empty' do
#          let(:host) { build(:host, name: '') }
#          it { expect(host.valid?).to be_false }
#        end
#      end
#    end
  end
end
