#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"
ASSET_SCRIPT="${ROOT_DIR}/src/codex_a2a_server/assets/scripts/deploy/enable_instance.sh"

if [[ ! -f "${ASSET_SCRIPT}" ]]; then
  echo "Packaged enable_instance asset not found: ${ASSET_SCRIPT}" >&2
  exit 1
fi

exec bash "${ASSET_SCRIPT}" "$@"
