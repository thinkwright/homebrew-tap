class AgentEvals < Formula
  desc "Evaluate, test, and maintain your LLM coding agent configurations"
  homepage "https://thinkwright.ai/agent-evals"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_darwin_arm64.tar.gz"
      sha256 "554a29ead7e2d055ba8d0e2027f4f37f7f240675189f1810d6f66b6cd27bdfe1"
    end
    on_intel do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_darwin_amd64.tar.gz"
      sha256 "d87261516c89aa05d65441451da94cf7dd00095a5f047c407795868cd6db4c76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_linux_arm64.tar.gz"
      sha256 "23a60b05ed7626518379e7a7adeba158823ab57ed9d1546892491f78af5311ce"
    end
    on_intel do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_linux_amd64.tar.gz"
      sha256 "a264c721bc92948f6f13ed8565d5f905eea296516a0edcaaf3956d589a37255d"
    end
  end

  def install
    bin.install "agent-evals"
  end

  test do
    assert_match "agent-evals version", shell_output("#{bin}/agent-evals --version")
  end
end
