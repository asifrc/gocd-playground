#/bin/bash
docker run -v $(pwd)/config-dir:/etc/go -p 8153:8153 gocd/gocd-dev
