# lala-net-public

Reference configuration for the 10-node heterogeneous sovereign compute cluster described in:

> Aggarwal, V. (2026). *Zero-Cost Sovereign Computing: A 10-Node Heterogeneous Cluster Using Headscale, Cloudflare Tunnels, and Oracle Always-Free Tier.* TechRxiv preprint.

## What this repo contains

This repository is the **companion artifact** to the paper. All secrets, credentials, keys, real hostnames, and personal data have been redacted. The configurations here are intended as a starting-point *template*, not a working deployment.

```
lala-net-public/
├── README.md                 (this file)
├── LICENSE                   (MIT)
├── headscale/
│   ├── config.yaml.example   (sanitized Headscale v0.28 config)
│   └── acl.hujson.example    (policy: user+node-level ACLs)
├── cloudflared/
│   └── config.yml.example    (per-node tunnel with ingress rules)
├── caddy/
│   └── Caddyfile.example     (TLS termination + reverse proxy)
├── mcp-proxy/
│   ├── mcp-server.service    (systemd unit for mcp-proxy)
│   └── env.example           (allowed-directory list per node)
├── ansible/
│   └── site.yml              (skeleton playbook)
├── scripts/
│   └── bootstrap-node.sh     (minimal bootstrap for a new Ubuntu node)
└── diagrams/
    ├── topology.mmd          (Mermaid source of Figure 1)
    └── mcp-federation.mmd    (Mermaid source of Figure 2)
```

## Status

This is **pre-release scaffolding**. Configurations will be expanded and hardened as the paper progresses through preprint and peer review. Issues and PRs welcome.

## License

MIT License. See `LICENSE`.

## Cite

```bibtex
@misc{aggarwal2026zerocost,
  title        = {Zero-Cost Sovereign Computing: A 10-Node Heterogeneous Cluster Using Headscale, Cloudflare Tunnels, and Oracle Always-Free Tier},
  author       = {Aggarwal, Vibhav},
  year         = {2026},
  howpublished = {TechRxiv preprint},
  url          = {https://github.com/Vibhav-Aggarwal/lala-net-public}
}
```

## Author

**Vibhav Aggarwal** — Independent Researcher; Co-founder, Lala City
ORCID: [0009-0000-7686-7119](https://orcid.org/0009-0000-7686-7119)
Email: vibhav@vibhavaggarwal.com
Web: https://www.vibhavaggarwal.com/
