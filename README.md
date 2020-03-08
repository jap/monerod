# Monero in Docker
This is a no-thrills monero in docker image, use it to run a node.

By default, this will not do any mining.
You should run this with a persistent volume mounted under
``/home/monero``, where the blockchains will be kept.

You may want to download a full chain first from https://getmonero.org
and import it, as syncing with the network might take a long time.
