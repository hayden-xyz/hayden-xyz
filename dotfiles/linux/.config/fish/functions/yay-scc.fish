function yay-scc --wraps='sudo find /var/cache/pacman/pkg/ -mindepth 1 -type d -empty -delete && yay -Scc' --wraps='cd /var/cache/pacman/pkg/ && ls && sudo find /var/cache/pacman/pkg/ -mindepth 1 -type d -empty -delete && cd && yay -Scc' --description 'alias yay-scc=cd /var/cache/pacman/pkg/ && ls && sudo find /var/cache/pacman/pkg/ -mindepth 1 -type d -empty -delete && cd && yay -Scc'
    cd /var/cache/pacman/pkg/ && ls && sudo find /var/cache/pacman/pkg/ -mindepth 1 -type d -empty -delete && cd && yay -Scc $argv
end
