YosysHQ Tool Documentation
==========================

Yosys
-----

Yosys is a framework for RTL synthesis and more. It currently has extensive 
Verilog-2005 support and provides a basic set of synthesis algorithms for various 
application domains. Yosys is the core component of most our implementation and 
verification flows.

- `Yosys manual <https://yosys.readthedocs.io/en/latest/>`_
- `Yosys command reference <https://yosys.readthedocs.io/en/latest/cmd_ref.html>`_

SBY
---

SBY is a front-end for Yosys-based formal verification flows for safety 
properties, liveness properties, and reachability.  Different engines offer a
variety of solving methods in order to find the fastest solution.

- `SBY reference manual <https://yosyshq.readthedocs.io/projects/sby>`_
- `Supported engines <https://yosyshq.readthedocs.io/projects/sby/en/latest/reference.html#engines-section>`_

MCY
---

MCY uses Yosys to provide mutation coverage of testbenches.  By using built-in 
equivalence checking, the common problem with equivalent mutations can be 
avoided, and 100% coverage can be targeted.

- `MCY reference manual <https://yosyshq.readthedocs.io/projects/mcy>`_

EQY
---

EQY is a tool to provide Yosys-based equivalence checking for formal 
verification.

- `EQY reference manual <https://yosyshq.readthedocs.io/projects/eqy>`_


Formal Off-the-Shelf VIP
------------------------

- `riscv-formal <https://github.com/YosysHQ/riscv-formal>`_ is a framework for formal verification of RISC-V processors.
- `SVA-AXI4-FVIP <https://yosyshq.readthedocs.io/projects/ap320>`_ is a set of SVA properties that can be used to verify modules implementing any of the AXI4 and AXI4-Lite manager, subordinate, or interconnect interfaces.