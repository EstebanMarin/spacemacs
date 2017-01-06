;;; config.el --- Elixir Layer configuration File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Variables

(defvar elixir-enable-compilation-checking nil
  "If non-nil syntax checking is enable for compilation.
Default is nil because Elixir compilation is based on macros and thus it
is unsafe. Activate this option only for trusted code, usage of a
directory variable is recommended.")

(defvar elixir-backend nil
  "The backend to use for IDE features.
Possible values are `alchemist' and `lsp'.
If `nil' then `alchemist' is the default backend unless `lsp' layer is used.")

(defvar elixir-ls-path "~/elixir-ls/release"
  "The path to the folder that contains the elixir-ls release, start scripts (language_server.sh/language_server.bat).")

(spacemacs|define-jump-handlers elixir-mode)
