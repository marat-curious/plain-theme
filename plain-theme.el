;;; plain-theme.el --- Plain Theme for Emacs -*- lexical-binding: t -*-

;; Inspired by:
;; https://github.com/maio/eink-emacs
;; https://github.com/dimp-gh/eink.el
;; https://github.com/fxn/monochrome-theme.el
;; https://github.com/lbolla/emacs-quasi-monochrome
;; https://github.com/anler/minimal-theme/

(deftheme plain
  "Plain Theme for Emacs")

(let ((background "black")
      (foreground "grey90")
      (cursor "white")
      ;;(border background)
      ;;(minibuffer cursor)
      (region "grey20")
      (failure "red"))

  (custom-theme-set-faces
   'plain

   ;;generic
   `(cursor ((t (:background ,foreground))))
   `(custom-variable-tag ((t (:foreground ,foreground))))
   `(default ((t (:background ,background :foreground ,foreground))))
   `(font-lock-builtin-face ((t (:background ,background :foreground ,foreground))))
   `(font-lock-comment-face ((t (:foreground ,foreground))))
   `(font-lock-constant-face ((t (:foreground ,foreground))))
   `(font-lock-doc-face ((t (:foreground ,foreground))))
   `(font-lock-function-name-face ((t (:foreground ,foreground))))
   `(font-lock-keyword-face ((t (:foreground ,foreground))))
   `(font-lock-preprocessor-face ((t (:foreground ,foreground))))
   `(font-lock-reference-face ((t (:foreground ,foreground))))
   `(font-lock-string-face ((t (:foreground ,foreground))))
   `(font-lock-type-face ((t (:foreground ,foreground))))
   `(font-lock-variable-name-face ((t (:foreground ,foreground))))
   `(fringe ((t (:background ,background :foreground , foreground))))
   `(highlight ((t nil)))
               ))

;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'plain)
