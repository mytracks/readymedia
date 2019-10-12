#!/bin/sh

echo "port=${TCP_PORT}" >> /etc/minidlna.conf
echo "friendly_name=${FRIENDLY_NAME}" >> /etc/minidlna.conf
echo "serial=${SERIAL}" >> /etc/minidlna.conf

# Video
if [[ ! -z "${VIDEO_DIR1}" ]]; then
  echo "media_dir=V,${VIDEO_DIR1}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR2}" ]]; then
  echo "media_dir=V,${VIDEO_DIR2}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR3}" ]]; then
  echo "media_dir=V,${VIDEO_DIR3}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR4}" ]]; then
  echo "media_dir=V,${VIDEO_DIR4}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR5}" ]]; then
  echo "media_dir=V,${VIDEO_DIR5}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR6}" ]]; then
  echo "media_dir=V,${VIDEO_DIR6}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR7}" ]]; then
  echo "media_dir=V,${VIDEO_DIR7}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR8}" ]]; then
  echo "media_dir=V,${VIDEO_DIR8}" >> /etc/minidlna.conf
fi

if [[ ! -z "${VIDEO_DIR9}" ]]; then
  echo "media_dir=V,${VIDEO_DIR9}" >> /etc/minidlna.conf
fi

# Audio
if [[ ! -z "${AUDIO_DIR1}" ]]; then
  echo "media_dir=A,${AUDIO_DIR1}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR2}" ]]; then
  echo "media_dir=A,${AUDIO_DIR2}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR3}" ]]; then
  echo "media_dir=A,${AUDIO_DIR3}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR4}" ]]; then
  echo "media_dir=A,${AUDIO_DIR4}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR5}" ]]; then
  echo "media_dir=A,${AUDIO_DIR5}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR6}" ]]; then
  echo "media_dir=A,${AUDIO_DIR6}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR7}" ]]; then
  echo "media_dir=A,${AUDIO_DIR7}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR8}" ]]; then
  echo "media_dir=A,${AUDIO_DIR8}" >> /etc/minidlna.conf
fi

if [[ ! -z "${AUDIO_DIR9}" ]]; then
  echo "media_dir=A,${AUDIO_DIR9}" >> /etc/minidlna.conf
fi

# Pictures
if [[ ! -z "${PICTURES_DIR1}" ]]; then
  echo "media_dir=P,${PICTURES_DIR1}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR2}" ]]; then
  echo "media_dir=P,${PICTURES_DIR2}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR3}" ]]; then
  echo "media_dir=P,${PICTURES_DIR3}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR4}" ]]; then
  echo "media_dir=P,${PICTURES_DIR4}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR5}" ]]; then
  echo "media_dir=P,${PICTURES_DIR5}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR6}" ]]; then
  echo "media_dir=P,${PICTURES_DIR6}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR7}" ]]; then
  echo "media_dir=P,${PICTURES_DIR7}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR8}" ]]; then
  echo "media_dir=P,${PICTURES_DIR8}" >> /etc/minidlna.conf
fi

if [[ ! -z "${PICTURES_DIR9}" ]]; then
  echo "media_dir=P,${PICTURES_DIR9}" >> /etc/minidlna.conf
fi

/usr/sbin/minidlnad -d -R
