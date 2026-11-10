class Echos3 < Formula
  desc "Watch local files and sync changes to S3 in real-time"
  homepage "https://github.com/jpwhite3/echos3"
  version "0.0.13"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.13/echos3-darwin-amd64"
      sha256 "d2970d1de25a3ea71423f5430d841a302366ee274efef59900c943b271de82ee"
    else
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.13/echos3-darwin-arm64"
      sha256 "b8ff1dccb3fe959f52e70b643ce9e60bddd76abdfde9470398baf6ab15d4bfe8"
    end
  end
  
  def install
    bin.install stable.url.split("/").last => "echos3"
  end
  
  test do
    assert_match "echos3 version", shell_output("#{bin}/echos3 --version")
  end
end
