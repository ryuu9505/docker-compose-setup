#!/bin/bash

echo "🧨 Cleaning PostgreSQL-related Docker volumes..."

# volume 이름에 'volume-postgres'가 포함된 모든 볼륨을 삭제
docker volume ls -q | grep 'volume-postgres' | xargs -r docker volume rm

echo "✅ Volume cleanup complete."

# 현재 남은 볼륨 출력
docker volume ls
