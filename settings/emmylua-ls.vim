augroup vimlsp_settings_emmylua_ls
  au!
  LspRegisterServer {
      \ 'name': 'emmylua-ls',
      \ 'cmd': {server_info->lsp_settings#get('emmylua-ls', 'cmd', [lsp_settings#exec_path('emmylua-ls')])},
      \ 'root_uri':{server_info->lsp_settings#get('emmylua-ls', 'root_uri', lsp_settings#root_uri(g:lsp_settings_root_markers))},
      \ 'initialization_options': lsp_settings#get('emmylua-ls', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('emmylua-ls', 'whitelist', ['lua']),
      \ 'blacklist': lsp_settings#get('emmylua-ls', 'blacklist', []),
      \ 'config': lsp_settings#get('emmylua-ls', 'config', {}),
      \ 'workspace_config': lsp_settings#get('emmylua-ls', 'workspace_config', {}),
      \ }
augroup END
