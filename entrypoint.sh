#!/bin/sh

SSH_USER="$1"
SSH_HOST="$2"
SSH_PORT="$3"
SSH_KEY="$4"
SSH_COMMAND="$5"

echo "$SSH_KEY" > /tmp/ssh_key && chmod 600 /tmp/ssh_key
ssh -o StrictHostKeyChecking=no -i /tmp/ssh_key -p "$SSH_PORT" "$SSH_USER"@"$SSH_HOST" $SSH_COMMAND
rm -rf /tmp/ssh_key
