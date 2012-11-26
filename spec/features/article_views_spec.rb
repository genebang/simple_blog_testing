require 'spec_helper'

describe 'the article interface', :js => true do
  before(:each) do
    @articles = []
    3.times{ @articles << Fabricate(:article) }
  end

  describe "on the index page" do
    before (:each) do
      visit articles_path
    end

    it "should list the article titles on the index" do
      @articles.each do |article|
        page.should have_content(article.title)
      end
    end

    it "should have a link to the show page" do
      @articles.each do |article|
        page.should have_link('Show', :href => article_path(article))
      end
    end
  end

end