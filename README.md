# Supporting Reproducibility with CodeInspector

This repository is part of an effort under the **CodeInspector Project** to create Binder-ready repositories from open-source OSF projects. CodeInspector aims to enhance research reproducibility by providing browser-based environments that automate the evaluation of statistical codes, particularly those written in R. 
This contains the Original R codefile data and resources from [Ongoing and future challenges of the network approach to psychopathology: From theoretical conjectures to clinical translations](https://osf.io/3kem6/).

Click the button below to launch this repository in Binder with an Jupyter notebook + R:

[![Binder](https://mybinder.org/badge_logo.svg)](https://notebooks.gesis.org/binder/v2/gh/Meet261/Rcode_Figure2/HEAD)

Click the button below to launch this repository in Binder with an RStudio interface:

[![Binder](https://mybinder.org/badge_logo.svg)](https://notebooks.gesis.org/binder/v2/gh/Meet261/Rcode_Figure2/HEAD?urlpath=rstudio)

## Contents

- **`Rcode_Figure2.R`**: Contains the R code to create and visualize adjacency matrices and networks.
- **`environment.yml`**: Specifies the R environment and required packages.
- **`postBuild`**: Installs additional R packages, including the `FlowR` library.

---

## Creating a Docker Image Using `repo2docker`

To create a Docker image for this repository using `repo2docker`, follow these steps:

1. Install `repo2docker` by following the [installation guide](https://repo2docker.readthedocs.io/en/latest/install.html).
   
2. Clone this repository:
   ```bash
   git clone https://github.com/Meet261/Rcode_Figure2.git
   cd Rcode_Figure2
3. Build a Docker container and launch it using repo2docker:
    ```bash
   jupyter-repo2docker https://github.com/Meet261/Rcode_Figure2
    
---

### About CodeInspector

CodeInspector aims to enhance research reproducibility by providing browser-based environments that automate the evaluation of statistical codes, particularly those written in R. 

The project supports reproducibility through the following goals:

1. **Dependency Resolution**: Automatically identifies and resolves all package and data dependencies.
2. **Containerization**: Creates Docker images to facilitate browser-based code execution.
3. **Evaluation**: Ensures code reproducibility by verifying dependencies, executable analysis, and original results replication.

CodeInspector adheres to FAIR principles (Findable, Accessible, Interoperable, Reusable) to streamline statistical code reproducibility for researchers.

## Acknowledgments

We acknowledge the contributions of the authors of the original project. Please refer to the [Ongoing and future challenges of the network approach to psychopathology: From theoretical conjectures to clinical translations](https://osf.io/3kem6/) for more details.
