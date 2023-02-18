" inside next parentheses                                                                                                                         
onoremap in( :<c-u>call <SID>Parentheses("i", "(", "f")<cr>
onoremap in{ :<c-u>call <SID>Parentheses("i", "{", "f")<cr>
onoremap in[ :<c-u>call <SID>Parentheses("i", "[", "f")<cr>
onoremap in< :<c-u>call <SID>Parentheses("i", "<", "f")<cr>
" inside last parentheses
onoremap il( :<c-u>call <SID>Parentheses("i", "(", "F")<cr>
onoremap il{ :<c-u>call <SID>Parentheses("i", "{", "F")<cr>
onoremap il[ :<c-u>call <SID>Parentheses("i", "[", "F")<cr>
onoremap il< :<c-u>call <SID>Parentheses("i", "<", "F")<cr>
" around next parentheses
onoremap an( :<c-u>call <SID>Parentheses("a", "(", "f")<cr>
onoremap an{ :<c-u>call <SID>Parentheses("a", "{", "f")<cr>
onoremap an[ :<c-u>call <SID>Parentheses("a", "[", "f")<cr>
onoremap an< :<c-u>call <SID>Parentheses("a", "<", "f")<cr>
" around last parentheses
onoremap al( :<c-u>call <SID>Parentheses("a", "(", "F")<cr>
onoremap al{ :<c-u>call <SID>Parentheses("a", "{", "F")<cr>
onoremap al[ :<c-u>call <SID>Parentheses("a", "[", "F")<cr>
onoremap al< :<c-u>call <SID>Parentheses("a", "<", "F")<cr>

let g:parentheses = get(g:, 'parentheses', {'(': ')', '{': '}', '[': ']', '<': '>'})

function! s:Parentheses(i_or_a, bracket, f_or_F)
    if !has_key(g:parentheses, a:bracket)
        return
    endif
    if a:f_or_F ==# 'F'
        let s:bracket = get(g:parentheses, a:bracket)
        execute "normal! F". s:bracket 
        execute "normal! %"
        execute "normal! v" . a:i_or_a . a:bracket
    else
        execute "normal! ". a:f_or_F . a:bracket . "v" . a:i_or_a . a:bracket
    endif

endfunction
