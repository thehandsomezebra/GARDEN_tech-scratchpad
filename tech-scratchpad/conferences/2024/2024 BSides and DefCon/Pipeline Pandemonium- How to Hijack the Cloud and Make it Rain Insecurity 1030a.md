---
date: 2024-08-07
---



... Back to [[2024 BSides Vegas and DefCon]] ...


#### Pipeline Pandemonium: How to Hijack the Cloud and Make it Rain Insecurity

Ground Floor, 10:30 Wednesday


[Blake Hudson](https://bsideslv.org/speakers#T7WN7A)

Blake Hudson's talk on pipeline security was directly in my wheelhouse as a DevOps engineer. He walked through common vulnerabilities in CI/CD pipelines, covering the tools many of us use daily like GitHub Actions and Jenkins. The session focused on how the very automation that gives us speed can be turned against us, with attackers exploiting things like insecure secrets and overly permissive IAM roles to compromise cloud environments.

The real-world examples were the most valuable part of the session. Hudson demonstrated how an attacker could bypass weak secret masking with simple text manipulation, then create a new branch with a malicious workflow to exfiltrate credentials without ever needing a pull request. He also showed a case where a misconfigured trust relationship on a role allowed access from any repository in an organization, creating a persistent backdoor. These examples are a clear call for more rigorous security practices, emphasizing the need to lock down permissions and apply the principle of least privilege to every component of our CI/CD infrastructure.