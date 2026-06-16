# Shell Scripting Practice

A collection of shell scripts I wrote while learning Bash — from printing hello world to automating backups.

---

## What's Inside

| Script | What it does |
|---|---|
| `01-helloworld.sh` | Prints hello world |
| `02-conversation.sh` | Takes user input and responds |
| `03 to 06-variables.sh` | Working with variables |
| `07-special-variables.sh` | Special variables like `$1`, `$#`, `$?` |
| `08-data-types.sh` | Strings, numbers, and arrays |
| `09-conditions.sh` | if/else conditions |
| `10-installation.sh` | Installs Nginx automatically |
| `11-functions.sh` | Writing and reusing functions |
| `12-logs.sh` | Writing logs with timestamps |
| `13 to 15-loops.sh` | for loop examples |
| `16 to 17-colors.sh` | Colored terminal output |
| `18-set.sh` | Making scripts safer with `set -e` |
| `19 to 20-trap.sh` | Handling errors and interrupts |
| `21 to 22-scripts` | One script calling another |
| `23-delete-logs.sh` | Deletes old log files |
| `24-while-loop.sh` | while loop examples |
| `25-backup.sh` | Backs up old log files into a zip |
| `26-disk-usage.sh` | Shows how full your disk is |
| `mail.sh` | Sends an email notification |

---

## How to Run

```bash
git clone https://github.com/Kalvakota-Divakar/shell-practice.git
cd shell-practice

bash 01-helloworld.sh
```

Some scripts need admin access:

```bash
sudo bash 10-installation.sh
sudo bash 25-backup.sh
```

---

## Requirements

- Linux or macOS
- Bash shell

---

## Author

**Kalvakota Divakar**
- GitHub: https://github.com/Kalvakota-Divakar
- LinkedIn: https://linkedin.com/in/your-handle

---

## License

MIT
