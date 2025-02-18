require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = albums(:beautiful_liar)
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of players" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
