import os
from ultralytics.utils.downloads import download
from pathlib import Path

# Define the download directory
download_dir = Path(r"C:\Users\sarit\Downloads\SmartCityPose")

# Ensure the directory exists
download_dir.mkdir(parents=True, exist_ok=True)

# Download labels
labels_url = 'https://github.com/ultralytics/assets/releases/download/v0.0.0/coco2017labels-pose.zip'
download([labels_url], dir=download_dir)

# Download data
data_urls = [
    'http://images.cocodataset.org/zips/train2017.zip',  # 19G, 118k images
    'http://images.cocodataset.org/zips/val2017.zip',    # 1G, 5k images
    'http://images.cocodataset.org/zips/test2017.zip'    # 7G, 41k images (optional)
]

# Download images to the 'images' folder within the specified directory
images_dir = download_dir / 'images'
images_dir.mkdir(parents=True, exist_ok=True)
download(data_urls, dir=images_dir, threads=3)

print("Download completed successfully!")
