class AgentEvals < Formula
  desc "Evaluate, test, and maintain your LLM coding agent configurations"
  homepage "https://thinkwright.ai/agent-evals"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_darwin_arm64.tar.gz"
      sha256 "1613ea68fc35344f1a806d046ee04e7b200f44f3c686f34de0f6c7db90cc29e1"
    end
    on_intel do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_darwin_amd64.tar.gz"
      sha256 "fe14f0bc366426db134a4a80ec26690fa894589eadab525111a3fefa11852393"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_linux_arm64.tar.gz"
      sha256 "e26888d521899110ac2e8b0ea63efbb0e698edd9c6a6b377c320ec1230b9be79"
    end
    on_intel do
      url "https://github.com/thinkwright/agent-evals/releases/download/v0.1.0/agent-evals_linux_amd64.tar.gz"
      sha256 "474ee9fb8be8f4b3740ebe65825d25d0a874d9218c4acf87a4d75f17234cb4cf"
    end
  end

  def install
    bin.install "agent-evals"
  end

  test do
    assert_match "agent-evals version", shell_output("#{bin}/agent-evals --version")
  end
end
