#!/bin/sh

extend_ld_path () {
	export LD_LIBRARY_PATH="$(find $1 -type d | tr '\n' ':')$LD_LIBRARY_PATH"
}

extend_ld_path /app/lib
extend_ld_path /app/extra/lib

exec /app/bin/vlc
