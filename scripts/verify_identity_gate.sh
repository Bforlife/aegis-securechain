#!/bin/bash

#############################################################
# Project: Aegis-SecureChain
# Phase 3
# Keyless Identity Verification Gate
#############################################################

set -e

IMAGE=$1

if [ -z "$IMAGE" ]; then
    echo "Usage:"
    echo "./verify_identity_gate.sh <image>"
    exit 1
fi

EXPECTED_IDENTITY="https://github.com/Bforlife/aegis-securechain/.github/workflows/securechain_pipeline.yml@refs/heads/main"
EXPECTED_ISSUER="https://token.actions.githubusercontent.com"

echo "==========================================="
echo " Aegis SecureChain Identity Verification"
echo "==========================================="

cosign verify \
    --certificate-identity "$EXPECTED_IDENTITY" \
    --certificate-oidc-issuer "$EXPECTED_ISSUER" \
    "$IMAGE"

echo
echo "Identity verification passed."
