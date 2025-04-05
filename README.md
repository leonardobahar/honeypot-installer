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
```

---

## 📦 Step 2: Decide the Trap You Want

This project currently supports the following honeypots:

- **Honeytrap** – [GitHub Repository](https://github.com/buger/honeytrap)
- **Cowrie** – [GitHub Repository](https://github.com/cowrie/cowrie)

Choose the honeypot you want to install and run the corresponding script:

```bash
bash install_cowrie.sh
```

To install Honeytrap, on the project directory, preview honeytrap_config.toml first. Include the services you want to run, refer to this [documentation](https://docs.honeytrap.io/services/) for the services you can run on Honeytrap.
Before running the script below, also edit the docker port bindings of the script to ensure the services you deploy can be accessible through the host ports. By running
```bash
bash install_honeytrap.sh
```
the script will automatically propagate the config file to the docker specifically into /config/config.toml of Honeytrap.

## 📡 (Optional) Send Logs to Elastic with Filebeat

If you want to send honeypot logs to **Elasticsearch** (for example, for visualization with Kibana), you can set up **Filebeat**.

Use the following script:

```bash
bash install_filebeat.sh
```

Modify the filebeat configs in /etc/filebeat/filebeat.yml to start exporting your logs to Elastic. After running the Honeypot installer scripts (install_cowrie.sh, install_honeytrap.sh, etc), follow the on screen instruction on where your logs are located.

## 🤝 Contributing

PRs and feedback are welcome! Feel free to fork the project and submit a pull request if you'd like to add more honeypots, improve automation, or enhance configuration flexibility.
