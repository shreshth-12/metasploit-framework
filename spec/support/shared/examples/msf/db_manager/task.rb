RSpec.shared_examples_for 'Msf::DBManager::Task' do

  if ENV['REMOTE_DB']
    before {skip("Not supported for remote DB")}
  end

  it { is_expected.to respond_to :find_or_create_task }
  it { is_expected.to respond_to :report_task }
  it { is_expected.to respond_to :tasks }
end