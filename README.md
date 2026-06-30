# Project Aegis-SecureChain

## Overview

Project Aegis-SecureChain is a hands-on DevSecOps and Software Supply Chain Security project focused on implementing modern container signing, vulnerability attestation, and identity-based verification using the Sigstore ecosystem.

The project progresses through multiple engineering phases, beginning with traditional cryptographic signing using static keys and evolving toward fully automated, keyless software supply chain security powered by OpenID Connect (OIDC), Fulcio, Rekor, and GitHub Actions.

---

# Project Objectives

* Build and secure container images using Docker
* Sign container images using Cosign
* Generate software supply chain attestations with Trivy
* Validate image integrity using cryptographic signatures
* Transition from static key-based signing to Sigstore Keyless Signing
* Implement identity-based verification policies
* Automate secure image signing through GitHub Actions

---

# Technology Stack

* Kali Linux 2025.1
* VMware Workstation
* Docker Engine
* Cosign
* Sigstore
* Fulcio
* Rekor Transparency Log
* Trivy
* Git
* GitHub
* GitHub Actions
* Bash

---

# Project Phases

## Phase 1 — Static Key-Based Container Signing

Completed

Topics covered:

* Docker installation
* Multi-stage image creation
* Local registry deployment
* Cosign key pair generation
* Container signing
* Signature verification
* Trivy vulnerability scanning
* in-toto vulnerability attestations
* Disaster recovery documentation

---

## Phase 2 — Sigstore Keyless Architecture

Completed

Topics covered:

* Understanding Sigstore architecture
* Fulcio Certificate Authority
* Rekor Transparency Log
* OIDC identity flow
* Interactive keyless signing
* Environmental validation
* Investigation of OAuth loopback limitations inside virtual machines

---

## Phase 3 — Automated Machine Identity Pipeline

In Progress

Objectives:

* GitHub Actions OIDC authentication
* Ambient workload identity
* Headless keyless signing
* Identity-based verification policies
* Automated supply chain security pipeline

---

# Repository Structure

```text
.
├── .github/
│   └── workflows/
├── docs/
│   ├── diagrams/
│   ├── reports/
│   └── screenshots/
├── scripts/
├── Dockerfile
├── app.sh
├── README.md
└── .gitignore
```

---

# Security Features

* Container image signing
* Keyless cryptographic identities
* Short-lived signing certificates
* Transparency log verification
* Vulnerability attestations
* Identity-based deployment policies
* Immutable image verification

---

# Skills Demonstrated

* DevSecOps Engineering
* Cloud-Native Security
* Software Supply Chain Security
* Docker
* GitHub Actions
* Container Security
* Bash Scripting
* Linux Administration
* Vulnerability Management
* Identity Federation
* OIDC Authentication
* Secure CI/CD

---

# Future Improvements

* SBOM generation
* SLSA provenance
* Policy enforcement with Kyverno
* Kubernetes admission control
* Multi-architecture image signing
* Continuous vulnerability monitoring

---

# Author

**Blessing Okoudu**

DevSecOps | Cloud Security | Software Supply Chain Security | Web Developer

This repository documents my practical journey toward implementing modern cloud-native software supply chain security using open-source technologies and industry best practices.
