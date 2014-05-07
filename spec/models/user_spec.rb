require 'spec_helper'

describe User do
	let(:unnamed_user) {User.new(email: "s@email.com")}
	let(:named_user) {User.new(firstname: "Susan")}

	context "testing firstname validation" do
		it "will be invalid when it does not have a name" do
			expect(unnamed_user.valid?).to be_false
		end

		it "will be valid when it has a firstname" do
			unnamed_user.firstname = "Robert"
			expect(unnamed_user.valid?).to be_true
		end
	end

	context "testing email validation" do
		it "will be invalid when it does not have a email" do
			expect(named_user.valid?).to be_false
		end

		it "will be valid when it does have a email" do
			named_user.email = "sr@test.com"
			expect(named_user.valid?).to be_true
		end
	end
end
