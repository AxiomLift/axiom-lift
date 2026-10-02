<p align="center">
  <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="assets/header-dark.png">
      <source media="(prefers-color-scheme: light)" srcset="assets/header-light.png">
      <img src="assets/header-dark.png" alt="Axiom Lift: Git for your AI context and prompts" width="860">
    </picture>
  </a>
</p>

<p align="center">
  <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme"><img src="https://img.shields.io/badge/website-axiomlift.ai-ff4d4d?style=flat-square" alt="Website"></a>
  <img src="https://img.shields.io/badge/works%20with-Claude%20Code%20·%20Codex%20·%20OpenCode-111?style=flat-square" alt="Works with Claude Code, Codex and OpenCode">
  <img src="https://img.shields.io/badge/macOS%20·%20Linux%20·%20Windows-111?style=flat-square" alt="macOS, Linux, Windows">
  <img src="https://img.shields.io/badge/free-to%20start-5ef0a5?style=flat-square" alt="Free to start">
</p>

<p align="center"><b>Claude Code just compacted. Your decisions didn't go with it.</b><br>
Axiom Lift keeps every decision, rule and fix from your AI coding sessions and hands it back to the next one:<br>
after <code>/compact</code>, in another tool, on another laptop.</p>

<p align="center">
  <img src="assets/demo.gif" alt="Claude Code compacts; Axiom Lift recovers the decision made before compaction" width="820">
</p>

<p align="center">
  <a href="#install"><b>Install in one command ↓</b></a>
</p>

---

## Watch it

<p align="center">
  <a href="https://www.axiomlift.ai/static/video/axiom-lift-intro.mp4">
    <img src="assets/video-thumb.jpg" alt="Watch Axiom Lift in 74 seconds" width="720">
  </a>
</p>

## The problem

You spend an hour agreeing the rules with your AI: the schema, the auth approach, what not to touch. Then:

| What happens | What you lose |
|---|---|
| The session **compacts** | The detail behind every decision you made |
| You hit a **rate limit** and switch to Codex | Everything. It starts from zero |
| Your **teammate's** AI picks up the work | It knows a different story |
| You open a **new session** tomorrow | You explain the project again |

## Your context, over a week

<p align="center"><img src="assets/context-over-time.png" alt="Without Axiom Lift, decisions are scattered across Claude Code, Codex, OpenCode, teammates and notes, and lost at each compaction. With Axiom Lift, every decision goes into one project memory and comes back after /compact, in Codex, on a teammate's laptop." width="900"></p>

## What Axiom Lift does

- **Saved on the way in.** Decisions, rules and fixes are filed as you work. Nothing to write by hand.
- **Fed back on the way out.** After `/compact`, in a new session or a different tool, your AI starts knowing what you
  already decided, and where it was decided.
- **Across tools.** Start in Claude Code, carry on in Codex or OpenCode.
- **Across your team, when you choose.** Share a decision or a project's state so nobody works it out twice.

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
The scripts are short and readable: [`install.sh`](install.sh) · [`install.ps1`](install.ps1) (copies of what the
commands above download).

| | |
|---|---|
| Leave a project out | `python3 ~/.axiom-context/src/axiom.py exclude /path/to/project` |
| Uninstall | `python3 ~/.axiom-context/src/axiom.py uninstall` |

## Privacy

- Your sessions are kept in **your Axiom Lift account**, private to you. Nothing is shared with anyone unless you share it.
- API keys and passwords are **cut out** before anything is stored.
- Leave any project out, download a copy of your data, and **delete your account and everything in it** at any time.
- Your data is not sold, not used for advertising, and not used to train any model.

Full details: [axiomlift.ai/privacy](https://www.axiomlift.ai/privacy).

## FAQ

<details><summary><b>How is this different from <code>CLAUDE.md</code>?</b></summary><br>
<code>CLAUDE.md</code> is a file you write and keep up to date by hand, for one tool. Axiom Lift captures decisions as
you work, across Claude Code, Codex and OpenCode, and across your team's machines.
</details>

<details><summary><b>Do I have to change how I work?</b></summary><br>
No. Keep using Claude Code, Codex or OpenCode as normal; Axiom Lift works alongside your sessions.
</details>

<details><summary><b>Which tools and systems does it work with?</b></summary><br>
Claude Code, Codex (CLI) and OpenCode, on macOS, Linux and Windows.
</details>

<details><summary><b>Is it free?</b></summary><br>
Yes to start. See <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme">axiomlift.ai</a> for plans.
</details>

<details><summary><b>Where do I report a bug or ask for a feature?</b></summary><br>
<a href="../../issues/new/choose">Open an issue</a>. We read every one.
</details>

---

<p align="center">
  <a href="https://www.axiomlift.ai/?utm_source=github&utm_medium=readme"><b>axiomlift.ai</b></a> ·
  <a href="mailto:hello@axiomlift.ai">hello@axiomlift.ai</a> ·
  <a href="https://x.com/SiWeatherall">@SiWeatherall</a>
</p>
