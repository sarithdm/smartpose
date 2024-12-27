# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install system dependencies for image processing and wget
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies (PyTorch CPU version and YOLO)
RUN pip install --upgrade pip
RUN pip install torch torchvision torchaudio  # CPU version of PyTorch
RUN pip install ultralytics opencv-python pillow numpy matplotlib pyyaml requests

# Optionally: Add a script to download the COCO dataset (or mount it as a volume)
# Example download (modify as necessary)
# RUN wget http://images.cocodataset.org/zips/train2017.zip -P /app/datasets/ && \
#     unzip /app/datasets/train2017.zip -d /app/datasets/

# Copy your project files into the container
COPY . /app

# Expose port (for any web interfaces, optional)
EXPOSE 8000

# Command to run the training (adjust path for coco-pose.yaml)
CMD ["yolo", "train", "data=coco-pose.yaml", "--device", "cpu"]
