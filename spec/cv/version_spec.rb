require "spec_helper"

describe CV::VERSION do
  it "formats according to Semantic Versioning" do
    expect(CV::VERSION).to match(/^\d+\.\d+\.\d+$/)
  end
end
