require "spec_helper"

describe CV::Generator do
  let(:root) { Pathname.new(File.expand_path("../../tmp/johndoe", __FILE__)) }

  before(:all) { @_stdout = $stdout }
  after(:all) { $stdout = @_stdout }

  before do
    $stdout = mock.as_null_object

    FileUtils.rm_rf(root)
    generator = CV::Generator.new
    generator.destination_root = root
    generator.invoke_all
  end

  it "copies stylesheet" do
    expect(root.join("templates/cv.css")).to be_file
  end

  it "copies template" do
    expect(root.join("templates/cv.erb")).to be_file
  end

  it "copies .gitignore" do
    expect(root.join(".gitignore")).to be_file
  end

  it "creates output/.gitkeep" do
    expect(root.join("output/.gitkeep")).to be_file
  end

  it "creates cv.yml" do
    expect(root.join("cv.yml")).to be_file
  end
end
