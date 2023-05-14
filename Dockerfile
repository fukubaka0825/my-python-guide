FROM python:3.10.2-bullseye

COPY . /opt/

RUN useradd -ms /bin/bash user
RUN chown -R user /opt

RUN pip install pip -U --no-cache && \
    pip install --no-cache -r /opt/requirements.txt

USER user

WORKDIR /opt

ENV PYTHONPATH="/opt:$PYTHONPATH"

ENTRYPOINT ["xxxxxxxxxx"]
