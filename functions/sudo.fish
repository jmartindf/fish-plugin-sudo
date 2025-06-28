# -----------------------------------------------------------------------------
# A wrapper for sudo that integrates better with the fish shell.
# Copyright (C) 2018,2021 eth-p
# Copyright (C) 2025 jmartindf (if block)
# -----------------------------------------------------------------------------
function sudo
    if contains -- -i $argv
        command sudo $argv
    else
        env SHELL=(which fish) command sudo -sE $argv
    end
end
