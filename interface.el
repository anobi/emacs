;; Interface config

(if (display-graphic-p)
  (progn
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    (scroll-bar-mode 0)
    (global-linum-mode 1)
    (column-number-mode 1)
    (show-paren-mode 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

;; Fonts
(when (eq system-type 'gnu/linux)
    (set-frame-font "Monospace-8"))
(when (eq system-type 'darwin)
    (set-frame-font "Share-TechMono-11"))
(when (eq system-type 'windows-nt)
    (set-frame-font "Hack-10"))