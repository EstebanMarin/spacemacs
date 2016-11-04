;;; packages.el --- nlinum Layer packages File
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
>>>>>>> 141243375... line numbers: finer configuration of line numbers activation
;;
;; Author: Thomas de Beauchêne <thomas.de.beauchene@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs/nlinum-maybe-on ()
  (when (spacemacs/enable-line-numbers-p)
    (nlinum-mode)))
<<<<<<< HEAD

(defun spacemacs/nlinum-relative-toggle ()
  (interactive)
  (if (not (bound-and-true-p nlinum-relative-mode))
      (nlinum-mode))
  (nlinum-relative-toggle))
=======
>>>>>>> 141243375... line numbers: finer configuration of line numbers activation
