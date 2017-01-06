;;; packages.el --- C# Layer configuration File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2019 Sylvain Benner & Contributors
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

;; variables

(spacemacs|define-jump-handlers csharp-mode)

(defvar csharp-backend 'omnisharp
  "The backend to use for IDE features.
Possible values are `omnisharp' and `lsp'.
If `nil' then no backend is enabled.")
