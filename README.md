# smartpose
# Running the Project

Follow these steps to run the project:

1. **Create a New Project Folder in VSCode**
   - Open VSCode and create a new folder for your project.

2. **Start Docker Engine**
   - Ensure that Docker is running on your system. If Docker is not installed, follow the [Docker installation guide](https://docs.docker.com/get-docker/) to install it.

3. **Create a Dockerfile**
   - In your project folder, create a file named `Dockerfile` and add the following contents from the file [Dockerfile](https://github.com/sarithdm/smartpose/blob/main/Dockerfile):

     ```dockerfile
     # Dockerfile contents from the file
     ```

4. **Create a .dockerignore File**
   - Create a `.dockerignore` file in the root of your project directory. Add the necessary entries to ignore files that shouldn't be included in the Docker image. Get contents from the file [.dockerignore](https://github.com/sarithdm/smartpose/blob/main/.dockerignore):

    ```.dockerignore
     # .dockerignore contents from the file
     ```

5. **Build Docker Image**
   - In your terminal, navigate to the project folder and run the following command to build the Docker image:

     ```bash
     docker build -t yolov8-coco-pose-cpu .
     ```

   - **Note**: If you have a GPU available, make necessary changes to the Dockerfile to leverage GPU support.

6. **Run the Docker Container**
   - Once the image is built, run the Docker container with the following command:

     ```bash
     docker run -it --rm yolov8-coco-pose-cpu
     ```

   - This will start the container and allow you to interact with the project.

# Setting Up CVAT for Image Annotation

Follow these steps to set up CVAT for annotating images:

1. **Install Docker**
   - Follow the [Docker installation guide](https://docs.docker.com/engine/install/) to install Docker on your system.
   - Ensure Docker Engine is running after installation.

2. **Install Git**
   - Install Git by following the instructions at [Git Downloads](https://git-scm.com/downloads).

3. **Clone the CVAT Repository**
   - In your terminal, run the following command to clone the CVAT repository:

     ```bash
     git clone https://github.com/openvinotoolkit/cvat
     ```

   - Change into the cloned directory:

     ```bash
     cd cvat
     ```

4. **Start CVAT with Docker Compose**
   - Run the following command to start the CVAT services:

     ```bash
     docker-compose up -d
     ```

   - This will start CVAT in the background using Docker Compose.

5. **Access CVAT in Your Browser**
   - Once the services are up and running, open your browser and visit:

     ```
     http://localhost:8080
     ```

6. **Create a New Account and Login**
   - Follow the on-screen instructions to create a new user account.
   - Once registered, log in with your credentials.

7. **Annotate Images and Manage Files**
   - After logging in, you can start annotating your images in CVAT.
   - Ensure that your images and labels are stored in the respective folders in the **Google Drive Link** shared with you.


