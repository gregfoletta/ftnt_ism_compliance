| ISM ID | Description |
| ______ | ___________ |
| ISM-0408 | Systems have a logon banner that requires users to acknowledge and accept their security responsibilities before access is granted. |
| ISM-0471 | Only AACAs or high assurance cryptographic algorithms are used by cryptographic equipment and software. |
| ISM-0433 |  |
| ISM-0484 | The SSH daemon is configured to:
• only listen on the required interfaces (ListenAddress xxx.xxx.xxx.xxx)
• have a suitable login banner (Banner x)
• have a login authentication timeout of no more than 60 seconds (LoginGraceTime 60)
• disable host-based authentication (HostbasedAuthentication no)
• disable rhosts-based authentication (IgnoreRhosts yes)
• disable the ability to login directly as root (PermitRootLogin no)
• disable empty passwords (PermitEmptyPasswords no)
• disable connection forwarding (AllowTCPForwarding no)
• disable gateway ports (GatewayPorts no)
• disable X11 forwarding (X11Forwarding no). |
| ISM-0994 | ECDH and ECDSA are used in preference to DH and DSA. |
| ISM-0472 | When using DH for agreeing on encryption session keys, a modulus of at least 2048 bits is used, preferably 3072 bits. |
| ISM-0534 | Unused physical ports on network devices are disabled. |
| ISM-1453 | Perfect Forward Secrecy (PFS) is used for TLS connections. |
| ISM-1557 | Passphrases used for single-factor authentication on SECRET systems are at least 5 random words with a total minimum length of 17 characters. |
| ISM-0521 | IPv6 functionality is disabled in dual-stack network devices unless it is being used. |
| ISM-1403 | Accounts are locked out after a maximum of five failed logon attempts. |
| ISM-0421 | Passphrases used for single-factor authentication are at least 4 random words with a total minimum length of 14 characters, unless more stringent requirements apply. |
| ISM-1139 | Only the latest version of TLS is used for TLS connections. |
| ISM-0428 | Systems are configured with a session or screen lock that:
• activates after a maximum of 15 minutes of user inactivity, or if manually activated by users
• conceals all session content on the screen
• ensures that the screen does not enter a power saving state before the session or screen lock is activated
• requires users to reauthenticate to unlock the session
• denies users the ability to disable the session or screen locking mechanism. |
| ISM-1590 | Credentials are changed if:
• they are directly compromised
• they are suspected of being compromised
• they appear in an online data breach database
• they are discovered stored on networks in the clear
• they are discovered being transferred across networks in the clear
• membership of a shared account changes
• they have not been changed in the past 12 months. |
| ISM-1506 | The use of SSH version 1 is disabled for SSH connections. |
| ISM-1304 | Default accounts for network devices are disabled, renamed or have their credentials changed. |
| ISM-1311 | SNMP version 1 and 2 are not used on networks. |
