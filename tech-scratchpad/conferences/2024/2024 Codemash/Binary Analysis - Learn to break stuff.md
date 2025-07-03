---
date: 2024-01-09
---

... Back to [[2024 CodeMash]] ...


https://codemash.org/session-details/?id=535120


#### Binary Analysis - Learn to break stuff

##### **Presented by:** [Jason Slagle](https://codemash.org/speaker-details?id=68accf5c-4f6c-406f-806a-38f0527793b5), [John Hammond](https://codemash.org/speaker-details?id=ee7a2db7-b2ba-45f8-b0f3-09c76620235b)

Time: Tuesday, Jan. 09, 1:00 PM - 5:00 PM

In this Pre-Compiler, we'll take a dive into the world of reverse engineering.  
  
We'll start with DotPeek and reverse engineer a handful of binaries, starting with simple and ending with somewhat more complex examples with some obfuscation. We'll also discuss problems in these tools and techniques malware authors use to avoid analysis.  
  
Afterward, we'll really get our feet wet with Ghidra. We'll look into reversing some C binaries, C++, and Go.  
  
If time allows, we'll look into more complicated examples of malware analysis and level up skills all around.  
  
Some knowledge of C# and x86 assembly is helpful but not required! Come out for a half day of reverse engineering fun!

Room: Cypress**Tags:** Hardware, SecurityLevel: Intermediate

---
REQUIREMENTS
We'd prefer the attendees have a way to run Linux binaries - this can be Windows Subsystem for Linux ([https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)) or something like Kali Linux in a VM ([https://www.kali.org/get-kali/](https://www.kali.org/get-kali/))

Note that if you plan to actually do CTF's after CodeMash, the VM is a better option and Kali is useful in other ways.

**dotpeek:** ([https://www.jetbrains.com/decompiler/download/#section=web-installer](https://www.jetbrains.com/decompiler/download/#section=web-installer))

        Windows: [dotPeek64.2023.3.1.exe](https://prereqs.codemash.org/Files/dotPeek64.2023.3.1.exe)

        Mac: dotpeek is Windows only. If you need cross platform alternatives - please contact the speaker in the [CodeMash Discord!](https://discord.gg/RbZENJ8c73)


IlSpy worked out well for me, using a mac



**Ghidra:** ([https://ghidra-sre.org/](https://ghidra-sre.org/))

**Installation Notes:** ([https://htmlpreview.github.io/?https://github.com/NationalSecurityAgency/ghidra/blob/Ghidra_10.4_build/GhidraDocs/InstallationGuide.html#Requirements](https://htmlpreview.github.io/?https://github.com/NationalSecurityAgency/ghidra/blob/Ghidra_10.4_build/GhidraDocs/InstallationGuide.html#Requirements))

        Windows and Mac: [ghidra_10.4_PUBLIC_20230928.zip](https://prereqs.codemash.org/Files/ghidra_10.4_PUBLIC_20230928.zip)

        Linux: [ghidra-Ghidra_10.4_build.tar.gz](https://prereqs.codemash.org/Files/ghidra-Ghidra_10.4_build.tar.gz)



https://ctfd.kd8bfn.org/challenges