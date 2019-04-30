if status --is-interactive
    alias v=nvim
    alias N='nautilus --no-desktop &'
    alias t='tree --dirsfirst'
    set -x EDITOR nvim
    fish_vi_key_bindings

    function fish_user_key_bindings
        for mode in insert default visual
            bind -M $mode \cf forward-char
        end
    end
end
