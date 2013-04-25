class Member < ActiveRecord::Base
  attr_accessible :currently_does, :desertion_date, :function, :github, :lattes,
    :life_and_work, :name, :nickname, :phone, :site, :slideshare, :start_date,
    :twitter, :email

  include Gravtastic
  gravtastic

  def site_url
    return nil unless site.present?
    site =~ /^https?\:\/\// ? site : "http://#{site}"
  end

  def github_url
    return nil unless github.present?
    github =~ /github\.com/ ? github : "https://github.com/#{github}"
  end

  def slideshare_url
    return nil unless slideshare.present?
    slideshare =~ /slideshare\.net/ ? slideshare : "http://slideshare.net/#{slideshare}"
  end

  def twitter_url
    return nil unless twitter.present?
    twitter =~ /twitter\.com/ ? twitter : "http://twitter.com/#{twitter}"
  end

  def lattes_url
    return nil unless lattes.present?
    lattes =~ /^https?\:\/\// ? lattes : "http://#{lattes}"
  end
end
