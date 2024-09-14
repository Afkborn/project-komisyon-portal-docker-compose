#!/bin/sh
# backup.sh

# Yedeğin alınacağı tarih ve saat formatı
BACKUP_DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Yedeklerin kaydedileceği klasör (volume ile eşlenmeli)
BACKUP_DIR="/backup"

# MongoDB dump komutunu çalıştırıyoruz
mongodump --host mongo --out $BACKUP_DIR/mongo-backup-$BACKUP_DATE

# Eski yedekleri silmek için örneğin 7 günden eski dosyaları temizleyebiliriz
find $BACKUP_DIR -type d -mtime +7 -exec rm -rf {} \;
