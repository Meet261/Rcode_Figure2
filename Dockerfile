# Use the Rocker image with RStudio Server
FROM rocker/rstudio:4.3.1

# Set environment variables for RStudio Server
ENV PASSWORD=rstudio

# Install Micromamba
RUN apt-get update && apt-get install -y curl && \
    curl -L https://micromamba.snakepit.net/api/micromamba/linux-aarch64/latest -o /usr/local/bin/micromamba && \
    chmod +x /usr/local/bin/micromamba && \
    micromamba shell init --shell=bash

# Add Micromamba to PATH
ENV PATH="/opt/conda/bin:/usr/local/bin:$PATH"

# Copy environment.yml into the container
COPY environment.yml /tmp/environment.yml

# Create Conda environment using Micromamba
RUN micromamba create --yes --file /tmp/environment.yml --name network_visualization && \
    micromamba clean --all --yes

# Activate the environment by default
ENV CONDA_DEFAULT_ENV=network_visualization
ENV PATH="/opt/conda/envs/network_visualization/bin:$PATH"

# Expose RStudio Server port
EXPOSE 8787

# Copy project files into the container
COPY . /home/rstudio

# Set the working directory
WORKDIR /home/rstudio

# Start RStudio Server
CMD ["/init"]
