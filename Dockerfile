FROM ubuntu:19.04
RUN apt-get update && apt-get install -y wget python gcc zlib1g-dev tabix build-essential grabix bedtools git python-pip sqlite3
RUN pip install pybedtools
RUN wget https://github.com/arq5x/gemini/raw/master/gemini/scripts/gemini_install.py
RUN python gemini_install.py /usr/local /usr/local/share/gemini
