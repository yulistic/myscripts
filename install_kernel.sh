#!/bin/bash
make -j && sudo make INSTALL_MOD_STRIP=1 modules_install && sudo make install
