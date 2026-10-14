cask "android-rapid-transfer" do
  version "1.0.0"
  sha256 "c20411489a447aeeb8da71de330a0a670d8ee623afffa0ae60b7bb7a9d28d055"

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
