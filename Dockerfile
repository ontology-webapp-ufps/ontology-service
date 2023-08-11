FROM 031875911391.dkr.ecr.us-east-1.amazonaws.com/base-image-slim:latest

COPY src/ ./src/
RUN python -m pip install --upgrade pip
WORKDIR /src
RUN pip install -r ./requirements.txt
RUN python3 -m nltk.downloader all     
RUN python3 -m nltk.downloader -d /usr/local/share/nltk_data all    


# You can overwrite command in `serverless.yml` template
CMD ["app"]