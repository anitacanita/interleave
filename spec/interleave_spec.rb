require "./interleave.rb"

describe "Interleave" do

  it "interleaves two empty arrays" do
    expect(interleave([],[])).to eq []
  end

  it "interleaves two arrays with a single element" do
    expect(interleave([1],[2])).to eq [1, 2]
  end

  it "interleaves two arrays with a single element" do
    expect(interleave([1],[2])).to eq [1, 2]
  end

  it "interleaves two arrays with different sizes" do
    expect(interleave([1,2], ['a'])).to eq [1, 'a', 2]
  end

  it "interleaves two arrays" do
    expect(interleave([1,2,3,4,5,6,7], ['a', 'b', 'c'])).to eq [1, 2, 'a', 3, 4, 'b', 5, 6, 'c', 7]
  end

end
