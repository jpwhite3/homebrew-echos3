class Echos3 < Formula
  desc "Watch local files and sync changes to S3 in real-time"
  homepage "https://github.com/jpwhite3/echos3"
  version "0.0.9"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.9/echos3-darwin-amd64"
      sha256 "f4178f51e88b5565d6dd41f667ec34ee8a5c8fcaf27eec3571039ce0f3317f6f"
    else
      url "https://github.com/jpwhite3/echos3/releases/download/v0.0.9/echos3-darwin-arm64"
      sha256 "401a01ea397b8e399ebfb3e2a5c2a300c44cfd8769cdecb6abf1f29d3dedb9ec"
    end
  end
  
  def install
    bin.install stable.url.split("/").last => "echos3"
  end
  
  test do
    assert_match "echos3 version", shell_output("#{bin}/echos3 --version")
  end
end
