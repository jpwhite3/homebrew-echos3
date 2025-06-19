class Echos3 < Formula
  desc "Watch local files and sync changes to S3 in real-time"
  homepage "https://github.com/jpwhite3/echos3"
  version "0.0.8"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.8/echos3-darwin-amd64"
      sha256 "ab1bd33a5b1788c79dc2422fe3a9fe2e0042ec352b884f61c0521205dedfaa3c"
    else
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.8/echos3-darwin-arm64"
      sha256 "7f2dc42d8c74d136cfa7fdfbc1baca3fd9e22e119be7520f66e6e85f2015cfbe"
    end
  end
  
  def install
    bin.install stable.url.split("/").last => "echos3"
  end
  
  test do
    assert_match "echos3 version", shell_output("#{bin}/echos3 --version")
  end
end
