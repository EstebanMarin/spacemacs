;;; config.el --- Games Layer configuration File for Spacemacs
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

;; Variable

(defvar spacemacs-games-cache-directory
  (concat spacemacs-cache-directory "games/")
  "Directory where to store games data.")

;; create the game cache directory
(unless (file-exists-p spacemacs-games-cache-directory)
  (make-directory spacemacs-games-cache-directory))

(setq helm-games-list nil)
