export IMG_NAME=rsyslog
export TAG=0.1
export REPO=garybowers

make build
make tag
make push
make deploy
