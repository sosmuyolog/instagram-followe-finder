#!/bin/bash
# deploy.sh - GitHub’a otomatik yükleme

REPO_URL="https://github.com/your-username/instagram-follower-finder.git"
PROJECT_NAME="instagram-follower-finder"

# Proje klasörünü kontrol et
if [ ! -d "\$PROJECT_NAME" ]; then
  echo "Proje klasörü bulunamadı: \$PROJECT_NAME"
  exit 1
fi

cd "\$PROJECT_NAME"

# Git başlat
git init
git add .
git commit -m "Initial commit: Instagram follower finder app"

# GitHub’a uzak bağlantı ekle
git remote add origin "\$REPO_URL"

# Branch’i ayarla (main)
git branch -M main

# Gönder
git push -u origin main

echo "✅ Proje başarıyla GitHub’a yüklendi: \$REPO_URL"
