require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :author, :rating, :content_body }
  it("titleizes the name of a reviewer") do
    album = Album.create({author: "Dixie Normus", rating: 3, content_body: "It was good I guess" })
    expect(album.name()).to(eq("Giant Steps"))
  end
end
