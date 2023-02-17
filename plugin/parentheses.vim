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

let g:m = {'(': ')', '{': '}', '[': ']', '<': '>'}

function! s:Parentheses(i_or_a, bracket, f_or_F)
    " echo a:i_or_a
    " echo a:bracket
    if !has_key(g:m, a:bracket)
        return
    endif
    " echom "normal! " a:f_or_F . a:bracket . "v" .a:i_or_a . a:bracket                                                                           
    execute "normal! ". a:f_or_F . a:bracket . "v" .a:i_or_a . a:bracket
    " execute "normal! `<v`>y"
endfunction
