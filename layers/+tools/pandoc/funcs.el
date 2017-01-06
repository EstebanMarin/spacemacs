;;; packages.el --- pandoc Layer functions File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers
;;
;; Author: Christoph Paulik <cpaulik@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs/run-pandoc ()
  "Start pandoc for the buffer and open the menu"
  (interactive)
  ;; only run pandoc-mode if not active, as it resets pandoc--local-settings
  (if (not (bound-and-true-p pandoc-mode)) (pandoc-mode))
  (pandoc-main-hydra/body))
