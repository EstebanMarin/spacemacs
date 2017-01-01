;;; packages.el --- C# Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2019 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq csharp-packages
      '(
        company
        csharp-mode
        evil-matchit
        ggtags
        counsel-gtags
        helm-gtags
        omnisharp
        flycheck
        ))

(defun csharp/init-omnisharp ()
  (use-package omnisharp
    :defer t
    :init
<<<<<<< HEAD
    (spacemacs//csharp-setup-backend)
=======
    (progn
      (when (configuration-layer/package-usedp 'company)
        ;; needed to avoid an error when fetching doc using company
        ;; Note: if you are using a roslyn based omnisharp server you can
        ;; set back this variable to t.
        (setq omnisharp-auto-complete-want-documentation nil))
      (push 'company-omnisharp company-backends-csharp-mode)
      (add-to-list 'spacemacs-jump-handlers-csharp-mode
                   '(omnisharp-go-to-definition :async t)))
>>>>>>> eac9b41bb... Fix issue with jump handler in omnisharp-mode where the handler is async
    :config
    (spacemacs//csharp-configure)
    ))

(defun csharp/post-init-company ()
  (spacemacs//csharp-setup-company))

(defun csharp/init-csharp-mode ()
  (use-package csharp-mode
    :defer t))

(defun csharp/post-init-evil-matchit ()
  (with-eval-after-load 'evil-matchit
    (plist-put evilmi-plugins 'csharp-mode
               '((evilmi-simple-get-tag evilmi-simple-jump)
                 (evilmi-c-get-tag evilmi-c-jump))))
  (add-hook 'csharp-mode-hook 'turn-on-evil-matchit-mode))

(defun csharp/post-init-flycheck ()
  (spacemacs/enable-flycheck 'csharp-mode))

(defun csharp/post-init-ggtags ()
  (add-hook 'csharp-mode-local-vars-hook #'spacemacs/ggtags-mode-enable))

(defun csharp/post-init-counsel-gtags ()
  (spacemacs/counsel-gtags-define-keys-for-mode 'csharp-mode))

(defun csharp/post-init-helm-gtags ()
  (spacemacs/helm-gtags-define-keys-for-mode 'csharp-mode))
