#!/bin/bash
cd "$(dirname "$0")" || exit 1
export WEB_PORT="8070"
exec ./start.sh
