# Mine-imator Bandrek Build

<p align="center">
  <img src="https://cdn.stegripe.org/images/mine-imator_bb.png" width="256" alt="Mine-imator Bandrek Build" />
</p>

Bandrek Build is a **Stegripe-maintained fork** of
[Mine-imator Simply Upscaled Build](https://github.com/YogaindoCR/Mine-imator-2.0.2-Simply-Upscaled-Build)
(MISU). It keeps the Mine-imator workflow you already know — scene building,
animation, lighting, and rendering — and layers on identity, packaging, and
features requested by the Stegripe community.

| Layer | What it is |
| --- | --- |
| **Root** | [Mine-imator](https://www.mineimator.com) by David Andrei (MIT) |
| **Base fork** | Simply Upscaled Build — upscaled assets & community QoL |
| **Bandrek Build** | Stegripe branding, portable layout, license gate, co-op editing |

## What Bandrek adds

- **Real-time co-op editing** — shared project sessions over the Stegripe relay
- Visual identity: logo, splashes, icons, and render presets
- Portable-first layout — a self-contained `Data/` folder beside the executable
- Stegripe license integration for full features
- Quality-of-life and packaging work for Windows (portable + installer)

Co-op is optional. Offline single-user editing works with no network at all;
online features only activate when you create or join a party.

## Download & run

Grab the latest build from
[Releases](https://github.com/stegripe/Mine-imator-Bandrek-Build/releases).

Keep the **whole release folder** together — the executable, its `Data/`
folder, and the bundled libraries. Copying `Mine-imator.exe` on its own will
not start.

## About this repository

This repository is the public home of Bandrek Build: releases, issues, and
project information. It tracks the upstream MISU source and does **not** carry
Bandrek's own source changes, which are developed privately by Stegripe.

Bug reports and feature requests are welcome in
[Issues](https://github.com/stegripe/Mine-imator-Bandrek-Build/issues).

## Credits

- **Mine-imator** — [David Andrei](https://www.stuffbydavid.com) ·
  [source (MIT)](https://github.com/stuffbydavid/Mine-imator)
- **Simply Upscaled Build** — the upstream community fork this project builds on
- **Bandrek Build** — Stegripe development, UI and branding contributors (see
  **Help → About** in-app)
- **Minecraft** — trademark of Mojang / Microsoft

Community: [Mine-imator forums](https://www.mineimatorforums.com)

Source is MIT licensed — see [LICENSE](LICENSE). Minecraft assets and
trademarks belong to Mojang / Microsoft.

---

<details>
<summary><strong>Data policy &amp; transparency</strong></summary>

Bandrek Build talks to Stegripe services in two situations: when you
**activate a license**, and when you **use co-op**. Everything below is what
may leave your machine, so you can decide before connecting.

| When | What may be sent | Where | Stored? |
| --- | --- | --- | --- |
| License activate/validate | License key, hardware ID (HWID hash), Discord-linked account metadata | Stegripe API | Yes — license binding |
| Co-op create/join | Party code, session token, display name, roster | Stegripe API + relay | Session lifetime |
| Co-op heartbeat | Party/member IDs to keep the session alive | Stegripe API | Short-lived |
| Co-op sync | Project snapshots, asset bytes, edit operations (while in a party) | Stegripe relay | Not kept as permanent project storage |
| Upgrade / sign-in | Browser OAuth flow to Discord (Stegripe) | Your browser → Stegripe | Per Stegripe account policy |

**Not collected during normal editing**

- Keystrokes or clipboard content outside co-op session scope
- Files unrelated to the project you are editing
- Microphone or camera

**Stays on your disk**

Projects, caches, logs, and the license cache (`key.midata`) live in the
application's user/data directories. Nothing leaves unless you export it or
sync it through co-op.

Full detail: **[Docs/DATA_POLICY.md](Docs/DATA_POLICY.md)**

</details>
