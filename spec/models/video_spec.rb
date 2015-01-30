require 'spec_helper'

describe Video do
  
  it { should validate_presence_of (:title) }
  it { should validate_presence_of (:description) }
  it { should belong_to(:category) }
  it { should have_many :reviews }

  describe '#average_score' do
    let (:video)  { Fabricate :video }

    it 'returns 0 when no ratigns were submitted' do
      expect(video.average_score).to eq(0)
    end
    
    it 'returns average score when at least one rating was submitted' do
      rev1 = Fabricate(:review, score: 1, video: video, author: Fabricate(:user))
      rev2 = Fabricate(:review, score: 5, video: video, author: Fabricate(:user))
      # video.reviews << rev1
      # video.reviews << rev2
      expect(video.average_score).to eq(3.0)
    end
  end

  describe "search by title" do
    Video.all.destroy_all
    video1 = Video.create(title: 'Futurama', description: 'in the future')
    video2 = Video.create(title: 'Future weapons', description: 'vintage', created_at: 1.day.ago)

    it 'returns an empty array for no match' do
      search_str = 'south'
      expect(Video.search_by_title(search_str)).to eq([])
    end
    
    it 'returns an array of one for exact match' do
      search_str = 'Futurama'
      expect(Video.search_by_title(search_str)).to eq([video1])
    end

    it 'returns an array of one for partial match' do
      search_str = 'urama'
      expect(Video.search_by_title(search_str)).to eq([video1])
    end

    it 'returns an array for partial match, sorted by added date' do
      search_str = 'futur'
      expect(Video.search_by_title(search_str)).to eq([video1, video2])
    end

    it 'returns empty array for empty string' do
      search_str = ''
      expect(Video.search_by_title(search_str)).to eq([])
    end
  end
end