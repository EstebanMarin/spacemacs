;;; config.el --- Emacs Lisp Layer configuration File for Spacemacs
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

;; Dumper

(defun emacs-lisp/pre-dump ()
  (spacemacs/dump-modes '(emacs-lisp-mode)))

;; Variables

(spacemacs|define-jump-handlers emacs-lisp-mode)
(spacemacs|define-jump-handlers lisp-interaction-mode)

(defvar emacs-lisp-hide-namespace-prefix nil
  "If non-nil, hide namespace prefixes using nameless-mode.")
