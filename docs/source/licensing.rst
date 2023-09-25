TabbyCAD Licensing FAQ
======================

Options available
-----------------

**Q:** What are the licensing options available?

**A:** There are two licensing options:

 - Node-locked licenses
 - Floating licenses (via FlexNet Publisher, for customers running their own license server)

Node-locked licenses
--------------------

**Q:** What are the restrictions on node-locked licenses?

**A:** Node licenses have two restrictions:
1. They only work on a specific device identified by a unique Device Identifier.
2. One node license is limited to devices with up to 32 processor cores/hardware threads (as returned by `nproc`). For machines with nproc > 32, multiple node licenses must be purchased.

There are no restrictions on the number of concurrently running processes, number of users, total execution time, etc. The Tabby CAD Suite does not collect or transmit any usage data, all checks are performed locally.

For Github actions, an additional restriction is that the repository must be private. This is to avoid accidental distribution of the Tabby CAD Suite binaries to third parties, which is not allowed under the license terms.

Device Identifiers
^^^^^^^^^^^^^^^^^^

**Q:** What are the supported types of Device Identifiers?

**A:** Currently we support the following types of Device ID:
1. MAC Address
2. AWS instance ID
3. Scaleway instance ID
4. Google Cloud instance ID
5. GitHub repository owner (for private repositories only)

**Q:** Can you add support for another type of Device ID?

**A:** We are happy to look into adding support for other kinds of identifiers, as long as they are reasonably unique and can be accessed from the running process.

Server-based licensing
----------------------

**Q:** What are the restrictions on floating licenses?

**A:** Floating licenses have the same processor/hardware thread restrictions as node-locked licenses. The user must check out a number of licenses sufficient for the device according to the same rules (one license per 32 processor cores). It is not possible to check out fractional licenses, the number of processors is always rounded up to the nearest multiple of 32. Once the licenses have been checked out, there are no limitations on the number of processes running concurrently on the device.

Unlike node-locked licenses, floating licenses cannot be shared between different user accounts on the same device.

Running on Docker
-----------------

**Q:** What should I do if I want to run Tabby CAD Suite in a Docker container?

**A:** Since a Docker container isolates the process from the underlying host machine, there is no unique ID internal to the container to tie a license to. For node-locked licenses, you can allow access to the host network interface from the docker container and use the host MAC address as Device ID (but depending on your use case this may have security implications, as it allows the container some access to the host).
