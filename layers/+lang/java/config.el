;;; packages.el --- Java configuration File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers
;;
;; Author: Lukasz Klich <klich.lukasz@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; variables

(spacemacs|define-jump-handlers java-mode)

(defvar java-backend nil
  "The backend to use for IDE features.
Possible values are `lsp' and `meghanada'.
If `nil' then `meghanada' is the default backend unless `lsp' layer is used.")
