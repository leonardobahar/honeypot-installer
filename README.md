# 🐝 honeypot-installer

**honeypot-installer** is a simple, no-fuss shell script project to help you set up and initialize honeypots such as **Cowrie**, **Honeytrap**, and more — perfect for cybersecurity enthusiasts, researchers, or anyone curious about threat monitoring.

---

## 🚀 Getting Started

To start using the honeypot-installer, you'll need to run this on a cloud VM or server with the **minimum recommended specifications**:

- **1 vCPU core**
- **512 MB RAM**
- **10 GB storage**

> ⚠️ Note: Lower specs might result in performance issues depending on how many honeypots you deploy.

---

## 🐳 Step 1: Install Docker

Before running the honeypot setup scripts, Docker needs to be installed.

Run the provided script to install Docker:

```bash
bash install_docker.sh

---

## 📦 Step 2: Decide the Trap You Want

This project currently supports the following honeypots:

- **Honeytrap** – [GitHub Repository](https://github.com/buger/honeytrap)
- **Cowrie** – [GitHub Repository](https://github.com/cowrie/cowrie)

Choose the honeypot you want to install and run the corresponding script:

```bash
bash install_cowrie.sh

## 📡 (Optional) Send Logs to Elastic with Filebeat

If you want to send honeypot logs to **Elasticsearch** (for example, for visualization with Kibana), you can set up **Filebeat**.

Use the following script:

```bash
bash install_filebeat.sh

## 🤝 Contributing

PRs and feedback are welcome! Feel free to fork the project and submit a pull request if you'd like to add more honeypots, improve automation, or enhance configuration flexibility.
