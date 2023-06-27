# Active Directory Enumeraion With BloodHound, Crackmapexec && Impacket

We Are Going To Simulate Some Bad Practices As A System Administrator And Try And Enumerate The Simulated Environment To Understand And Get A Better Idea On How Tools
Like BloodHound, Crackmapexec && Impacket Work For Later Use In A Real World Situation/Environment

>Steps 

1. [AD-Code] Generate/Create A Vulnerable AD Environment With Powershell Scripting Which Contains Randomly Generated Users, Weak Password Policy And Common Passwords Taken
From Rockyou.txt

2. Enumerate/Bruteforce Using Crackmapexec The Random Users Credentials Using Rockyou.txt And The Users.txt File Containing Random UserNames 

3. Abuse The Pwned Users Using Impacket-wmiexec, Impacket-psexec, Impacket-smbexec and BloodHound To Map Out The Active Directory Environment And Try To Look For Passwords
Left Out In The Open 

# Note: Complete Demonstration Series Coming On Youtube On Our [Youtube Channel] Very Soon.


[AD-Code]: https://github.com/theaqueen21/Active_Directory/tree/main/Enumeration/AD-Code
[Youtube Channel]: https://www.youtube.com/@CH1M3R44
