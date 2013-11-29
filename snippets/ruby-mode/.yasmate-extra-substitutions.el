;; My work in progress substitutions
;;
;; Substitutions for: content
;;
;; ${1/.+/(/}                                                                        =yyas> ${1:$(and (yas-text) "(")}
;; ${1/.+/)/}                                                                        =yyas> ${1:$(and (yas-text) ")")}
;; ${2/.+/ => /}                                                                     =yyas> ${2:$(and (yas-text) " => ")}
;; ${1:${TM_FILENAME/\.\w+//}                                                        =yyas> ${1:$(and buffer-file-name (file-name-sans-extension buffer-file-name))}
;; ${1/(^.*?\S.*)|.*/(?1:\()/}                                                       =yyas> ${1:$(and (string-match "[^\s\t]" yas-text) "(" )}
;; ${1/(^.*?\S.*)|.*/(?1:\))/}                                                       =yyas> ${1:$(and (string-match "[^\s\t]" yas-text) ")" )}
;; ${2/(^.*?\S.*)|.*/(?1:\()/}                                                       =yyas> ${2:$(and (string-match "[^\s\t]" yas-text) "(" )}
;; ${2/(^.*?\S.*)|.*/(?1:\))/}                                                       =yyas> ${2:$(and (string-match "[^\s\t]" yas-text) ")" )}
;; ${3/(^.*?\S.*)|.*/(?1:\()/}                                                       =yyas> ${3:$(and (string-match "[^\s\t]" yas-text) "(" )}
;; ${3/(^.*?\S.*)|.*/(?1:\))/}                                                       =yyas> ${3:$(and (string-match "[^\s\t]" yas-text) ")" )}
;; ${2/^\s*$|(.*\S.*)/(?1: )/}                                                       =yyas> ${2:$(and (string-match "[^\s\t]" yas-text) " " )}
;; ${3/^\s*$|(.*\S.*)/(?1: )/}                                                       =yyas> ${3:$(and (string-match "[^\s\t]" yas-text) " " )}
;; ${3/(^[rwab+]+$)|.*/(?1:, ")/}                                                    =yyas> ${3:$(and (string-match "^[rwab+]+$" yas-text) ", \\"" )}
;; ${3/(^[rwab+]+$)|.*/(?1:")/}                                                      =yyas> ${3:$(and (string-match "^[rwab+]+$" yas-text) "\\"" )}
;; ${3/^\s*$|(.*\S.*)/(?1:, )/}                                                      =yyas> ${3:$(and (string-match "[^\s\t]" (yas-text) ", ")}
;; ${TM_SELECTED_TEXT/([\t ]*).*/$1/m}                                               =yyas>
;; ${TM_SELECTED_TEXT/(\A.*)|(.+)|\n\z/(?1:$0:(?2:\t$0))/g}                          =yyas> `yas-selected-text`
;; (yas-multi-line-unknown BF487539-8085-4FF4-8601-1AD20FABAEDC)                     =yyas> `(yas-ruby-infer-class-name)`
;; (yas-multi-line-unknown 2B73EC5F-06D2-460C-A14F-6FA05AFCF0CC)                     =yyas> `(yas-ruby-infer-class-name)`
;;
;; ${TM_FILENAME/(?:\A|_)([A-Za-z0-9]+)(?:\.rb)?/(?2::\u$1)/g}                       =yyas> `(yas-ruby-infer-class-name)`
;;
;; ${1/(^(?<var>\s*[a-z_][a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:|)/}             =yyas> ${1:$(and (yas-text) "|")}
;; ${1/(^(?<var>\s*[a-z_][a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1: |)/}            =yyas> ${1:$(and (yas-text) " |")}
;; ${1/(^(?<var>\s*[a-z_][a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:| )/}            =yyas> ${1:$(and (yas-text) "| ")}
;;
;; ${1/(^(?<var>\s*(?:\*|\*?[a-z_])[a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:|)/}   =yyas> ${1:$(and (yas-text) "|")}
;; ${1/(^(?<var>\s*(?:\*|\*?[a-z_])[a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:| )/}  =yyas> ${1:$(and (yas-text) "| ")}
;; ${2/(^(?<var>\s*(?:\*|\*?[a-z_])[a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:|)/}   =yyas> ${2:$(and (yas-text) "|")}
;; ${2/(^(?<var>\s*(?:\*|\*?[a-z_])[a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:| )/}  =yyas> ${2:$(and (yas-text) "| ")}
;;
;; ${1/([\w&&[^_]]+)|./\u$1/g}                                                       =yyas> ${1:$(replace-regexp-in-string "[_/]" "" (capitalize yas-text))}
;;
;; 7990EE60-C850-4779-A8C0-7FD2C853B99B               =yyas> (yas-ruby-toggle-single-multi-line-block)
;; 7E084412-80E6-4B70-8092-C03D1ECE4CD2               =yyas> (yas-ruby-require "eac")(yas-expand-uuid 'ruby-mode "FDD73070-6D32-4301-A86A-C55B77C3D8ED")
;; FBFC214F-B019-4967-95D2-028F374A3221               =yyas> (yas-ruby-pipe-through-xmpfilter)
;; 63F3B3B7-CBE2-426B-B551-657733F3868B               =yyas> (call-interactively (if (featurep 'yari) 'yari 'yas-ri))

;;
;; `[[ $TM_LINE_INDEX != 0 ]] && echo; echo`                                         =yyas> `(concat (if (eq 0 current-line) "\n" "") "\n")`
;; `snippet_paren.rb`                                                                =yyas> `yas-ruby-snippet-open-paren`
;; `snippet_paren.rb end`                                                            =yyas> `yas-ruby-snippet-close-paren`
;; ${TM_RUBY_SWITCHES: -wKU}                                                         =yyas> `yas-ruby-shebang-args`
;;
;; Substitutions for: condition
;;
;; 7990EE60-C850-4779-A8C0-7FD2C853B99B                                              =yyas> 'force-in-comment
;; FBFC214F-B019-4967-95D2-028F374A3221                                              =yyas> 'force-in-comment
;; 88BC3896-DC39-4307-A271-21D33340F15A                                              =yyas> 'force-in-comment
;; 0F940CBC-2173-49FF-B6FD-98A62863F8F2                                              =yyas> 'force-in-comment
;; 451A0596-1F72-4AFB-AF2F-45900FABB0F7                                              =yyas> (not (yas-ruby-end-is-block-end-p))
;; B:(string.quoted.double.ruby|string.interpolated.ruby) - string source            =yyas> (and (yas-ruby-in-interpolated-string-p) 'force-in-comment)
;; text.html.ruby, text.html source.ruby                                             =yyas> (yas-unimplemented)
;; text.html, source.yaml, meta.erb                                                  =yyas> (yas-unimplemented)
;; keyword.control.start-block.ruby, meta.syntax.ruby.start-block                    =yyas>
;;
;; Substitutions for: binding
;;
;; # as in Commands/New Method.yasnippet
;; $                                                                               =yyas> C-c M-m
;; ^W                                                                                =yyas> C-c M-w
;; #                                                                                 =yyas> #
;; ^{                                                                                =yyas> C-c M-{
;; @R                                                                                =yyas> C-c M-R
;; @r                                                                                =yyas> C-c M-r
;; ^R                                                                                =yyas> C-c M-S-r
;; @i                                                                                =yyas> s-i
;; @b                                                                                =yyas> s-b
;; ^@E                                                                               =yyas> C-c M-e
;; ^:                                                                                =yyas> C-c M-:
;; ^>                                                                                =yyas> C-c M->
;; ^h                                                                                =yyas> C-c M-h
