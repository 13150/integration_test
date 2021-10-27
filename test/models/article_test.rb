require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @one = articles :one
    @two = articles :two
  end

  test 'articles index' do
    visit articles_path

    assert page.has_content?(@one.title)
    assert page.has_content?(@two.title)
  end
end
