;;; slime-cape.el --- slime completion backend for cape mode -*-lexical-binding:t-*-

;; This mode technically just connect slime-company to Cape mode
;;
;; See Also:
;;
;; [slime-company](https://github.com/anwyn/slime-company)
;; [cape](https://github.com/minad/cape)

;; Author: ccQpein
;; URL: https://github.com/ccqpein/slime-cape
;; Version: 0.1.0
;; Keywords: cape, corfu, slime, lisp
;; Package-Requires: ((slime-company "1.6"))

(require 'slime)
(require 'slime-company)
(require 'cape)

(defvar cape-slime-backend (cape-company-to-capf #'company-slime))

(define-slime-contrib slime-cape
  (:authors "ccQpein")
  (:swank-dependencies swank-arglists)
  (:on-load
   (dolist (h '(slime-mode-hook slime-repl-mode-hook sldb-mode-hook))
     (add-hook h 'slime-cape-maybe-enable))
   )
  (:on-unload
   (dolist (h '(slime-mode-hook slime-repl-mode-hook sldb-mode-hook))
     (remove-hook h 'slime-cape-maybe-enable))
   (delete cape-slime-backend completion-at-point-functions)
   ))

(defun slime-cape-maybe-enable ()
  (when (slime-company-active-p)
    (add-to-list 'completion-at-point-functions cape-slime-backend)))

(provide 'slime-cape)
;;; slime-cape.el ends here
