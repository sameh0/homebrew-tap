cask "android-rapid-transfer" do
  version "1.0.2"
  sha256 "49569a7dc4811d823c2339237cf4a5b187b5dce8cd08c9f3d0ac4c33a180f8a9"

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
