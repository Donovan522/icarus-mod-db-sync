require "tools/proginfo"

RSpec.describe Icarus::Mod::Tools::Proginfo do
  subject(:proginfo) { described_class.new(proginfo_data) }

  let(:proginfo_data) { JSON.parse(File.read("spec/fixtures/proginfo.json"), symbolize_names: true)[:programs].first }
  let(:proginfo_keys) { proginfo_data.keys }

  describe "#to_h" do
    it "returns a valid baseinfo Hash" do
      expect(described_class::HASHKEYS).to eq(proginfo_keys)
    end
  end

  describe "#fileType" do
    it "returns a String" do
      expect(proginfo.fileType).to be_a(String)
    end

    context "when fileType is not set" do
      before { proginfo_data.delete(:fileType) }

      it "returns a default fileType" do
        expect(proginfo.fileType).to eq("zip")
      end
    end
  end

  describe "#valid?" do
    %w[ZIP EXE].each do |filetype|
      context "when fileType is '#{filetype}'" do
        before { proginfo_data[:fileType] = filetype }

        it { is_expected.to be_valid }
      end
    end
  end
end