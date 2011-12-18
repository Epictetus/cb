require "spec_helper"

describe InuquiryNotifier do
  describe "create" do
    let(:mail) { InuquiryNotifier.create }

    it "renders the headers" do
      mail.subject.should eq("Create")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
