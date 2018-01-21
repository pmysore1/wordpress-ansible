#!/bin/bash

sudo su
cat id_rsa.pub >> ~/.ssh/authorized_keys
rm id_rsa.pub
exit 0


