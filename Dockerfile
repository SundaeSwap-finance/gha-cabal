FROM sundaeswap/plutus-dev:latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
