require 'spec_helper'

describe Member do
  context 'provide urls for' do
    it 'site' do
      Member.new(site: 'teste.org').site_url.should == 'http://teste.org'
      Member.new(site: 'https://github.com').site_url.should == 'https://github.com'
      Member.new.site_url.should be_nil
    end

    it 'lattes' do
      Member.new(lattes: 'teste.org').lattes_url.should == 'http://teste.org'
      Member.new(lattes: 'https://github.com').lattes_url.should == 'https://github.com'
      Member.new.lattes_url.should be_nil
    end

    it 'github' do
      Member.new(github: 'rodrigo').github_url.should == 'https://github.com/rodrigo'
      Member.new(github: 'https://github.com/rodrigo').github_url.should == 'https://github.com/rodrigo'
      Member.new.github_url.should be_nil
    end

    it 'slideshare' do
      Member.new(slideshare: 'dyogo').slideshare_url.should == 'http://slideshare.net/dyogo'
      Member.new(slideshare: 'http://slideshare.net/dyogo').slideshare_url.should == 'http://slideshare.net/dyogo'
      Member.new.slideshare_url.should be_nil
    end

    it 'twitter' do
      Member.new(twitter: 'dyogo').twitter_url.should == 'http://twitter.com/dyogo'
      Member.new(twitter: 'http://twitter.com/dyogo').twitter_url.should == 'http://twitter.com/dyogo'
      Member.new.twitter_url.should be_nil
    end
  end
end