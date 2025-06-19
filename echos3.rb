# This is a Homebrew formula for the echos3 application.
# You will need to fill in the `url` and `sha256` fields.
class Echos3 < Formula
  desc "A command-line tool to watch a directory and sync changes to an S3 bucket"
  homepage "https://github.com/jpwhite3/echos3" # <- UPDATE THIS
  url "https://github.com/jpwhite3/echos3/archive/refs/tags/v0.0.3.tar.gz" # <- UPDATE THIS
  sha256 "171b24cf924ed9c6a8c80b93a324579a9b19115715de4a898a5182df194b0e7b" # <- UPDATE THIS
  license "MIT" # Or whichever license you choose

  depends_on "go" => :build

  def install
    # Set the version dynamically at build time using the git tag
    version = self.version.to_s.sub(/^v/, "")
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"echos3"
  end

  test do
    # Test that the version command works and returns the correct version
    assert_match "echos3 version #{version}", shell_output("#{bin}/echos3 --version")
  end
end
