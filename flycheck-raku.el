;;; flycheck-raku.el --- Raku support in Flycheck -*- lexical-binding: t; -*-

;; Copyright (C) 2015 Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>
;; Copyright (C) 2020 Johnathon Weare <jrweare@gmail.com>

;; Author: Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>, Johnathon Weare <jrweare@gmail.com>
;; original URL: https://github.com/hinrik/flycheck-perl6
;; URL: https://github.com/widefox/flycheck-raku
;; Package-Version: 20200423.1
;; Keywords: tools, convenience
;; Version: 0.2-git
;; Package-Requires: ((emacs "24.3") (flycheck "0.22"))

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Raku syntax checking support for Flycheck.

;; Runs "raku -c" on your code.  Currently does not report the exact
;; column number of the error, just the line number.

;;; Code:

(require 'flycheck)

(defgroup flycheck-raku nil
  "Raku support for Flycheck."
  :prefix "flycheck-raku-"
  :group 'flycheck
  :link '(url-link :tag "Github" "https://github.com/widefox/flycheck-raku"))

(flycheck-def-option-var flycheck-raku-include-path nil raku
  "A list of include directories for Raku (change this from raku to perl6 if on an old install).

The value of this variable is a list of strings, where each
string is a directory to add to the include path of Raku.
Relative paths are relative to the file being checked."
  :type '(repeat (directory :tag "Include directory"))
  :safe #'flycheck-string-list-p)

(flycheck-define-checker raku
  "A Raku syntax checker."
  :command ("raku" "-c"
            (option-list "-I" flycheck-raku-include-path) source)
  :error-patterns
  ((error (or (and line-start (message) (? "\r") "\nat " (file-name) ":" line (? "\r") line-end)
              (and "compiling " (file-name) (? "\r") "\n" (message (minimal-match (1+ anything))) " at line " line)
              ; "Module not found" message
              (and "===SORRY!===" (? "\r") "\n" (message (minimal-match (1+ anything))) " at line " line))))
  :modes raku-mode)

(add-to-list 'flycheck-checkers 'raku)

(provide 'flycheck-raku)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; flycheck-raku.el ends here
