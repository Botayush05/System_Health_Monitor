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

System Information Report
Date and Time : 2025-07-16 19:30
Hostname : my-vm-host
Operating System : Ubuntu 20.04.6 LTS
Kernel Version : 5.15.0-60-generic

Uptime : 3 days, 4:22
Users Logged In : ayush

CPU Load (1/5/15 min): 0.12, 0.24, 0.18
CPU Cores : 4

Total RAM : 8.0 GB
Used RAM : 2.5 GB
Free RAM : 5.5 GB

Total Swap : 2.0 GB
Used Swap : 0.0 GB

Disk Usage:
Filesystem Size Used Avail Use% Mounted on
/dev/sda1 50G 15G 32G 32% /

Top 5 Memory-consuming Processes:
PID USER %MEM COMMAND
1234 ayush 4.5 chrome
2345 ayush 3.1 code
3456 ayush 2.4 firefox
4567 root 1.9 java
5678 mysql 1.7 mysqld

IP Address : 192.168.1.20
DNS Servers : 8.8.8.8, 1.1.1.1











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
