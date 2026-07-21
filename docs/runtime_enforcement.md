# Runtime Enforcement Preview

## Project

Project Aegis-SecureChain

## Objective

This document describes how a production deployment environment can enforce trust before allowing a container image to run.

The goal is to ensure that only authenticated, verified, and trusted container images are deployed.

---

## Runtime Verification Workflow

Developer
        │
        ▼
GitHub Actions Workflow
        │
        ▼
Build Docker Image
        │
        ▼
Cosign Keyless Signing
        │
        ▼
Fulcio issues Ephemeral Certificate
        │
        ▼
Signature recorded in Rekor Transparency Log
        │
        ▼
Image pushed to GitHub Container Registry
        │
        ▼
Deployment Platform requests image
        │
        ▼
Cosign Verify
        │
        ▼
Fulcio Certificate Validation
        │
        ▼
Rekor Transparency Log Validation
        │
        ▼
Policy Decision

Trusted Signature
        │
        ▼
Container Starts

Invalid Signature
        │
        ▼
Deployment Blocked

---

## Runtime Policy

Before a container starts, the deployment platform should verify:

• The container image has a valid Cosign signature.

• The signing certificate was issued by Sigstore Fulcio.

• The signature exists in the Rekor Transparency Log.

• The GitHub repository identity matches the expected repository.

• The GitHub workflow identity matches the approved CI/CD pipeline.

---

## Expected Verification Command

```bash
cosign verify \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  ghcr.io/Bforlife/aegis-securechain/aegis-app:latest
```

---

## Expected Behaviour

If verification succeeds:

✔ Deploy container

If verification fails:

✘ Reject deployment

---

## Security Benefits

• Prevents unsigned containers from running.

• Detects image tampering.

• Prevents unauthorized image replacement.

• Provides complete software supply chain traceability.

• Supports Zero Trust deployment principles.

---

## Future Improvements

Future versions of Project Aegis-SecureChain can integrate:

• Kyverno

• Sigstore Policy Controller

• Kubernetes Admission Controllers

• Gatekeeper (OPA)

These technologies can automatically reject unsigned or untrusted container images before they are scheduled onto production nodes.
