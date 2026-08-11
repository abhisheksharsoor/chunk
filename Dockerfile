FROM python:3.12-slim

WORKDIR /app

COPY $WORKSPACE/dist/*.whl /tmp/

RUN pip install --no-cache-dir /tmp/*.whl \
    && rm -f /tmp/*.whl

CMD ["chunkhound", "--help"]
