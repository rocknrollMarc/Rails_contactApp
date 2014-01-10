require 'spec_helper'

describe NewsRelease do
   it { should validate_presence_of :released_on } 
   it { should validate_presence_of :title }
   it { should validate_presence_of :body }

   it "returns the formatted date and title as a string" do
   news_release = NewsRelease.new(
   released_on: '2014-01-10',
   title: 'BigCo hires new CEO')
   expect(news_release.title_with_date).to eq '2014-01-10: BigCo hires new CEO'
  end
end
