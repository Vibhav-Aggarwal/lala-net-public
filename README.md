# lala-net-public

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.19654425.svg)](https://doi.org/10.5281/zenodo.19654425)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![ORCID](https://img.shields.io/badge/ORCID-0009--0000--7686--7119-A6CE39?logo=orcid&logoColor=white)](https://orcid.org/0009-0000-7686-7119)

Reference configuration for the 10-node heterogeneous sovereign compute cluster described in:

> Aggarwal, V. (2026). *Zero-Cost Sovereign Computing: A 10-Node Heterogeneous Cluster Using Headscale, Cloudflare Tunnels, and Oracle Always-Free Tier.*
> Zenodo. https://doi.org/10.5281/zenodo.19654425

## What this repo contains

Companion artifact to the paper. All secrets, credentials, keys, real hostnames, and personal data have been redacted. The configurations here are a starting-point *template*, not a working deployment.

```
lala-net-public/
├── README.md                 (this file)
├── LICENSE                   (MIT)
├── headscale/
│   ├── config.yaml.example   (sanitized Headscale v0.28 config)
│   └── acl.hujson.example    (user + node-level ACL policy)
├── cloudflared/
│   └── config.yml.example    (per-node tunnel with ingress rules)
├── mcp-proxy/
│   ├── mcp-server.service    (systemd unit for mcp-proxy)
│   └── env.example           (allowed-directory list per node)
├── scripts/
│   └── bootstrap-node.sh     (minimal bootstrap for a new Ubuntu node)
└── diagrams/
    ├── fig1-topology.mmd          (Mermaid source of Figure 1)
    ├── fig2-mcp-federation.mmd    (Mermaid source of Figure 2)
    └── fig4-headscale-flow.mmd    (Mermaid source of Figure 4)
```

## Paper

- **Preprint (Zenodo, v1)**: https://doi.org/10.5281/zenodo.19654425
- **PDF**: available on the Zenodo record above
- **arXiv**: cross-post pending (endorsement in progress)

## Key findings

- 10 heterogeneous nodes, predominantly repurposed / secondhand hardware
- Marginal capital to assemble this cluster: **≈ USD 325**, against a historical acquisition cost across prior owners / uses of **≥ USD 13,000**
- Recurring subscription fees: **≈ INR 300/month (USD 3.60/month)**
- 14 months continuous operation (Feb 2025 – Apr 2026)
- Self-hosted Headscale v0.28 mesh VPN + Cloudflare Tunnels + OCI Always-Free Tier
- 7-node MCP (Model Context Protocol) server federation for agentic-LLM cluster access
- "Nomadic" subnet (admin-server + consumer WiFi router) that physically travels with the operator

## Cite

```bibtex
@misc{aggarwal_2026_zerocost,
  author       = {Aggarwal, Vibhav},
  title        = {{Zero-Cost Sovereign Computing: A 10-Node
                   Heterogeneous Cluster Using Headscale,
                   Cloudflare Tunnels, and Oracle Always-Free Tier}},
  month        = apr,
  year         = 2026,
  publisher    = {Zenodo},
  version      = {v1},
  doi          = {10.5281/zenodo.19654425},
  url          = {https://doi.org/10.5281/zenodo.19654425}
}
```

## License

MIT License. See [LICENSE](./LICENSE).

## Author

**Vibhav Aggarwal** — Founder, Herbilé · Co-founder, Lala City · Independent Researcher
ORCID: [0009-0000-7686-7119](https://orcid.org/0009-0000-7686-7119)
Email: vibhav@vibhavaggarwal.com
Web: https://www.vibhavaggarwal.com/
