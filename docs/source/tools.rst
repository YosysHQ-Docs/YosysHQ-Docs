YosysHQ Tool Documentation
==========================

Yosys
-----

Yosys is a framework for RTL synthesis and more. It currently has extensive 
Verilog-2005 support and provides a basic set of synthesis algorithms for various 
application domains. Yosys is the core component of most our implementation and 
verification flows.

- `Yosys command reference <http://yosyshq.net/yosys/documentation.html>`_ (scroll down)
- `Yosys manual (PDF) <https://github.com/YosysHQ/yosys-manual-build/releases/download/manual/manual.pdf>`_
- ...TBD...

sby
---

sby is a front-end for Yosys-based formal verification flows for safety 
properties, liveness properties, and reachability.  It can support: additional 
attributes for management of unconstrained signals; synchronous, asynchronous, 
and multi-clock designs, resets and latches.

- `sby reference manual <https://yosyshq.readthedocs.io/projects/sby>`_
- ...TBD...

mcy
---

mcy is a new tool to help digital designers and project managers understand and 
improve testbench coverage. If you have a testbench, and it fails, you know you 
have a problem. But if it passes, you know nothing if you don’t know what your 
testbench is actually testing for.

- `mcy reference manual <https://yosyshq.readthedocs.io/projects/mcy>`_
- ...TBD...

eqy
---

eqy is an upcoming tool to provide Yosys-based equivalence checking for formal 
verification.

cxy
---

cxy is a high-performance simulation back-end for Yosys. It writes optimized C++ 
code that simulates the design. The generated code requires a driver program that
instantiates the design, toggles its clock, and interacts with its ports. cxy 
also supports replacing parts of the design with black boxes implemented in C++. 
