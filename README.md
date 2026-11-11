About nvidia-cutlass-dsl-feedstock
==================================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/nvidia-cutlass-dsl-feedstock/blob/main/LICENSE.txt)


About nvidia-cutlass-dsl
------------------------

Home: https://docs.nvidia.com/cutlass/latest/

Package license: [LicenseRef-NVIDIA-End-User-License-Agreement](https://docs.nvidia.com/cutlass/latest/media/docs/pythonDSL/license.html)

Summary: A Python native interface for writing high-performance CUDA kernels based on core CUTLASS and CuTe concepts without any performance compromises.

Documentation: https://docs.nvidia.com/cutlass/latest/

A Python native interface for writing high-performance CUDA kernels based on
core CUTLASS and CuTe concepts without any performance compromises. This allows for
a much smoother learning curve, orders of magnitude faster compile times,
native integration with DL frameworks without writing glue code and much more
intuitive meta-programming that does not require deep C++ expertise.

This feedstock builds the Python package, the CUTLASS DSL runtime shared
library, and the development and static-library packages for building C/C++
against that runtime.


About libcute-dsl-runtime
-------------------------

Home: https://docs.nvidia.com/cutlass/latest/

Package license: [LicenseRef-NVIDIA-End-User-License-Agreement](https://docs.nvidia.com/cutlass/latest/media/docs/pythonDSL/license.html)

Summary: Runtime shared library for the CUTLASS DSL.

Documentation: https://docs.nvidia.com/cutlass/latest/

The shared library that GPU kernels JIT-compiled by the CUTLASS DSL load
at run time. It ships neither headers nor Python code, and is
pulled in as a dependency rather than installed directly: install
libcute-dsl-runtime-dev to build C/C++ against it, or nvidia-cutlass-dsl
to use it from Python.


About libcute-dsl-runtime-dev
-----------------------------

Home: https://docs.nvidia.com/cutlass/latest/

Package license: [LicenseRef-NVIDIA-End-User-License-Agreement](https://docs.nvidia.com/cutlass/latest/media/docs/pythonDSL/license.html)

Summary: Development files for building against the CUTLASS DSL runtime.

Documentation: https://docs.nvidia.com/cutlass/latest/

The C header and cross-compile link stubs needed to build C/C++ code
against libcute-dsl-runtime.


About libcute-dsl-runtime-static
--------------------------------

Home: https://docs.nvidia.com/cutlass/latest/

Package license: [LicenseRef-NVIDIA-End-User-License-Agreement](https://docs.nvidia.com/cutlass/latest/media/docs/pythonDSL/license.html)

Summary: Static library for the CUTLASS DSL CUDA dialect shim.

Documentation: https://docs.nvidia.com/cutlass/latest/

The CUDA dialect shim that DSL-generated code calls into, as a static
archive to link into your own binary


About nvidia-cutlass-dsl
------------------------

Home: https://docs.nvidia.com/cutlass/latest/

Package license: [LicenseRef-NVIDIA-End-User-License-Agreement](https://docs.nvidia.com/cutlass/latest/media/docs/pythonDSL/license.html)

Summary: A Python native interface for writing high-performance CUDA kernels based on core CUTLASS and CuTe concepts without any performance compromises.

Documentation: https://docs.nvidia.com/cutlass/latest/

A Python native interface for writing high-performance CUDA kernels based on
core CUTLASS and CuTe concepts without any performance compromises. This allows for
a much smoother learning curve, orders of magnitude faster compile times,
native integration with DL frameworks without writing glue code and much more
intuitive meta-programming that does not require deep C++ expertise.
It also pulls in libcute-dsl-runtime-dev and libcute-dsl-runtime-static,
so one environment covers both using the DSL from Python and building
C/C++ against the runtime. Install those two on their own for the
C/C++ use case without Python.


Current build status
====================


<table><tr>
    <td>GitHub Actions</td>
    <td>
      <a href="https://github.com/conda-forge/nvidia-cutlass-dsl-feedstock/actions/workflows/conda-build.yml">
        <img src="https://github.com/conda-forge/nvidia-cutlass-dsl-feedstock/actions/workflows/conda-build.yml/badge.svg?event=push&branch=main">
      </a>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libcute--dsl--runtime-green.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libcute-dsl-runtime.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libcute-dsl-runtime.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libcute-dsl-runtime.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libcute--dsl--runtime--dev-green.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-dev) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libcute-dsl-runtime-dev.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-dev) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libcute-dsl-runtime-dev.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-dev) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libcute-dsl-runtime-dev.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-dev) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libcute--dsl--runtime--static-green.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-static) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libcute-dsl-runtime-static.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-static) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libcute-dsl-runtime-static.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-static) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libcute-dsl-runtime-static.svg)](https://anaconda.org/conda-forge/libcute-dsl-runtime-static) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-nvidia--cutlass--dsl-green.svg)](https://anaconda.org/conda-forge/nvidia-cutlass-dsl) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/nvidia-cutlass-dsl.svg)](https://anaconda.org/conda-forge/nvidia-cutlass-dsl) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/nvidia-cutlass-dsl.svg)](https://anaconda.org/conda-forge/nvidia-cutlass-dsl) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/nvidia-cutlass-dsl.svg)](https://anaconda.org/conda-forge/nvidia-cutlass-dsl) |

Installing nvidia-cutlass-dsl
=============================

Installing `nvidia-cutlass-dsl` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

How to use
----------

<details>
<summary>With conda</summary>

```
conda install libcute-dsl-runtime libcute-dsl-runtime-dev libcute-dsl-runtime-static nvidia-cutlass-dsl
```

</details>

<details>
<summary>With mamba</summary>

```
mamba install libcute-dsl-runtime libcute-dsl-runtime-dev libcute-dsl-runtime-static nvidia-cutlass-dsl
```

</details>

<details>
<summary>With pixi</summary>

```
# for adding to your local project
pixi add libcute-dsl-runtime libcute-dsl-runtime-dev libcute-dsl-runtime-static nvidia-cutlass-dsl
# for installing globally
pixi global install libcute-dsl-runtime libcute-dsl-runtime-dev libcute-dsl-runtime-static nvidia-cutlass-dsl
```

</details>

Search package versions
-----------------------

It is possible to list all of the versions of `libcute-dsl-runtime` available on your platform:

<details>
<summary>With conda</summary>

```
conda search libcute-dsl-runtime --channel conda-forge
```

</details>

<details>
<summary>With mamba</summary>

```
mamba search libcute-dsl-runtime --channel conda-forge
```

</details>

<details>
<summary>With pixi</summary>

```
pixi search libcute-dsl-runtime --channel conda-forge
```

</details>

<details>
<summary>With mamba repoquery, which may provide more information</summary>

```
# Search all versions available on your platform:
mamba repoquery search libcute-dsl-runtime --channel conda-forge

# List packages depending on `libcute-dsl-runtime`:
mamba repoquery whoneeds libcute-dsl-runtime --channel conda-forge

# List dependencies of `libcute-dsl-runtime`:
mamba repoquery depends libcute-dsl-runtime --channel conda-forge
```

</details>



About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/) and [GitHub](https://github.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance,
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information, please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating nvidia-cutlass-dsl-feedstock
=====================================

If you would like to improve the nvidia-cutlass-dsl recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/nvidia-cutlass-dsl-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@conda-forge/cuda](https://github.com/orgs/conda-forge/teams/cuda/)

