# ConKurrence

**One command. Find out if your AI agrees with itself.**

ConKurrence is a statistically validated consensus measurement toolkit for AI evaluation pipelines. It uses multiple AI models as independent raters, measures inter-rater reliability with Fleiss' kappa and bootstrap confidence intervals, and routes contested items to human experts.

## Install

```bash
npm install -g conkurrence
```

## MCP Server

Use ConKurrence as an MCP server in Claude Desktop or any MCP-compatible client:

```bash
npx conkurrence mcp
```

### Claude Desktop Configuration

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "conkurrence": {
      "command": "npx",
      "args": ["-y", "conkurrence", "mcp"]
    }
  }
}
```

### Claude Code Plugin

```
/plugin marketplace add AlligatorC0der/conkurrence
```

## Features

- **Multi-model evaluation** — Run your schema against Bedrock, OpenAI, and Gemini models simultaneously
- **Statistical rigor** — Fleiss' kappa with bootstrap confidence intervals, Kendall's W for validity
- **Self-consistency mode** — No API keys needed; uses the host model via MCP Sampling
- **Schema suggestion** — AI-powered schema design from your data
- **Trend tracking** — Compare runs over time, detect agreement degradation
- **Cost estimation** — Know the cost before running

## MCP Tools

| Tool | Description |
|------|-------------|
| `conkurrence_run` | Execute an evaluation across multiple AI raters |
| `conkurrence_report` | Generate a detailed markdown report |
| `conkurrence_compare` | Side-by-side comparison of two runs |
| `conkurrence_trend` | Track agreement over multiple runs |
| `conkurrence_suggest` | AI-powered schema suggestion from your data |
| `conkurrence_validate_schema` | Validate a schema before running |
| `conkurrence_estimate` | Estimate cost and token usage |

## Links

- **Homepage:** [conkurrence.com](https://conkurrence.com)
- **npm:** [npmjs.com/package/conkurrence](https://www.npmjs.com/package/conkurrence)
- **Terms of Service:** [app.conkurrence.com/terms](https://app.conkurrence.com/terms)
- **Privacy Policy:** [app.conkurrence.com/privacy](https://app.conkurrence.com/privacy)

## License

[BUSL-1.1](LICENSE.md) — Business Source License 1.1
