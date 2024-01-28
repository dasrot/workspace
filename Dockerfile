FROM python:3.9

# Add requirements file in the container
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Add source code in the container
COPY hello.py ./hello.py

# Define container entry point (could also work with CMD python main.py)
ENTRYPOINT ["python", "hello.py"]