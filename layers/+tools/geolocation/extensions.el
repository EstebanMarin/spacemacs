;;; extensions.el --- geolocation configuration File for Spacemacs
;;
<<<<<<< HEAD
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers
;;
;; Author: Uri Sharf <uri.sharf@me.com>
;; URL: https://github.com/usharf/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq geolocation-post-extensions '(theme-changer))

(defun geolocation/init-theme-changer ()
  "Initialize theme-changer"
  (use-package theme-changer
    :if (and geolocation-enable-automatic-theme-changer
             (> (length dotspacemacs-themes) 1))))
