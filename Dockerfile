FROM freqtradeorg/freqtrade:stable

USER ftuser
# Install and execute
COPY --chown=ftuser:ftuser . /freqtrade/

RUN pip install --user --no-cache-dir "psycopg[binary]"

ENTRYPOINT ["freqtrade"]
# Default to trade mode
CMD [ "trade" ]
