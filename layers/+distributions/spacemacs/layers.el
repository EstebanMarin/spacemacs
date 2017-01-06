;;; layers.el --- Spacemacs distribution Layer layers File
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

;; We use `spacemacs/declare-layers' instead of
;; `configuration-layer/declare-layer-dependencies' in order to declare
;; the layers right away
;; This is a special case only for distribution layers.
(configuration-layer/declare-layers
 '(
   helm
   treemacs
   spacemacs-base
   spacemacs-completion
   spacemacs-layouts
   spacemacs-editing
   spacemacs-editing-visual
   spacemacs-evil
   spacemacs-language
   spacemacs-misc
   spacemacs-modeline
   spacemacs-navigation
   spacemacs-org
   spacemacs-project
   spacemacs-purpose
   spacemacs-visual
   ))
