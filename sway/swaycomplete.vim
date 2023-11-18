fun! swaycomplete#Complete(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    " find commands matching with "a:base"
    let keywords = [
                \#{
                \word: "bar",
                \kind: "CMD",
                \menu: "[<bar-id>] <bar-subcommands...>]",
                \info: "For details on bar subcommands, see sway-bar(5).",
                \},
                \#{
                \word: "default_orientation",
                \kind: "CMD",
                \menu: "horizontal|vertical|auto",
                \info: "Sets the default container layout for tiled containers.",
                \},
                \#{
                \word: "include",
                \kind: "CMD",
                \menu: "<path>",
                \info: "Includes another file from path. path can be either a full path or a path relative to the parent config, and expands shell syntax (see wordexp(3) for details). The same include file can only be included once; subsequent attempts will be ignored.",
                \},
                \#{
                \word: "swaybg_command",
                \kind: "CMD",
                \menu: "<command>",
                \info: "Executes custom background command. Default is swaybg. Refer to sway-output(5) for more information.\n\nIt can be disabled by setting the command to a single dash: swaybg_command -",
                \},
                \#{
                \word: "swaynag_command",
                \kind: "CMD",
                \menu: "<command>",
                \info: "Executes custom command for swaynag. Default is swaynag. Additional arguments may be appended to the end. This should only be used to either direct sway to call swaynag from a custom path or to provide additional arguments. This should be placed at the top of the config for the best results.\n\nIt can be disabled by setting the command to a single dash: swaynag_command -",
                \},
                \#{
                \word: "workspace_layout",
                \kind: "CMD",
                \menu: "default|stacking|tabbed",
                \info: "Specifies the initial layout for new containers in an empty workspace.",
                \},
                \#{
                \word: "xwayland",
                \kind: "CMD",
                \menu: "enable|disable|force",
                \info :"Enables or disables Xwayland support, which allows X11 applications to be used. enable will lazily load Xwayland so Xwayland will not be launched until the first client attempts to connect. In some cases, such as slower machines, it may be desirable to have Xwayland started immediately by using force instead of enable.\n\nThe following commands cannot be used directly in the configuration file. They are expected to be used with bindsym or at runtime through swaymsg(1).",
                \},
                \]
    return keywords
" border none|normal|csd|pixel [<n>]
"     Set border style for focused window. normal includes a border of thickness n and a title bar. pixel is a border without title bar n pixels thick. Default is normal with border thickness 2. csd is short for client-side-decorations, which
"     allows the client to draw its own decorations.
" 
" border toggle
"     Cycles through the available border styles.
" 
" exit
"     Exit sway and end your Wayland session.
" 
" floating enable|disable|toggle
"     Make focused view floating, non-floating, or the opposite of what it is now.
" 
" <criteria> focus
"     Moves focus to the container that matches the specified criteria.
" 
" focus up|right|down|left
"     Moves focus to the next container in the specified direction.
" 
" focus prev|next [sibling]
"     Moves focus to the previous or next container in the current layout. By default, the last active child of the newly focused container will be focused. The sibling option indicates not to immediately focus a child of the container.
" 
" focus child
"     Moves focus to the last-focused child of the focused container.
" 
" focus parent
"     Moves focus to the parent of the focused container.
" 
" focus output up|right|down|left
"     Moves focus to the next output in the specified direction.
" 
    let res = []
    for m in split("bar default_orientation include swaybg_command swaynag_command")
      if m =~ '^' . a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfun

set omnifunc=swaycomplete#Complete
