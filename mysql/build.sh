docker build . -t 192.168.56.4:9999/mysql:$(date +%Y%m%d-%H%M) && docker push 192.168.56.4:9999/mysql:$(date +%Y%m%d-%H%M)
