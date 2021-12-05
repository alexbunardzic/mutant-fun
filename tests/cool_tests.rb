require 'pathname'

$LOAD_PATH << Pathname.new(__dir__).parent.join('lib')

require 'tennis_score'

RSpec.describe 'Keeper Of The Game Score' do
  it "scores a new game that hasn't finished yet" do
    tennis_score = TennisScore.new
    score = tennis_score.score(0, 0)
    expect(score).to eq('0')
  end
end
