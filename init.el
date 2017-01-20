;;; init.el --- Main init file, duh
;;; Commentary:
;;; Code:

(load "~/.emacs.d/interface")
(load "~/.emacs.d/packages")
(load "~/.emacs.d/config")
(load "~/.emacs.d/languages")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
	("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "a56a6bf2ecb2ce4fa79ba636d0a5cf81ad9320a988ec4e55441a16d66b0c10e0" "fa1f7bdb40327d08bd35a0f5d5d8f13d2a863a8f37c45b96d2439861e944490a" "5b24babd20e58465e070a8d7850ec573fe30aca66c8383a62a5e7a3588db830b" "38e64ea9b3a5e512ae9547063ee491c20bd717fe59d9c12219a0b1050b439cdd" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "8556256eeea0f5b7a5d8af4a36a13c4fabeb287b2b58386255f1b2813b459dd2" "54ece5659cc7acdcd529dddd78675c2972a5ac69260af4a6aec517dcea16208b" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "e56ee322c8907feab796a1fb808ceadaab5caba5494a50ee83a13091d5b1a10c" "0155b3b94f6d5bce0275a15bc662be4f6f9f3284f9e469ca4ab1bd67ff9b5222" "2a04368d8ea8e8409a9f95bafaa4770de4562ba014fcc9a08621943f35e63eba" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "3038a172e5b633d0b1ee284e6520a73035d0cb52f28b1708e22b394577ad2df1" default)))
 '(max-specpdl-size 11380)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
