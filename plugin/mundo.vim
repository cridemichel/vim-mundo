" ============================================================================
" File:        mundo.vim
" Description: vim global plugin to visualize your undo tree
" Maintainer:  Hyeon Kim <simnalamburt@gmail.com>
" License:     GPLv2+ -- look it up.
" Notes:       Much of this code was thiefed from Mercurial, and the rest was
"              heavily inspired by scratch.vim and histwin.vim.
"
" ============================================================================

if !exists('g:mundo_debug') && (exists('g:mundo_disable') &&
            \ g:mundo_disable == 1 || exists('loaded_mundo') || &cp)"{{{
    finish
endif

let loaded_mundo = 1"}}}

" Default option values{{{

call mundo#util#SetOptionDefault(
            \ 'g:mundo_auto_preview', 1,
            \ 'g:gundo_auto_preview')

call mundo#util#SetOptionDefault('g:mundo_auto_preview_delay', 250)

call mundo#util#SetOptionDefault(
            \ 'g:mundo_close_on_revert', 0,
            \ 'g:gundo_close_on_revert')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_first_visible_line', 0,
            \ 'g:gundo_first_visible_line')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_help', 0,
            \ 'g:gundo_help')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_inline_undo', 0,
            \ 'g:gundo_inline_undo')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_last_visible_line', 0,
            \ 'g:gundo_last_visible_line')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_map_move_newer', 'k',
            \ 'g:gundo_map_move_newer')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_map_move_older', 'j',
            \ 'g:gundo_map_move_older')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_mirror_graph', 0,
            \ 'g:gundo_mirror_graph')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_playback_delay', 60,
            \ 'g:gundo_playback_delay')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_prefer_python3', 0,
            \ 'g:gundo_prefer_python3')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_preview_bottom', 0,
            \ 'g:gundo_preview_bottom')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_preview_height', 15,
            \ 'g:gundo_preview_height')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_python_path_setup', 0,
            \ 'g:gundo_python_path_setup')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_return_on_revert', 1,
            \ 'g:gundo_return_on_revert')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_right', 0,
            \ 'g:gundo_right')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_verbose_graph', 1,
            \ 'g:gundo_verbose_graph')

call mundo#util#SetOptionDefault(
            \ 'g:mundo_width', 45,
            \ 'g:gundo_width')

"}}}

"{{{ Create commands

command! -nargs=0 MundoToggle call mundo#MundoToggle()
command! -nargs=0 MundoShow call mundo#MundoShow()
command! -nargs=0 MundoHide call mundo#MundoHide()
command! -nargs=0 MundoRenderGraph call mundo#MundoRenderGraph()
command! -nargs=0 GundoToggle call mundo#util#MundoToggle()
command! -nargs=0 GundoShow call mundo#util#MundoShow()
command! -nargs=0 GundoHide call mundo#util#MundoHide()
command! -nargs=0 GundoRenderGraph call mundo#util#MundoRenderGraph()

"}}}
