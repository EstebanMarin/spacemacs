;;; config.el --- PHP Layer config File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers
;;
;; Author: Kosta Harlan <kosta@kostaharlan.net>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; variables


(spacemacs|define-jump-handlers php-mode)

(defvar php-backend 'nil
  "The backend to use for IDE features.
Possible values are `lsp'.")
