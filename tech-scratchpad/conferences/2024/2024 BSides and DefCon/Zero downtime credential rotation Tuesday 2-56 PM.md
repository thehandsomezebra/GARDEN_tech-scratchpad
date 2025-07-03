---
date: 2024-08-06
---




... Back to [[2024 BSides Vegas and DefCon]] ...



#### Zero downtime credential rotation

PasswordsCon, 15:00 Tuesday
[Kenton McDonough](https://bsideslv.org/speakers#VZ3NQP)


As a DevOps engineer, the topic of credential rotation is one of those things we all know is critical but often gets pushed down the backlog. The fear of causing downtime or breaking a complex system just by changing a password is very real.. it's in the category of "things that keep me up at night". Kenton McDonough's talk tackled this problem head-on, providing practical strategies for rotating credentials without needing to schedule a maintenance window. The session laid out a clear case that with the right design patterns, like blue-green deployments or derived credential rotation, *any* system can be built to handle this process seamlessly.

A particularly useful point was the emphasis on treating service accounts differently from user accounts, focusing on monitoring their behavior rather than applying strict lockout policies that can cause cascading failures. The talk also served as a good reminder that even with tools like secret managers, we have to plan for their potential failure. Ultimately, the exercise of designing for zero-downtime rotation forces you to uncover system weaknesses and better understand your failure points, which is a valuable outcome for improving overall system resilience.