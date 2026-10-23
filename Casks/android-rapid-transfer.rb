cask "android-rapid-transfer" do
  version "1.0.1"
  sha256 "08cc06e46f58bdd8e000c111defda89bcd711cf186f596eca5afb9bb5f52412f"

  url "https://github.com/sameh0/android-rapid-transfer/releases/download/#{version}/Android-Rapid-Transfer-#{version}.dmg"
  name "Android Rapid Transfer"
  desc "Fast file transfer for Android phones over USB"
  homepage "https://github.com/sameh0/android-rapid-transfer"

  livecheck do
    url "https://github.com/sameh0/android-rapid-transfer/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Android Rapid Transfer.app"

  zap trash: [
    "~/Library/Application Support/com.sameh.AndroidRapidTransfer",
    "~/Library/Caches/com.sameh.AndroidRapidTransfer",
    "~/Library/HTTPStorages/com.sameh.AndroidRapidTransfer",
    "~/Library/Preferences/com.sameh.AndroidRapidTransfer.plist",
    "~/Library/Saved Application State/com.sameh.AndroidRapidTransfer.savedState",
  ]
end
