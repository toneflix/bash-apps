# vhoster

⚙️ Quickly generate macOS-compatible Apache virtual hosts and local DNS entries.

---

## 📦 Features

- Create vhost config files in `/opt/homebrew/etc/httpd/vhosts/`
- Add matching `127.0.0.1` entries to `/etc/hosts`
- Auto-create `html` and `logs` folders for new projects
- Optional deletion of both vhost and associated project folders
- Works with default macOS Apache (`httpd`) setup

---

## 🚀 Installation

```bash
curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/vhoster/install.sh | bash
```

> This copies the `vhoster` script to `/usr/local/bin/vhoster` and makes it executable.

---

## 🛠 Usage

### ➕ Create a vhost

```bash
vhoster --create mysite.local /Users/yourname/www/mysite
```

If no hostname or path is passed, it’ll prompt you.

### ➖ Delete a vhost

```bash
vhoster --delete mysite.local
```

You’ll be asked if you want to delete the directory too.

### 📘 Help

```bash
vhoster --help
```

---

## 🧽 Uninstallation

```bash
vhoster --uninstall
```

> Or just run:

```bash
curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/vhoster/uninstall.sh | bash
```

---

## 🧠 Notes

- Tested only on macOS (uses `/opt/homebrew` path).
- Make sure Apache (`httpd`) is installed and running.
- Always backup your `/etc/hosts` file and vhost directory.

---

## 📄 License

MIT — © [Toneflix](https://github.com/toneflix)
