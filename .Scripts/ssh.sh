#!/bin/bash

ssh=$($SSH_CONNECTION | awk '{print $3}')

echo -n "$ssh"
