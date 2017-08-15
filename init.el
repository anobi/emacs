;;; init.el --- Main init file, duh
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
 '(custom-enabled-themes (quote (mustang)))
 '(custom-safe-themes
   (quote
	("308eb04bfba22cd158a0927362d3a138653755eb7e82d626088df845c77b59c6" "b24ee45778296405489a56484d90901150b32e99c6dc48394184a745491d92f9" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "4154caa8409ff2eb6f74c913741420e7103b9ea26c3c7d1a5a16592d0d2f43e0" "1b1e54d9e0b607010937d697556cd5ea66ec9c01e555bb7acea776471da59055" "c158c2a9f1c5fcf27598d313eec9f9dceadf131ccd10abc6448004b14984767c" "3b31ebd74082c6a3043dfd8112069163978330e21cfc9e6ff2c9798dfd6d6505" "e3bf16af35586816b824bea36188215319b1cceb208d3518700d876c4c1a9cc7" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "abd7719fd9255fcd64f631664390e2eb89768a290ee082a9f0520c5f12a660a8" "be5b03913a1aaa3709d731e1fcfd4f162db6ca512df9196c8d4693538fa50b86" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "80a23d559a5c5343a0882664733fd2c9e039b4dbf398c70c424c8d6858b39fc5" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "a56a6bf2ecb2ce4fa79ba636d0a5cf81ad9320a988ec4e55441a16d66b0c10e0" "fa1f7bdb40327d08bd35a0f5d5d8f13d2a863a8f37c45b96d2439861e944490a" "5b24babd20e58465e070a8d7850ec573fe30aca66c8383a62a5e7a3588db830b" "38e64ea9b3a5e512ae9547063ee491c20bd717fe59d9c12219a0b1050b439cdd" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "8556256eeea0f5b7a5d8af4a36a13c4fabeb287b2b58386255f1b2813b459dd2" "54ece5659cc7acdcd529dddd78675c2972a5ac69260af4a6aec517dcea16208b" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "e56ee322c8907feab796a1fb808ceadaab5caba5494a50ee83a13091d5b1a10c" "0155b3b94f6d5bce0275a15bc662be4f6f9f3284f9e469ca4ab1bd67ff9b5222" "2a04368d8ea8e8409a9f95bafaa4770de4562ba014fcc9a08621943f35e63eba" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "3038a172e5b633d0b1ee284e6520a73035d0cb52f28b1708e22b394577ad2df1" default)))
 '(max-specpdl-size 11380)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
	(magit dark-mint-theme firebelly-theme flatland-black-theme flatland-theme green-phosphor-theme green-screen-theme kaolin-theme material-theme mustang-theme phoenix-dark-mono-theme quasi-monochrome-theme zenburn-theme yasnippet slime racket-mode pyvenv paredit org-pomodoro helm-projectile helm-company haskell-mode flycheck evil cyberpunk-theme)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
