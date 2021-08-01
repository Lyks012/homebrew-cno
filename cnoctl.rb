# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Cnoctl < Formula
  version "0.0.1"
  desc "An open source platform to onboard easily and securely development teams on multi-cloud Kubernetes clusters from a single console."
  homepage "https://www.gocno.io"
  url "https://github.com/beopencloud/cno/releases/download/v#{version}/cnoctl_#{version}_Darwin_x86_64.tar.gz"
  # checksum can be get by running : shasum -a 256 cnoctl_v0.0.1-next_Darwin_x86_64.tar.gz
  sha256 "3c0216e5a541a23be3bb3d1d16893947171520fc601d4af9c9efb9f01cccb1e1"
  license "Apache License, Version 2.0"

  # Now the sources (from `url`) are downloaded, hash-checked and
  # Homebrew has changed into a temporary directory where the
  # archive has been unpacked or the repository has been cloned.
  def install
    # Move cnoctl binary from the  unpack folder to /usr/local/bin folder and make it executable (chmod 0555 cnoctl)
    bin.install "cnoctl"
  end

  # We are fine if the cnoctl --help does not output an error,
  # so we know that the installation was ok.
  test do
    system "#{bin}/cnoctl", "--help"
  end
end
