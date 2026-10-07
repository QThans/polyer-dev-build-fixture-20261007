# Disposable Polyer dev validation

Synthetic fixture only. No product source code, credentials, user data, external integrations, or application dependencies are included.

This repository exercises Polyer deployment builds on a dedicated Hetzner test node. Delete the repository and test resources after validation.

| Branch | Purpose | Expected HTTP body |
| --- | --- | --- |
| main / codex/b1-v1 | Successful v1 build | polyer-b1-v1 |
| codex/b1-v2 | Successful v2 build and rollback comparison | polyer-b1-v2 |
| codex/b1-fail-build | Intentional build failure: RUN exits 23 | Must never replace the healthy deployment |
| codex/b1-slow-build | Low-load 40-second build wait for cancellation | Must never replace the healthy deployment when cancelled |

All branches build from nginx:alpine. Port 80 serves a static text marker at `/` and `/index.html`. Only the base image requires a download. The slow branch sleeps instead of generating CPU, disk, or network load.

A direct BuildKit build verifies builder and registry behavior; the full Polyer build/cancellation flow requires deploying this repository through its Git source interface. No secrets should be placed in files, build arguments, logs, or this repository's Git configuration.
