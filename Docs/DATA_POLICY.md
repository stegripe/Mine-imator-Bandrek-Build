# Mine-imator Bandrek Build data policy

Last updated: 2026-10-16

Bandrek is a desktop app. Your projects stay on your computer unless you open them in a co-op party. This page lists every time the app talks to the internet, what it sends, and what Stegripe keeps.

## Every startup

- **Mine-imator asset and news check.** As in Mine-imator, the app asks mineimator.com whether newer Minecraft assets exist and fetches the news feed. That request includes the app version, platform and operating system.
- **Splash art.** The app asks the Stegripe API for splash art and may download an image from a Stegripe splash URL. Nothing about you is sent.
- **Update check**, only if **Check for updates automatically** is on (it is off by default). The app asks the Stegripe API for the latest Bandrek build. You can also run it by hand from the preferences.

## Your Stegripe account

The trial works without an account. Full access needs you to log in.

**Logging in.** The app asks the Stegripe API for a short code and opens the link page in your browser. You sign in with Discord there, check that the code matches and confirm. The app then receives a login token that only works on this computer.

**Device fingerprint.** To tie the token to this computer, the app builds a fingerprint from the Windows machine GUID, the system drive's serial number, the OS name, CPU architecture and computer name, and hashes it with SHA-256. Only the hash is sent.

**Access checks.** On startup, about every 8 minutes and whenever you press **Refresh**, the app sends the login token, the device hash and the client build version to ask whether you still have full access. When you have earned full access, the reply can include a short signed offline ticket (at most 24 hours). Without a valid ticket, full access does not continue offline.

**Discord.** The Stegripe Discord bot only checks whether you wear the Stegripe guild tag and whether you are in the Bandrek Build Discord server.

**What Stegripe stores:**

- your Discord user ID
- when your full access ends, and how long you have worn the guild tag towards the next week
- for each computer you logged in on: a hash of its login token, its device hash, when it was linked and when it last checked in

**Logging out** (**Help → Stegripe account → Log out**) deletes the token on Stegripe's side and clears it from your computer.

## Co-op

Co-op only runs while you are in a party. It needs live full access through Stegripe.

Creating or joining a party goes through the Stegripe API, which hands out the party code plus a member ID and session token for you. Other members see your Stegripe display name.

Inside the party, the app connects to the Stegripe relay and sends what the others need to stay in sync: project snapshots, edits, timeline and library changes, and the bytes of assets you import. The relay passes these along between members and does not save them. The host's own project files remain the real copy. Once the party ends, the session tokens stop working.

## Discord Rich Presence

On by default. The app tells the Discord app running on your computer what you are doing (for example editing, exporting or in co-op), the project name and the party size. Discord shows it on your profile. Turn it off with **Discord Rich Presence** in the preferences.

## On your computer

Projects, settings, caches and the `log.txt` log stay in the app's own folders, beside `Mine-imator.exe`. Your login is kept there too, in `Data/key.midata`: the login token, device hash, display name, last access status and, when issued, a short signed offline ticket.

The app collects nothing else. It does not read your keystrokes, clipboard, microphone, camera or files outside your project.

Only official Stegripe builds are supported. Modified binaries are unsupported.
