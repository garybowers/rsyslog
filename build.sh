export IMG_NAME=rsyslog
export TAG=0.4
export REPO=garybowers

make build
make tag
make push
make deploy
