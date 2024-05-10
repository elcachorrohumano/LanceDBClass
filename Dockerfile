# Use the official Python base image with version 3.12.3
FROM python:3.12.3

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8888 (default Jupyter notebook port)
EXPOSE 8888

# Copy the Jupyter notebook file into the container
COPY class.ipynb .

# Start Jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
