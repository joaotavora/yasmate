;; Substitutions for: content
;; # as in Snippets/Emphasize.yasnippet
;; ${TM_SELECTED_TEXT/\A<em>(.*)<\/em>\z|.*/(?1:$1:<em>$0<\/em>)/m}                    =yyas> `(yas-html-toggle-wrap yas-selected-text "em")`
;; ${TM_SELECTED_TEXT/\A<strong>(.*)<\/strong>\z|.*/(?1:$1:<strong>$0<\/strong>)/m}    =yyas> `(yas-html-toggle-wrap yas-selected-text "strong")`
;; ${1/\s.*//}                                                                         =yyas> ${1:$(replace-regexp-in-string "[\s\t\n].*" "" yas-text)}
;; ${1/[[:alpha:]]+|( )/(?1:_:\L$0)/g}                                                 =yyas> ${1:$(replace-regexp-in-string " " "_" (downcase yas-text))}
;; ${TM_XHTML}                                                                         =yyas> `yas-html-xhtml-attr`


;; # as in Commands/Preview in All Active Browsers.yasnippet
;; 970EE6B4-A091-11D9-A5A2-000D93C8BE28                                                       =yyas> (browse-url-of-buffer)
;; 637CEA2B-578C-429C-BB74-30E8D42BFA22                                                       =yyas> (yas-html-tag-description)
;; 2ED44A32-C353-447F-BAE4-E3522DB6944D                                                       =yyas> (yas-html-insert-tag-pair-snippet)
;; 991E7EBD-F3F5-469A-BA01-DC30E04AD472                                                       =yyas> (yas-html-wrap-each-line-in-openclose-tag)

;; Substitutions for: binding
;;
;; # as in Snippets/Strong.yasnippet
;; @b                                                                                         =yyas> s-b
;;
;; # as in Snippets/Emphasize.yasnippet
;; ^@i                                                                                        =yyas>
;; @i                                                                                         =yyas> s-i
;;
;; # as in Snippets/Wrap Selection In Tag.yasnippet
;; ^W                                                                                         =yyas> C-c M-w
;;
;; # as in Commands/Insert Tag Pair.yasnippet
;; ^<                                                                                         =yyas> C-<
;;
;; # as in Commands/Documentation for Tag.yasnippet
;; ^h                                                                                         =yyas> C-c M-h
;;
;; # as in Commands/Wrap Each Selected Line in OpenClose Tag.yasnippet
;; ^@W                                                                                        =yyas> C-c M-W
