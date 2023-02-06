TabbyCAD Licensing FAQ
======================

Options available
-----------------

**Q:** What are the licensing options available?

**A:** Currently only node-locked licenses are offered.

Node-locked licenses
--------------------

**Q:** What are the restrictions on node-locked licenses?

**A:** Node licenses have two restrictions:
1. They only work on a specific device identified by a unique Device Identifier.
2. One node license is limited to devices with up to 32 hardware threads (as returned by `nproc`). For machines with nproc > 32, multiple node licenses must be purchased.

There are no restrictions on the number of concurrently running processes, number of users, total execution time, etc. The Tabby CAD Suite does not collect or transmit any usage data, all checks are performed locally.

For Github actions, an additional restriction is that the repository must be private. This is to avoid accidental distribution of the Tabby CAD Suite binaries to third parties, which is not allowed under the license terms.

Device Identifiers
^^^^^^^^^^^^^^^^^^

**Q:** What are the supported types of Device Identifiers?

**A:** Currently we support 3 types of Device ID:
1. MAC Address
2. AWS instance ID
3. GitHub repository owner (for private repositories only)

**Q:** Can you add support for another type of Device ID?

**A:** We are happy to look into adding support for other kinds of identifiers, as long as they are reasonably unique and can be accessed from the running process.

Server-based licensing
----------------------

**Q:** Can you add server-based licensing schemes?

**A:** We are not currently in a position to maintain our own licensing servers. However we are seeking funding to add support for FlexLM, which is the de facto standard for floating licenses for EDA software, and would enable customers to run their own license server.

Running on Docker
-----------------

**Q:** What should I do if I want to run Tabby CAD Suite in a Docker container?

**A:** Since a Docker container isolates the process from the underlying host machine, there is no unique ID internal to the container to tie a license to. One option is to allow access to the host network interface from the docker container and use the host MAC address as Device ID (but depending on your use case this may have security implications, as it allows the container some access to the host).
