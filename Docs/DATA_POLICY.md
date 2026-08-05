# Data policy & transparency — Mine-imator Bandrek Build

Last updated: 2026-08-06

This document describes what the Bandrek Build client may transmit when you use
Stegripe-backed features. It is written for users and contributors; it is not
legal advice.

## Scope

| In scope | Out of scope |
| --- | --- |
| Bandrek Build desktop client | Third-party mods, plugins, or forks |
| Stegripe API (`/api/v1/mibb/*`, `/api/v1/mi/party/*`) | Mojang / Microsoft services |
| Stegripe co-op relay (WebSocket) | Mine-imator.com official services |

Offline use (no license validation retry, no co-op) keeps traffic to what the
base game already did (e.g. optional skin downloads for custom heads).

## License & account (Stegripe MIBB)

When you activate or validate a license:

- **License key** — binds your entitlement to a machine
- **HWID** — a hash derived from hardware identifiers used for seat binding
- **Discord identity** — used to resolve your display name and license ownership
  via Stegripe’s account link

Stored server-side for enforcement, support, and slot limits. Cached locally in
`key.midata` under the app data directory.

Validation may repeat periodically while online so revoked or mismatched seats
can be detected.

## Co-op / multiplayer

When you **create** or **join** a party:

- **Display name** — shown in roster and hold/sync messages (from your Stegripe
  / Discord-linked name when available)
- **Party code** — short join code you share with friends
- **Member ID & session token** — opaque IDs issued by the API; relay uses them
  to authorize your socket

While a session is active:

- **Heartbeats** — keep the party alive on the API
- **Edit sync** — project settings, library/timeline metadata, transforms,
  snapshots, and asset offers may pass through the **relay** to other members
- **Asset offers** — file bytes for imports the host must apply authoritatively

The relay routes messages between party members; it is not a cloud project
hosting service. Host remains source of truth for saved project files on disk.

When everyone leaves or the host ends the party, session tokens stop working.
We do not describe relay payloads as long-term backups—**save locally** on the
host as you would in single-player.

## Logs

The client writes a local `log.txt` (and related traces when co-op debug is
enabled). Logs stay on your machine unless you send them to someone manually.

## Your choices

- Do not activate a license → co-op and full-feature gates remain unavailable
  (trial/simple mode behaviour).
- Do not create/join co-op → no relay traffic; license validate may still occur
  if you activated.
- Leave co-op anytime → stops sync and releases party holds.

## Changes

Material changes to this policy should be reflected here and summarized in the
README collapsible section. For Stegripe-wide account privacy, refer to Stegripe’s
own site policies when available.

## Contact

Issues about data handling for Bandrek Build: Stegripe development / support
channels used for MIBB distribution.
