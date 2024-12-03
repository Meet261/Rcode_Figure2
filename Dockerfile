# Use a base image with RStudio Server
FROM rocker/rstudio:4.3.1

# Set environment variables for RStudio Server
ENV PASSWORD=rstudio

# Install system dependencies required for R and Conda
RUN apt-get update && apt-get install -y \
    wget \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && apt-get clean

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p /opt/conda && \
    rm /tmp/miniconda.sh

# Add Conda to PATH
ENV PATH="/opt/conda/bin:$PATH"

# Copy the environment.yml file into the container
COPY environment.yml /tmp/environment.yml

# Create the Conda environment based on environment.yml
RUN conda env create -f /tmp/environment.yml && \
    conda clean -afy && \
    echo "source activate network_visualization" > ~/.bashrc

# Expose the RStudio Server port
EXPOSE 8787

# Set working directory
WORKDIR /home/rstudio

# Copy project files into the container
COPY . /home/rstudio

# Start RStudio Server
CMD ["/init"]
