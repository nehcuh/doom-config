;;; private/my/config.el -*- lexical-binding: t; -*-

(load! "+os")
(load! "+misc")
(load! "+text")
(load! "+prog")
(load! "+ui")
(load! "+bindings")

(setq doom-scratch-buffer-major-mode 'emacs-lisp-mode)

(setq-default fill-column 100
              delete-trailing-lines t)

(set-popup-rules! '(("^\\*helpful" :size 0.4)
                    ("^\\*Ibuffer\\*" :size 0.4)
                    ("^\\*info.*" :size 80 :side right)
                    ("^\\*Man.*" :size 80 :side right)
                    ))

;; Load system profile for different machines
(let ((profile "~/.config/doom/profile.el"))
  (when (file-exists-p profile)
    (load-file profile)))
