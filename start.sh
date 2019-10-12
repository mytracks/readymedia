#!/bin/sh

echo "port=${TCP_PORT}" >> /etc/minidlna.conf
echo "friendly_name=${FRIENDLY_NAME}" >> /etc/minidlna.conf
echo "serial=${SERIAL}" >> /etc/minidlna.conf

if [[ -z "${VIDEO_DIR1}" ]]; then
  echo "media_dir=V,${VIDEO_DIR1}" >> /etc/minidlna.conf
fi

if [[ -z "${VIDEO_DIR2}" ]]; then
  echo "media_dir=V,${VIDEO_DIR2}" >> /etc/minidlna.conf
fi

if [[ -z "${AUDIO_DIR1}" ]]; then
  echo "media_dir=A,${AUDIO_DIR1}" >> /etc/minidlna.conf
fi

if [[ -z "${AUDIO_DIR2}" ]]; then
  echo "media_dir=A,${AUDIO_DIR2}" >> /etc/minidlna.conf
fi

if [[ -z "${PICTURES_DIR1}" ]]; then
  echo "media_dir=P,${PICTURES_DIR1}" >> /etc/minidlna.conf
fi

if [[ -z "${PICTURES_DIR2}" ]]; then
  echo "media_dir=P,${PICTURES_DIR2}" >> /etc/minidlna.conf
fi

/usr/sbin/minidlnad -d -R
