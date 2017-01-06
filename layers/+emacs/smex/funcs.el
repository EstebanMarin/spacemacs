;;; funcs.el --- Smex Layer functions File for Spacemacs
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

(defun spacemacs/smex ()
  "Execute smex with a better prompt."
  (interactive)
  (let ((smex-prompt-string "Emacs commands: "))
    (smex)))

(defun spacemacs/smex-major-mode-commands ()
  "Reexecute smex with major mode commands only."
  (interactive)
  (let ((smex-prompt-string (format "%s commands: " major-mode)))
    (smex-major-mode-commands)))
