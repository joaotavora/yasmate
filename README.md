yasmate
=======

A ruby tool to convert textmate snippet bundles to
[yasnippet](http://github.com/capitaomorte/yasnippet) format.

Currently (very) limited to rails-related snippets:

* ruby-mode
* html-mode
* rails-mode

Make sure you cloned `yasmate` with the `--recursive` option to fetch
submodules of the actual "tmbundles" maintained by the Textmate
community. In `yasmate`'s top dir:

    gem install plist trollop        # two dependencies needed first
    rake convert_bundles             # will convert ruby, rails and html bundles

Then, in your `.emacs` file

    (add-to-list 'load-path "/path/to/yasnippet")
    (require 'yasnippet)
    ;; use just the yasmate snippet collection
    (setq yas-snippet-dirs '("~/.emacs.d/snippets" "/path/to/yasmate/snippets"))
    (yas-global-mode 1)

Open some rails file (model, app, etc) and start using the textmate
snippets.

Report bugs or better yet submit fixes!
