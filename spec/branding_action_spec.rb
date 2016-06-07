describe Fastlane::Actions::BrandingAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The branding plugin is working!")

      Fastlane::Actions::BrandingAction.run(nil)
    end
  end
end
