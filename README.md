## Ansible Web Server Automation

Automated Apache Deployment on AWS EC2

## About This Project

This project is part of my **DevOps & Cloud Computing Bootcamp at Ironhack Germany (2025)**.  

Here, I learned how to **automate server setup** and **generate dynamic configuration files** on AWS EC2 instances using **Ansible** and **Jinja2 templates**.  

It’s a hands-on example of how to make server management **efficient, consistent, and scalable**.


## What This Lab Does

- Launch and manage AWS EC2 instances.  

- Install tools like `htop` automatically. 

- Generate dynamic configuration files using Jinja2 templates.  

- Verify that each server has the correct configuration applied.

## Project Structure

ansible_j2_remote_server/

│── main.tf                # ec2 provisioning 

│── jinja2.yml             # Main Ansible playbook

│── hosts.ini.example             # Inventory file 

│── templates/

│ └── my_config.j2          # Jinja2 template

│── README.md               # Project documentation

│── .gitignore            # Ignore sensitive files


Replace `hosts.ini` values with your actual EC2 public IPs and SSH key paths.

---

## How to Run

1. Clone the repository:  https://github.com/donaemeka/ansible-apache-automation.git

    - cd ansible-apache-automation

2. Update hosts.ini.example with your EC2 IPs/DNS and SSH key path.

3. Run the playbook:  ansible-playbook -i hosts.ini.example jinja2.yml


## Verification

After running the playbook:

- Check htop installation:

 htop --version


- Verify the configuration file:

ls -l /etc/my_config

cat /etc/my_config


## Tools & Technologies

- Ansible – Automation & orchestration

- Jinja2 Templates – Dynamic configuration files

- AWS EC2 – Cloud servers

- Ubuntu Linux – Server OS

- YAML – Playbook language


## Why This Matters

This project shows that I can:

- Automate infrastructure efficiently.

- Apply dynamic configuration across multiple servers.


- Work safely with sensitive data using best practices.
