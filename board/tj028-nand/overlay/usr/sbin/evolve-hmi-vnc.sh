#!/bin/sh
export QT_QPA_PLATFORM=eglfs
export QT_QPA_EGLFS_INTEGRATION=eglfs_kms
export QT_QPA_EGLFS_ALWAYS_SET_MODE=1
export QT_QPA_EGLFS_KMS_ATOMIC=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_QPA_EGLFS_KMS_CONFIG=/opt/evolve-hmi/eglfs-tj028.conf

/opt/evolve-hmi/bin/evolve-hmi -platform vnc:size=800x480
