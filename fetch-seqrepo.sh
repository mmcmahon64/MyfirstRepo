#!/bin/sh

if [ "x$SEQREPO_DATA_DIR" = "x" ]; then
    SEQREPO_DATA_DIR="/srv/seqrepo"
    export SEQREPO_DATA_DIR
fi

if [ "x$SEQREPO_DATA_RELEASE" = "x" ]; then
    SEQREPO_DATA_RELEASE="20161213"
    export SEQREPO_DATA_RELEASE
fi

echo "try to download version $SEQREPO_DATA_RELEASE to $SEQREPO_DATA_DIR"
seqrepo -r $SEQREPO_DATA_DIR pull -i $SEQREPO_DATA_RELEASE
echo "`date`: sequence downloading finished"

while true; do
    sleep 30;
done

exit 0

###---eof---###
