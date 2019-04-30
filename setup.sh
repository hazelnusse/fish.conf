#!/bin/bash
FISH_DIR="${HOME}/.config/fish"
if [[ -d "${FISH_DIR}" ]]
then
    echo "Removing ${FISH_DIR}..."
    rm -rf "${FISH_DIR}"
fi

mkdir -p "${FISH_DIR}/functions"

CURRENT_DIR="$(pwd)"

ln -s "${CURRENT_DIR}/config.fish" "${FISH_DIR}/config.fish"

for f in ${CURRENT_DIR}/functions/*.fish
do
    ln -s "${f}" "${FISH_DIR}/functions/"
done
