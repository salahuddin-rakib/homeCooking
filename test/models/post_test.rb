require 'test_helper'

class PostTest < ActiveSupport::TestCase
  fixtures :posts
  test "product attributes must not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:description].any?
    assert post.errors[:image_url].any?
  end

  def new_post(image_url)
    Post.new(title: "My Book Title",
             description: "yyy",
             image_url: image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |image_url|
      assert new_post(image_url).valid?,
             "#{image_url} shouldn't be invalid"
    end
    bad.each do |image_url|
      assert new_post(image_url).invalid?,
             "#{image_url} shouldn't be valid"
    end
  end

  test "post is not valid without a unique title - i18n" do
    post = Post.new(title: posts(:ruby).title,
                    description: "yyy",
                    image_url: "fred.gif")
    assert post.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 post.errors[:title]
  end
end
