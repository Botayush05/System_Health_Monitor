# 🖥️ System Information Shell Script

This is a simple yet powerful **Bash Shell Script** that gathers and displays detailed system information. It’s useful for Linux system administrators, learners, and developers who want quick insights into system performance, disk usage, memory, network, and uptime.

## 📌 Features

- ✅ Displays hostname and OS details  
- ✅ Shows system uptime  
- ✅ Memory and swap usage  
- ✅ CPU load and information  
- ✅ Disk usage  
- ✅ Logged-in users  
- ✅ Running processes count  
- ✅ Network IP and DNS info  
- ✅ Output saved to a `.txt` file  

## 📂 How to Run

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/system-info-script.git
    cd system-info-script
    ```

2. Make the script executable:

    ```bash
    chmod +x system_info.sh
    ```

3. Run the script:

    ```bash
    ./system_info.sh
    ```

The output will be displayed on the terminal and saved as `system_report.txt`.

---

## 🧾 Sample Output











---

## 🛠️ Commands Used

| Command                    | Description                              |
|----------------------------|------------------------------------------|
| `hostname`                 | Displays system hostname                 |
| `uname -o` / `uname -r`    | Shows OS type and kernel version         |
| `uptime -p`                | Displays system uptime                   |
| `free -h`                  | Shows RAM and swap usage                 |
| `top -b -n1 | head -15`    | Lists top memory-consuming processes     |
| `df -h`                    | Displays disk usage                      |
| `who` or `w`               | Shows logged-in users                    |
| `hostname -I` or `ip a`    | Shows IP address                         |
| `cat /etc/resolv.conf`     | Displays DNS configuration               |

---

## 📘 Ideal For

- Linux System Administration
- Bash scripting practice
- Resume mini-project
- Cloud/DevOps learning

---

## 🏷️ Tags

`bash` `linux` `shell scripting` `system monitoring` `sysadmin tools`

---

## 📄 License

This project is licensed under the MIT License - feel free to use and modify it.
