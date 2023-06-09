#!/bin/sh

if test -f /etc/debian_version; then
    apt-get autoremove -y --purge
fi

# Clean up any build cache for rust.
rm -rf /.cargo

if test -x /usr/bin/ccache; then
    ccache --show-stats
fi
