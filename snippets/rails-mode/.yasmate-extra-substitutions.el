;; Substitutions for: content
;;
;; # as in Commands/Go To Unit Test.yasnippet
;; BDBB15A4-2824-4BEC-93A5-7475F9C46A39                                                       =yyas> (if (featurep 'rinari) (rinari-find-test) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To File on This Line.yasnippet
;; 09BB96F2-75FD-48A7-8314-B5B56B09B477                                                       =yyas> (ffap)

;; # as in Commands/Redo Last Migration.yasnippet
;; CFDA9F62-D071-4E0F-AD10-66AE0729FFCF                                                       =yyas> (yas-rails-compile "rake")
;;
;; # as in Commands/Documentation for Word.yasnippet
;; 32F30207-D827-46D9-889A-451C35269D52                                                       =yyas> (yas-rails-online-doc)
;;
;; # as in Macros/Change Change Table.yasnippet
;; 20FC02C5-32A3-4F20-B163-FF75C9FDFABF                                                       =yyas> (yas-rails-intelligent-migration-snippet :change_change_table)
;;
;; # as in Macros/Add 3A Remove Several Columns (marcc).yasnippet
;; 27A6C58A-896B-4956-BA81-D671A2EF9C7D                                                       =yyas> (yas-rails-intelligent-migration-snippet :add_remove_column_continue)
;;
;; # as in Macros/Add 3A Remove Column.yasnippet
;; 18C76913-061C-4D65-866D-67AA3724AFEF                                                       =yyas> (yas-rails-intelligent-migration-snippet :add_remove_column)
;;
;; # as in Commands/Go To View.yasnippet
;; EE862691-A624-4797-90CF-EDD39EFB2D8E                                                       =yyas> (if (featurep 'rinari) (rinari-find-view) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Make Selection in to Partial.yasnippet
;; 1DD8A214-1C97-45BA-ADEE-8F888DDE8570                                                       =yyas> (call-interactively 'yas-rails-extract-partial)
;;
;; # as in Commands/Go To Functional Test.yasnippet
;; DFE393BE-0764-49FE-B464-6350A50921E6                                                       =yyas> (if (featurep 'rinari) (rinari-find-test) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To Helper.yasnippet
;; 51C9C27A-D931-49F9-B6D8-C0E7ABEC992D                                                       =yyas> (if (featurep 'rinari) (rinari-find-helper) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To Model.yasnippet
;; C7151BF3-7068-4344-9B09-86F3BF4A9C63                                                       =yyas> (if (featurep 'rinari) (rinari-find-model) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To Stylesheet.yasnippet
;; B207BBD4-D6AA-41E9-9530-27210F2D7B66                                                       =yyas> (if (featurep 'rinari) (rinari-find-stylesheet) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To Javascript.yasnippet
;; B078346F-61D8-4E75-9427-80720FBC67F7                                                       =yyas> (if (featurep 'rinari) (rinari-find-javascript) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To Alternate File.yasnippet
;; 9453F0B3-B946-445F-BDB0-B01DE70732FC                                                       =yyas> (yas-rails-find-alternate-file)
;;
;; # as in Commands/Go to Fixture.yasnippet
;; 638D94A4-BDFC-4FE9-8909-9934F3FD2899                                                       =yyas> (if (featurep 'rinari) (rinari-find-fixture) (yas-unimplemented 'rinari))
;;
;; # as in Commands/Go To File.yasnippet
;; 0CCC8443-40F3-4BAB-9440-D737562B5F45                                                       =yyas> (if (featurep 'rinari) (rinari-find-file-in-project) (yas-unimplemented 'rinari))
;;
;; # as in Snippets/returning do 7Cvariable7C E280A6 end.yasnippet
;; ${2/(^(?<var>\s*[a-z_][a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1: |)/}                     =yyas> ${2:$(and (yas-text) " |")}
;; ${2/(^(?<var>\s*[a-z_][a-zA-Z0-9_]*\s*)(,\g<var>)*,?\s*$)|.*/(?1:|)/}                      =yyas> ${2:$(and (yas-text) "|")}
;;
;; # as in Snippets/form_for label.yasnippet
;; ${1/[[:alpha:]]+|(_)/(?1: :\u$0)/g}                                                        =yyas> ${1:$(capitalize (replace-regexp-in-string "_" " " yas-text))}
;;
;; # as in Snippets/has_one (ho).yasnippet
;; ${1/[[:alpha:]]+|(_)/(?1::\u$0)/g}                                                         =yyas> ${1:$(replace-regexp-in-string "_" "" (capitalize yas-text))}
;;
;; # as in Snippets/Create sweeper class.yasnippet
;; ${1/./\l$0/}                                                                               =yyas> ${1:$(and (yas-text) (concat (downcase (substring yas-text 0 1)) (substring yas-text 1)))}
;;
;; # as in Snippets/image_submit_tag.yasnippet
;; ${1/^(\w+)(\.\w*)?$/$1/}                                                                   =yyas> ${1:$(file-name-sans-extension yas-text)}
;;
;; # as in Snippets/respond_to (html).yasnippet
;; $TM_SELECTED_TEXT                                                                          =yyas> `yas-selected-text`
;;
;; # as in Snippets/find_in_batches.yasnippet
;; ${TM_CURRENT_WORD/(\w+)\./\L$1/g}                                                          =yyas> `(downcase (replace-regexp-in-string "\\..*$"  "" (current-word)))`
;;

;; Substitutions for: condition

;; text.html.ruby, source.ruby.rails.embedded.html, meta.rails.helper, meta.rails.unit_test, source.js, source.css, source.yaml, meta.rails.controller, meta.rails.functional_test, text.haml =yyas> t
;; text.html.ruby, source.ruby.rails.embedded.html, meta.rails.helper, meta.rails.functional_test, source.js, source.css, source.yaml, meta.rails.model, meta.rails.unit_test, text.haml      =yyas> t
;; text.html.ruby, source.ruby.rails.embedded.html, meta.rails.controller, meta.rails.model, meta.rails.unit_test, meta.rails.functional_test, text.haml                                      =yyas> t
;; meta.rails.controller, meta.rails.helper, meta.rails.model, meta.rails.unit_test, meta.rails.functional_test                                                                               =yyas> t
;; text.html.ruby, source.ruby.rails.embedded.html, meta.rails.controller, meta.rails.helper, text.haml                                                                                       =yyas> t
;; meta.rails.controller, meta.rails.helper, meta.rails.model, meta.rails.functional_test, source.yaml                                                                                        =yyas> t
;; meta.rails.controller, meta.rails.mailer, source.js, source.css                                                                                                                            =yyas> t
;; meta.rails.controller, meta.rails.helper, meta.rails.model, source.yaml, meta.rails.unit_test                                                                                              =yyas> t
;; meta.rails.migration - meta.rails.migration.create_table - meta.rails.migration.change_table                                                                                               =yyas> (yas-rails-intelligent-migration-snippet-condition-p)
;; meta.rails.migration.create_table, meta.rails.migration.change_table                                                                                                                       =yyas> (or (yas-rails-in-create-table-p) (yas-rails-in-change-table-p))
;; meta.rails.migration.create_table                                                                                                                                                          =yyas> (yas-rails-create-table-p)
;; meta.rails.functional_test                                                                                                                                                                 =yyas> (yas-rails-functional-test-p)
;; text.html.ruby, text.haml                                                                                                                                                                  =yyas> (yas-rails-view-p)
;; meta.rails.controller                                                                                                                                                                      =yyas> (yas-rails-controller-p)
;; meta.rails.routes                                                                                                                                                                          =yyas> (yas-rails-routes-p)
;;
;;
;; AC385ABF-96CD-4FCB-80AD-BF37D6EE79D2  =yyas> (and (member major-mode '(nxml-mode html-mode rhtml-mode)) (yas-rails-view-p))


;; Substitutions for: binding
;;
;; # as in Snippets/rails session.yasnippet
;; ^j                                                                                         =yyas> C-c M-j
;;
;; # as in Commands/Go To View.yasnippet
;; ~$@                                                                                     =yyas> [M-S-s-down]
;;
;; # as in Commands/Show DB Schema.yasnippet
;; ^@S                                                                                        =yyas> C-c M-s
;;
;; # as in Snippets/rails params.yasnippet
;; ^p                                                                                         =yyas> C-c M-p
;;
;; # as in Commands/Go To File.yasnippet
;; 0CCC8443-40F3-4BAB-9440-D737562B5F45                                                       =yyas> [M-s-up]
;;
;; # as in Commands/Go To Alternate File.yasnippet
;; 9453F0B3-B946-445F-BDB0-B01DE70732FC                                                       =yyas> [M-s-down]
;;
;; # as in Commands/Test Units.yasnippet
;; ^\                                                                                         =yyas> C-c M-\
;;
;; # as in Commands/Rake Migrate.yasnippet
;; ^|                                                                                         =yyas> C-c M-|
;;
;; # as in Snippets/respond_to (html).yasnippet
;; @H                                                                                         =yyas> s-h
;;
;; # as in Commands/Make Selection in to Partial.yasnippet
;; ^H                                                                                         =yyas> C-c M-m
;;
;; # as in Commands/View demo help.yasnippet
;; ^h                                                                                         =yyas> C-c M-h
