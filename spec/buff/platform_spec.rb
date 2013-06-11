require 'spec_helper'

describe Buff::Platform do
  describe "::windows?" do
    subject { described_class.windows? }

    context "when rb config host_os matches mswin" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('mswin') }

      it "should be true" do
        expect(subject).to be_true
      end
    end

    context "when rb config host_os matches mingw" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('mingw') }

      it "should be true" do
        expect(subject).to be_true
      end
    end

    context "when rb config host_os matches cygwin" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('cygwin') }

      it "should be true" do
        expect(subject).to be_true
      end
    end

    context "when rb config host_os does not match a windows flavor" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('darwin11.3.0') }

      it "should be true" do
        expect(subject).to be_false
      end
    end
  end

  describe "::osx?" do
    subject { described_class.osx? }

    context "when rb config host_os matches darwin" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('darwin') }

      it "should be true" do
        expect(subject).to be_true
      end
    end

    context "when rb config host_os does not match darwin" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('mingw') }

      it "should be true" do
        expect(subject).to be_false
      end
    end
  end

  describe "::linux?" do
    subject { described_class.linux? }

    context "when rb config host_os matches linux" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('linux') }

      it "should be true" do
        expect(subject).to be_true
      end
    end

    context "when rb config host_os does not match linux" do
      before { RbConfig::CONFIG.stub(:[]).with('host_os').and_return('mingw') }

      it "should be true" do
        expect(subject).to be_false
      end
    end
  end
end
