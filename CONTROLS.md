| ISM ID | Description |
| ------ | ----------- |
| ISM-0408 | Systems have a logon banner that requires users to acknowledge and accept their security responsibilities before access is granted. |
| ISM-0421 | Passphrases used for single-factor authentication are at least 4 random words with a total minimum length of 14 characters, unless more stringent requirements apply. |
| ISM-0428 | Systems are configured with a session or screen lock that:<br>• activates after a maximum of 15 minutes of user inactivity, or if manually activated by users<br>• conceals all session content on the screen<br>• ensures that the screen does not enter a power saving state before the session or screen lock is activated<br>• requires users to reauthenticate to unlock the session<br>• denies users the ability to disable the session or screen locking mechanism. |
| ISM-0433 |  |
| ISM-0471 | Only AACAs or high assurance cryptographic algorithms are used by cryptographic equipment and software. |
| ISM-0472 | When using DH for agreeing on encryption session keys, a modulus of at least 2048 bits is used, preferably 3072 bits. |
| ISM-0484 | The SSH daemon is configured to:<br>• only listen on the required interfaces (ListenAddress xxx.xxx.xxx.xxx)<br>• have a suitable login banner (Banner x)<br>• have a login authentication timeout of no more than 60 seconds (LoginGraceTime 60)<br>• disable host-based authentication (HostbasedAuthentication no)<br>• disable rhosts-based authentication (IgnoreRhosts yes)<br>• disable the ability to login directly as root (PermitRootLogin no)<br>• disable empty passwords (PermitEmptyPasswords no)<br>• disable connection forwarding (AllowTCPForwarding no)<br>• disable gateway ports (GatewayPorts no)<br>• disable X11 forwarding (X11Forwarding no). |
| ISM-0521 | IPv6 functionality is disabled in dual-stack network devices unless it is being used. |
| ISM-0534 | Unused physical ports on network devices are disabled. |
| ISM-0994 | ECDH and ECDSA are used in preference to DH and DSA. |
| ISM-1139 | Only the latest version of TLS is used for TLS connections. |
| ISM-1304 | Default accounts for network devices are disabled, renamed or have their credentials changed. |
| ISM-1311 | SNMP version 1 and 2 are not used on networks. |
| ISM-1403 | Accounts are locked out after a maximum of five failed logon attempts. |
| ISM-1453 | Perfect Forward Secrecy (PFS) is used for TLS connections. |
| ISM-1506 | The use of SSH version 1 is disabled for SSH connections. |
| ISM-1557 | Passphrases used for single-factor authentication on SECRET systems are at least 5 random words with a total minimum length of 17 characters. |
| ISM-1590 | Credentials are changed if:<br>• they are directly compromised<br>• they are suspected of being compromised<br>• they appear in an online data breach database<br>• they are discovered stored on networks in the clear<br>• they are discovered being transferred across networks in the clear<br>• membership of a shared account changes<br>• they have not been changed in the past 12 months. |
