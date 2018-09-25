docker image build -t webapp1:latest --compress --rm . 
docker image build -t webapp1:alpine --compress --rm . -f Dockerfile.alpine