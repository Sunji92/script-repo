#!/usr/bin/env bash

function on_error () {
	echo "error found in : $(1)" > &1
}

trap on_error ERR

ls /test 2>&1
ls /opt 2>&1


