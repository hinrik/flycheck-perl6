Note: this has been forked and the fork included in Melpa, so I'm archiving this. Consider the master now Raku/flycheck-raku .

`flycheck-raku`
================

Make [Flycheck][] syntax-check Raku code.

![Emacs screenshot with flycheck-raku](https://github.com/widefox/flycheck-raku/raw/master/flycheck-raku-screenshot.png)

Installation
------------

With [`use-package`][use-package] in your init file:

```el
(use-package flycheck
  :ensure t
  :defer t
  :hook (prog-mode . flycheck-mode))

(use-package flycheck-raku
  :ensure t)
```

Or in your [`Cask`][cask] file:

```cl
(source melpa)

(depends-on "flycheck-raku")
```

Or manually from [MELPA][] with <kbd>M-x package-refresh-contents</kbd>
and <kbd>M-x package-install RET flycheck-raku</kbd>.

Usage
-----

Just use Flycheck as usual in [Raku Mode][raku-mode].

License
-------

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see http://www.gnu.org/licenses/.

See [`COPYING`][copying] for details.

[Flycheck]: https://github.com/flycheck/flycheck
[use-package]: https://github.com/jwiegley/use-package
[Cask]: https://github.com/cask/cask
[MELPA]: http://melpa.milkbox.net
[ORIGCOPYING]: https://github.com/hinrik/flycheck-perl6/blob/master/COPYING
[COPYING]: https://github.com/widefox/flycheck-raku/blob/master/COPYING
[raku-mode]: https://github.com/Raku/raku-mode
