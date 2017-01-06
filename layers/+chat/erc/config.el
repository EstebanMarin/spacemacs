;;; config.el --- erc Layer configuration File for Spacemacs
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

(defvar erc-enable-sasl-auth nil
  "If non nil then use SASL authenthication with ERC.")

(defvar erc-spacemacs-layout-name "@ERC"
  "Name used in the setup for `spacemacs-layouts' micro-state")

(defvar erc-spacemacs-layout-binding "E"
  "Binding used in the setup for `spacemacs-layouts' micro-state")

(defvar erc-server-list nil
  "If non nil, connect automatically to the specified servers with the given credentials.")

(defvar erc-enable-notifications t
  "If non nil, enable ERC notifications.")
