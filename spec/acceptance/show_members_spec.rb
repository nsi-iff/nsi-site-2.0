require 'spec_helper'

feature 'show members' do
  scenario 'all members' do
    create(:member, name: 'Linus Torvalds', function: 'Senior architect',
      currently_does: 'Works on Linux kernel improvements',
      github: 'fuckgithub', site: 'http://linux.org',
      lattes: 'http://lattes.cnpq.br/linus', slideshare: 'linus',
      twitter: 'linus')
    visit members_path
    page!
    within '.member:nth-child(1)' do
      within('.name') { page.should have_content 'Linus Torvalds' }
      within('.function') { page.should have_content 'Senior architect' }
      within('.currently_does') {
        page.should have_content 'Works on Linux kernel improvements' }
      page.should have_xpath "//a[contains(@href, 'http://linux.org')]"
      page.should have_xpath "//a[contains(@href, 'https://github.com/fuckgithub')]"
      page.should have_xpath "//a[contains(@href, 'http://lattes.cnpq.br/linus')]"
      page.should have_xpath "//a[contains(@href, 'http://slideshare.net/linus')]"
      page.should have_xpath "//a[contains(@href, 'http://twitter.com/linus')]"
    end
  end
end