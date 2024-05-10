# Use an official Python runtime as the base image
FROM python:3.12.3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install application dependencies
RUN pip install --no-cache-dir pyarrow==15.0.2
RUN pip install --no-cache-dir pandas==2.2.1
RUN pip install --no-cache-dir ipykernel==6.29.3
RUN pip install --no-cache-dir lancedb==0.6.12
RUN pip install --no-cache-dir datasets==2.19.1
RUN pip install --no-cache-dir transformers==4.40.2
RUN pip3 install --no-cache-dir notebook jupyterlab

# Copy the rest of the application code
COPY . .

EXPOSE 8888

# Command to run the application
CMD ["python", "your_script.py"]

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
