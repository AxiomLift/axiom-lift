<p align="center">
  <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme"><img src="assets/compaction.jpg" width="420" alt="Axiom Lift: compaction happened, nothing was lost"></a>
</p>

<h1 align="center">Axiom Lift</h1>
<p align="center"><b>Git for your AI context and prompts.</b><br>
Claude Code, Codex and OpenCode keep every decision, across compaction, across tools, across your team.</p>

<p align="center">
  <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme">Website</a> ·
  <a href="#install">Install</a> ·
  <a href="#privacy">Privacy</a> ·
  <a href="#faq">FAQ</a> ·
  <a href="../../issues">Issues</a>
</p>

---

## The problem

You spend an hour agreeing the rules with Claude Code: the schema, the auth approach, what not to touch. Then the
session **compacts**, and the detail is gone. You hit a rate limit and switch to Codex, and it starts from zero. Your
teammate's AI knows a different story. So you explain it all again.

## What Axiom Lift does

- **Keeps every decision, rule and fix** from your Claude Code, Codex and OpenCode sessions, filed as you work.
- **Hands it back after `/compact`**, so the next turn starts knowing what you already decided.
- **Carries context between tools.** Start in Claude Code, carry on in Codex or OpenCode.
- **Shares it with your team when you choose**, so every laptop's AI works from the same history.
- **One command to install.** Free to start.

## Install

**macOS / Linux** (needs Python 3):

```sh
curl -fsSL https://www.axiomlift.ai/install.sh | sh
```

**Windows** (PowerShell):

```powershell
irm https://www.axiomlift.ai/install.ps1 | iex
```

It asks you to sign up or sign in right there in the terminal, then connects the AI tools it finds on this computer.
The scripts are short and readable: see [`install.sh`](install.sh) and [`install.ps1`](install.ps1) in this repo. They
are copies of what the commands above download.

**Leave a project out:** `python3 ~/.axiom-context/src/axiom.py exclude /path/to/project`

**Uninstall:** `python3 ~/.axiom-context/src/axiom.py uninstall`

## Privacy

- Your sessions are kept in **your Axiom Lift account**, private to you. Nothing is shared with anyone unless you share it.
- API keys and passwords are **cut out** before anything is stored.
- You can leave any project out, see everything that is kept, download a copy, and **delete your account and everything
  in it** at any time.
- Your data is not sold, not used for advertising, and not used to train any model.

Full details: [axiomlift.ai/privacy](https://www.axiomlift.ai/privacy).

## FAQ

**How is this different from `CLAUDE.md`?**
`CLAUDE.md` is a file you write and keep up to date by hand, for one tool. Axiom Lift captures decisions as you work,
across Claude Code, Codex and OpenCode, and across your team's machines.

**Do I have to change how I work?**
No. Keep using Claude Code, Codex or OpenCode as normal; Axiom Lift works alongside your sessions.

**Which tools does it work with?**
Claude Code, Codex (CLI) and OpenCode, on macOS, Linux and Windows.

**Is it free?**
Yes to start. See [axiomlift.ai](https://www.axiomlift.ai/?utm_source=github&utm_medium=readme) for plans.

**Where do I report a bug or ask for a feature?**
[Open an issue](../../issues/new/choose). We read every one.

---

<p align="center"><a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme">axiomlift.ai</a> · <a href="mailto:hello@axiomlift.ai">hello@axiomlift.ai</a></p>
