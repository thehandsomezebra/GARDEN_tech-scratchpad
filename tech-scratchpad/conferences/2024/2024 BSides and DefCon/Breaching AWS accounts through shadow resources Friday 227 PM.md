---
date: 2024-08-09
---


... Back to [[2024 BSides Vegas and DefCon]] ...

https://www.youtube.com/watch?v=m9QVfYVJ7R8

This talk on "Shadow Resources" was an interesting look into how AWS services can create predictable S3 buckets behind the scenes, which can then be taken over by an attacker. The core of the attack is that if someone knows your AWS Account ID, they can pre-create these buckets and hijack services like CloudFormation or Glue... leading to a full remote account takeover. The "Bucket Monopoly" technique they introduced, where an attacker claims all predictable bucket names across all regions for a target, was a particularly clever and scary escalation of the attack. This whole talk really make me (and prolly lots of others too) rethink the "common" wisdom that an AWS account ID isn't a secret.