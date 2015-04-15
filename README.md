`flycheck-perl6`
================

Make [Flycheck][] syntax-check Perl 6 code.

![Emacs screenshot with flycheck-perl6](https://github.com/hinrik/flycheck-perl6/raw/master/flycheck-perl6-screenshot.png)

Installation
------------

From [MELPA][] with <kbd>M-x package-install RET flycheck-perl6</kbd>.

With [`use-package`][use-package] in your init file:

```el
(use-package flycheck-perl6
  :ensure t)
```
Or in your [`Cask`][cask] file:

```cl
(source melpa)

(depends-on "flycheck-perl6")
```

Usage
-----

Just use Flycheck as usual in [Perl 6 Mode][perl6-mode].

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
[COPYING]: https://github.com/hinrik/flycheck-perl6/blob/master/COPYING
[perl6-mode]: https://github.com/hinrik/perl6-mode
