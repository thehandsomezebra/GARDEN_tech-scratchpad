---
date: 2024-08-11
---



... Back to [[2024 BSides Vegas and DefCon]] ...



https://www.youtube.com/watch?v=1-vEVT10PhU

William Taylor's talk on AWS Transit Gateways was a perfect case study in the gap between design and reality. He walked through a security assessment where a client's supposedly isolated environment was completely exposed due to a misconfigured NACL. The core issue was a misunderstanding of how Transit Gateway attachments interact with subnets... a small detail that rendered their entire network segmentation useless. For me, this is a good lesson/reminder... you can't just trust the infrastructure-as-code or the design diagrams; you have to do the practical testing to find the unexpected leaks.