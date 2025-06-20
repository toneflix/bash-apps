# Toneflix Bash Apps

A curated collection of useful bash utilities built for system management, development workflows, and automation — easily installable via `curl`, _`brew`, or `apt` (coming soon)._

### 📦 Available Apps

| App                                 | Description                                                                |
| ----------------------------------- | -------------------------------------------------------------------------- |
| [`vhoster`](/vhoster)               | Virtual host generator for local development (`/etc/hosts`, Apache/Nginx). |
| [`gh2do-firewall`](/gh2do-firewall) | Updates DigitalOcean firewalls with GitHub Actions IP ranges (IPv4/IPv6).  |

---

## 🚀 Installation

### 🖱️ One-line installer

```bash
curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/[app-name]/install.sh | bash
```

Replace `[app-name]` with the name of the app you intend to install, e.g. `gh2do-firewall`.

---

## 🧭 Usage

Each app is a single command-line tool. After installation, run:

```bash
[app-name] --help
```

For command usage, flags, and options (Replace `[app-name]` with the name of the app).

---

## 🔄 Updating

Simply re-run the install command to get the latest version:

```bash
curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/[app-name]/install.sh | bash
```

---

## 🧼 Uninstalling

Some tools like `vhoster` support:

```bash
[app-name] --uninstall
```

Otherwise, remove the binary manually:

```bash
sudo rm /usr/local/bin/[app-name]
```

---

## 📦 Coming Soon

- [x] Homebrew tap
- [x] APT package setup
- [ ] Shell auto-completion
- [ ] More CLI tools...

---

## 🤝 Contributing

Pull requests are welcome. Tools should be:

- Single-purpose
- POSIX-compliant or bash-specific
- Portable and dependency-light

---

## ⚖️ License

MIT — do whatever, just give credit.
© Toneflix, 2025.
