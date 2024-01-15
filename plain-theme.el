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
      (foreground "grey70")
      (whitespace "grey30")
      (mismatch "yellow")
      (region "orange")
      (failure "red"))

  (custom-theme-set-faces
   'plain

   `(cursor ((t (:background ,foreground))))
   `(custom-variable-tag ((t (:foreground ,foreground))))
   `(default ((t (:background ,background :foreground ,foreground))))
   `(error ((t (:foreground ,failure))))
   `(escape-glyph ((t (:background ,background :foreground ,foreground))))

   `(font-lock-builtin-face ((t (:foreground ,foreground))))
   `(font-lock-comment-face ((t (:foreground ,foreground))))
   `(font-lock-constant-face ((t (:foreground ,foreground))))
   `(font-lock-doc-face ((t (:foreground ,foreground))))
   `(font-lock-function-name-face ((t (:foreground ,foreground))))
   `(font-lock-keyword-face ((t (:foreground ,foreground))))
   `(font-lock-negation-char-face ((t (:foreground ,foreground))))
   `(font-lock-preprocessor-face ((t (:foreground ,foreground))))
   `(font-lock-reference-face ((t (:foreground ,foreground))))
   `(font-lock-string-face ((t (:foreground ,foreground))))
   `(font-lock-type-face ((t (:foreground ,foreground))))
   `(font-lock-variable-name-face ((t (:foreground ,foreground))))
   `(font-lock-warning-face ((t (:foreground ,foreground))))

   `(fringe ((t (:background ,background :foreground ,foreground))))
   `(highlight ((t nil)))

   `(ido-first-match ((t (:foreground ,foreground))))
   `(ido-only-match ((t (:foreground ,foreground))))
   `(ido-subdir ((t (:foreground ,foreground))))

   `(isearch ((t (:background ,whitespace :foreground ,foreground))))
   `(lazy-highlight ((t (:background ,whitespace :foreground ,foreground))))
   `(link ((t (:foreground ,foreground))))
   `(minibuffer-prompt ((t (:foreground ,foreground))))

   `(region ((t (:background ,region :foreground ,background))))

   `(show-paren-match ((t (:background ,region :foreground ,background))))
   `(show-paren-mismatch ((t (:background ,mismatch :foreground ,background))))

   `(warning ((t (:foreground ,region))))

   `(whitespace-empty ((t (:background ,failure))))
   `(whitespace-hspace ((t (:background ,background))))
   `(whitespace-indentation ((t (:background unspecified :foreground ,whitespace))))
   `(whitespace-line ((t (:background unspecified :foreground ,foreground))))
   `(whitespace-newline ((t (:background unspecified :foreground ,whitespace))))
   `(whitespace-space ((t (:background unspecified :foreground ,whitespace))))
   `(whitespace-tab ((t (:background unspecified :foreground ,whitespace))))
   `(whitespace-trailing ((t (:background ,failure))))))

;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'plain)
