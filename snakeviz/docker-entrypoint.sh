#!/bin/ash

pip install snakeviz

snakeviz --hostname=0.0.0.0 --port=${SNAKEVIZ_PORT} --server ${SNAKEVIZ_PROFILE}
