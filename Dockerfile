FROM python:3.12-slim

WORKDIR /app

COPY *.whl /tmp/

RUN WHEEL=$(ls -t /tmp/*.whl | head -n 1) && \
    echo "Installing: $WHEEL" && \
    pip install --no-cache-dir "$WHEEL" && \
    rm -f /tmp/*.whl

CMD ["chunkhound", "--help"]
