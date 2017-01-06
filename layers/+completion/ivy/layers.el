;;; layers.el --- Ivy Layer layers File for Spacemacs
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

(configuration-layer/declare-shadow-relation 'ivy 'helm)

;; smex is handled by the `ivy' layer and we don't want
;; to use the ownership mechanism of layers because it is dependent
;; on the order of layer declaration
(configuration-layer/remove-layer 'smex)
