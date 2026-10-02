# How the Context Loss Test works

## What it measures

When Claude Code (or Codex) fills its context window, it **compacts**: it writes a summary of the conversation so far
and carries on from the summary. The full conversation is still in the session file on your computer
(`~/.claude/projects/…`, `~/.codex/sessions/…`), with a marker where each compaction happened and the summary that
replaced it.

The test asks one question of each compaction: **of the things that mattered before it, which does the summary still
carry?**

## How it's checked

1. **Finding compactions.** Axiom reads your session files on your computer and finds each compaction marker, the
   conversation before it (back to the previous compaction) and the summary, plus any messages Claude kept word for
   word.
2. **Deduplicating first.** A conversation resumed or forked into several files is read once; a compaction already
   checked is never checked again; a session with nothing new is skipped.
3. **Your own Claude reads it.** The conversation and the summary go to **your own Claude Code**, run in the
   background with `claude -p` on the small model: no tools, no MCP servers, no project settings, and no session saved.
   Several sessions share one prompt, kept to about 40k tokens (longer prompts made it skim: we measured it).
4. **What it's asked.** List 8 to 12 decisions, rules you set and approaches you turned down, from before the
   compaction, that would matter for carrying on. For each: is it still in the summary (same meaning, rephrasing
   counts), with the summary's own words as evidence, or not.
5. **The score** is kept ÷ (kept + lost), across your compacted sessions. A session that never compacted lists what
   was decided in it, as saved.

Your report and its items go to your private Axiom Lift account. Your conversations go up with your history as with
any install (see [Privacy](https://www.axiomlift.ai/privacy)); the checking itself happens on your computer.

## What it can't tell you

- **It's a model's judgement.** The small model can miss an item or misjudge a paraphrase. Every "kept" comes with the
  summary's words so you can check it.
- **It checks the summary, not the behaviour.** A rule that is lost from the summary may still be followed (it was in
  `CLAUDE.md`, say); one that is kept may still be ignored.
- **It picks what mattered.** Up to 12 items a compaction, so a long stretch of work is sampled, not listed in full.
- **The newest three compactions** of a session are checked.

## The Claude Stress Test

Your last 30 days of messages are counted on your computer against word lists for Plutchik's eight emotions (the
shares, the stress score and your strongest pair). Your own Claude Code then writes the profile around those numbers,
quoting your messages; only the profile and the messages it quotes reach your account, where every quote is checked
word for word against them. It's a joke with a point, not a psychological assessment.
