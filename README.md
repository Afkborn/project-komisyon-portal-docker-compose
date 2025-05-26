Adliye Yönetim Sistemi 

Bu proje, Eskişehir Adliyesi personelinin işlemlerini kolaylaştırmak ve hızlandırmak amacıyla geliştirilmiş bir web uygulamasıdır.

## Proje Hakkında

Adliye Yönetim Sisteminin Docker ortamıdna çalışması için gerekli  yapılandırmaları içerir.


## Gereksinimler

- Docker ve Docker Compose
- Git

## Projeyi Başlatma
1. project-komisyon-portal reposunu klonlayın:
   ```bash
   git clone https://github.com/Afkborn/project-komisyon-portal.git
   ```
2. project-komisyon-portal-backend reposunu klonlayın:
   ```bash
   git clone https://github.com/Afkborn/project-komisyon-portal-backend.git
   ```
3. start.bat dosyasını çalıştırın:
   ```bash
   .\start.bat
   ```

## Sistem Mimarisi

Projede aşağıdaki servisler yer almaktadır:

- **Frontend**: React uygulaması (Port: 2626)
- **Backend**: API sunucusu (Port: 8080)
- **MongoDB**: Veritabanı (Port: 26026)
- **Redis**: Önbellek servisi (Port: 6379)
- **Backup**: Otomatik MongoDB yedekleme servisi

## Redis Entegrasyonu

Projenin düzgün çalışması için Redis servisi gerekmektedir. Docker Compose'da 6379 portunda çalışan bir Redis servisi başlatın. 


## Erişim Bilgileri

- Frontend: http://localhost:2626
- Backend API: http://localhost:8080/api
- MongoDB: mongodb://localhost:26026

## Notlar

- Frontend servisi 2626 portunda çalışır (80 port kullanımı yasaklandığı için)
- Backend servisi 8080 portunda çalışır
- MongoDB servisi 26026 portunda dışarıya açıktır
- Redis servisi 6379 portunda çalışır
- Mongo verileri "mongo-data" volume'ünde saklanır
- Backend logları "backend-logs" volume'ünde saklanır
- MongoDB yedekleri "mongo-backup" volume'ünde saklanır
- Redis verileri "redis-data" volume'ünde saklanır

