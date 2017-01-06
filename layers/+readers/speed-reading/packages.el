;;; packages.el --- speed-reading Layer packages File for Spacemacs
;;
<<<<<<< HEAD:layers/+readers/speed-reading/packages.el
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
=======
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
>>>>>>> b252d252b... Bump year in copyright headers:layers/+tools/speed-reading/packages.el
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq speed-reading-packages
      '(
        spray
        which-key
        ))

(defun speed-reading/init-spray ()
  (use-package spray
    :commands spray-mode
    :init
    (progn
      (defun speed-reading/start-spray ()
        "Start spray speed reading on current buffer at current point."
        (interactive)
        (evil-insert-state)
        (spray-mode t)
        (internal-show-cursor (selected-window) nil))
      (spacemacs/set-leader-keys "aR" 'speed-reading/start-spray)

      (defadvice spray-quit (after speed-reading//quit-spray activate)
        "Correctly quit spray."
        (internal-show-cursor (selected-window) t)
        (evil-normal-state)))
    :config
    (progn
      (define-key spray-mode-map (kbd "h") 'spray-backward-word)
      (define-key spray-mode-map (kbd "l") 'spray-forward-word)
      (define-key spray-mode-map (kbd "q") 'spray-quit))))

(defun speed-reading/post-init-which-key ()
  (push '((nil . "\\`speed-reading/\\(.+\\)\\'") . (nil . "\\1"))
        which-key-replacement-alist))
