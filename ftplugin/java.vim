let s:lombok_path = $HOME . '/lsp/lombok.jar'
let $JAVA_TOOL_OPTIONS = '-javaagent:'. s:lombok_path
let s:java_lsp_server = {'cmd': '/bin/false'}
if executable('java') && filereadable(expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.700.v20200207-2156.jar'))
    let s:java_lsp_server = {
        \ 'name': 'eclipse.jdt.ls',
        \ 'cmd': [
        \     'java',
        \     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        \     '-Dosgi.bundles.defaultStartLevel=4',
        \     '-Declipse.product=org.eclipse.jdt.ls.core.product',
        \     '-Dlog.level=ALL',
        \     '-noverify',
        \     '-Dfile.encoding=UTF-8',
        \     '-Xmx1G',
        \     '-jar',
        \     expand('~/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_1.5.700.v20200207-2156.jar'),
        \     '-configuration',
        \     expand('~/lsp/eclipse.jdt.ls/config_linux'),
        \     '-data',
        \     getcwd()
        \ ],
        \ 'whitelist': ['java'],
        \ }
endif

"let g:LanguageClient_serverCommands = {
"    \ 'java': s:java_lsp_server['cmd'],
"    \ }

