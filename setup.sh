#!/bin/bash
FISH_DIR="${HOME}/.config/fish"
if [[ -d "${FISH_DIR}" ]]
then
    echo "Removing ${FISH_DIR}..."
    rm -rf "${FISH_DIR}"
fi

mkdir -p ${FISH_DIR}

CURRENT_DIR="$(pwd)"

ln -s "${CURRENT_DIR}/config.fish" "${FISH_DIR}/config.fish"
ln -s "${CURRENT_DIR}/functions" "${FISH_DIR}/functions"
ln -s "${CURRENT_DIR}/conf.d" "${FISH_DIR}/conf.d"
