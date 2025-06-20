# 🛡️ gh2do-firewall

A smart CLI tool to automatically sync GitHub Actions IP ranges to your [DigitalOcean](https://www.digitalocean.com/) firewall rules by automatically fetching and whitelisting GitHub Actions IPs — plus custom sources — in a secure and chunked way.

Part of the [`bash-apps`](https://github.com/toneflix/bash-apps) collection by [@toneflix](https://github.com/toneflix).

---

## 🚀 Features

- 🔐 Keeps GitHub Actions IPs synced to your firewall
- 🌍 Supports IPv4 and optional IPv6
- 🧠 Remembers your firewall and droplet selections
- 🧩 Lets you add your own custom IPs
- ♻️ Replaces old rules to avoid duplication
- 🔧 Create or update firewalls interactively

---

## ⚙️ Requirements

- [`doctl`](https://docs.digitalocean.com/reference/doctl/) (DigitalOcean CLI)
- [`jq`](https://stedolan.github.io/jq/) (for JSON parsing)
- `bash` (v4+ recommended)
- `curl`

You must be logged in to `doctl`:

```bash
doctl auth init
```

---

## 📦 Installation

### 🔁 One-liner install:

```bash
curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/gh2do-firewall/install.sh | bash
```

### 🛠️ Manual setup:

```bash
git clone https://github.com/toneflix/bash-apps.git
cd bash-apps/gh2do-firewall
chmod +x gh2do-firewall
sudo ln -s "$(pwd)/gh2do-firewall" /usr/local/bin/gh2do-firewall
```

Now you can run it globally:

```bash
gh2do-firewall
```

---

## 🧪 Usage

```bash
gh2do-firewall
```

### What it does:

1. Lists your available firewalls
2. Lets you create one if none exist
3. Lists droplets to attach to the firewall
4. Asks if you want to include GitHub IPv6 ranges
5. Lets you add your own IPs (custom sources)
6. Fetches all IPs and adds them in chunks (up to 1000 per rule)
7. Replaces previous rules to avoid duplication
8. Caches everything locally for next time

---

## 📝 Notes

- Custom IPs are saved and reused by default
- If a firewall is being updated, previous GitHub/custom port 22 rules are removed before new ones are applied
- The script uses your `~/.config/doctl/config.yaml` for DigitalOcean auth (set via `doctl auth init`)

---

## 🔄 To Update

Just `git pull` in the repo directory.

---

## 📄 License

MIT — © [Toneflix](https://github.com/toneflix)
