Here’s a clean, professional **README.md** you can drop directly into your Terraform project. It follows the same polished, modular style you’ve been using across your portfolio.

---

# **Identify VPC & Subnet by Tags, Fetch Latest Amazon AMI, and Launch EC2 in Desired Subnet**

This Terraform module demonstrates how to dynamically discover AWS networking resources using **tags**, retrieve the **latest Amazon Linux AMI** using filtered data sources, and deploy an **EC2 instance** into the correct subnet without hard‑coding IDs.  
It is designed for reusable, tag‑driven infrastructure deployments.

---

## 🧩 **What This Module Does**

- Identifies the **VPC** using tag filters  
- Identifies the **subnet** (public or private) using tag filters  
- Searches for the **latest Amazon Linux AMI** using filters such as virtualization type and root device  
- Deploys an **EC2 instance** into the discovered subnet  
- Outputs the selected AMI ID, VPC ID, and Subnet ID  

---

