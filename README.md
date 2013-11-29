yasmate
=======

A ruby tool to convert textmate snippet bundles to
[yasnippet](http://github.com/capitaomorte/yasnippet) format.

These rails-centric conversions already bundled:

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

How to convert foo.tmbundle
---------------------------

1. Add a git submodule `bundles/foo.tmbundle` pointing to the
   `tmbundle` repo.

2. Add a `snippets/foo-mode` directory, assuming `foo-mode` is the
   corresponding emacs major-mode.

3. Run `yasmate.rb -d bundles/foo.tmbundle -o snippets/foo-mode`

That's it, your converted snippets now live under `snippets/foo-mode`

It messed up on snippet XYZ!!!
------------------------------

Yep, it's unlikely be perfect.

`yasmate.rb` has some rules for translating bits of Textmate syntax to
yasnippet's embedded elisp syntax. I call these **substitutions**. For
example, this is Textmate

    ${0:$TM_SELECTED_TEXT}

is this in yasnippet

    ${0:`yas-selected-text`}

Those builtin rules help a lot, but some textmate bundles have very
specific substitutions that have to be added into the mix in a
per-bundle fashion.

So there are these `snippets/foo-mode/.yasmate-extra-substitutions.el`
files that help with that.

Here's how it works:

1. you follow the steps I gave above

2. you notice that `yasmate.rb` also created a
   `snippets/foo-mode/.yasmate-unknown-substitutions.el` file. You
   notice the unknown substitution for the snippet XYZ that didn't
   work

4. you grab that bit, correct it, and paste it into a new
   `snippets/foo-mode/.yasmate-extra-substitutions.el`

The format of the substitution files sucks
------------------------------------------

Yep! It's very ... inventive. And wrong. They should be pure elisp
files and `yasmate.rb` should be rewritten in emacs-lisp to spare the
dependency on ruby.
