# -----------------------------------------------------------------------------
# A wrapper for sudo that integrates better with the fish shell.
# Copyright (C) 2018,2021 eth-p
# Copyright (C) 2025 jmartindf (if block)
# -----------------------------------------------------------------------------
function sudo
    set -l real_sudo (command -s sudo)
    if contains -- -i $argv
        $real_sudo $argv
    else
        env SHELL=(which fish) $real_sudo -sE $argv
    end
end
