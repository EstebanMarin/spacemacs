;;; packages.el --- cscope Layer packages File for Spacemacs
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

(setq cscope-packages
      '(
        (helm-cscope :requires helm)
        xcscope
        ))

(defun cscope/init-xcscope ()
  (use-package xcscope
    :commands (cscope-index-files cscope/run-pycscope)
    :init
    (progn
      ;; for python projects, we don't want xcscope to rebuild the databse,
      ;; because it uses cscope instead of pycscope
      (setq cscope-option-do-not-update-database t
            cscope-display-cscope-buffer nil)

      (defun cscope//safe-project-root ()
        "Return project's root, or nil if not in a project."
        (and (fboundp 'projectile-project-root)
             (projectile-project-p)
             (projectile-project-root)))

      (defun cscope/run-pycscope (directory)
        (interactive (list (file-name-as-directory
                            (read-directory-name "Run pycscope in directory: "
                                                 (cscope//safe-project-root)))))
        (let ((default-directory directory))
          (shell-command
           (format "%s -R -f '%s'"
                   pycscope-binary
                   (expand-file-name "cscope.out" directory))))))))

(defun cscope/init-helm-cscope ()
  (use-package helm-cscope
    :defer t
    :init
    (defun spacemacs/setup-helm-cscope (mode)
      "Setup `helm-cscope' for MODE"
      (spacemacs/set-leader-keys-for-major-mode mode
        "g=" 'helm-cscope-find-assignments-to-this-symbol
        "gc" 'helm-cscope-find-called-function
        "gC" 'helm-cscope-find-calling-this-function
        "gd" 'helm-cscope-find-global-definition
        "ge" 'helm-cscope-find-egrep-pattern
        "gf" 'helm-cscope-find-this-file
        "gF" 'helm-cscope-find-files-including-file
        "gr" 'helm-cscope-find-this-symbol
        "gx" 'helm-cscope-find-this-text-string))
    :config
    (defadvice helm-cscope-find-this-symbol (before cscope/goto activate)
      (evil--jumps-push))))
