#!/bin/bash
cd "$(dirname "$0")" || exit 1
if ! commnad -v python3 >/dev/null 2>&1; then
	echo "python3 먼저 설치하시오." >&2
	exit 1
fi
exec python3 chat.py
