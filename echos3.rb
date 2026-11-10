class Echos3 < Formula
  desc "Watch local files and sync changes to S3 in real-time"
  homepage "https://github.com/jpwhite3/echos3"
  version "0.0.12"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.12/echos3-darwin-amd64"
      sha256 "ae598c2ec8c16028bdae5249bd25c9cacaa937e4b3a58f2b15aa5312198a4e5b"
    else
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.12/echos3-darwin-arm64"
      sha256 "fa5978c132aee12ff8ad0b55f870fe75a300320c6f9ee49fac540da596ce0d5f"
    end
  end
  
  def install
    bin.install stable.url.split("/").last => "echos3"
  end
  
  test do
    assert_match "echos3 version", shell_output("#{bin}/echos3 --version")
  end
end
