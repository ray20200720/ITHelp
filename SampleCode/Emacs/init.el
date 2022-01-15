;; Linux
;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'load-path "~/Project/ITHelp/SampleCode/Emacs/evil")

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Windows

;; Pure Emacs
;; change default cursor type from block to bar
;;(setq-default cursor-type 'bar)

;; Set up package.el to work with MELPA
(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/"))
;;             '("gnu" . "c:/Users/ray/AppData/Roaming/.emacs.d/emacs-packages/gnu")
;;             '("melpa" . "c:/Users/ray/AppData/Roaming/.emacs.d/emacs-packages/melpa-stable"))

(setq package-archives '(
						                            ("gnu" . "c:/Users/ray/AppData/Roaming/.emacs.d/emacs-packages/gnu/")
													                           ("marmalade" . "c:/Users/ray/AppData/Roaming/.emacs.d/emacs-packages/marmalade")
																			                              ("melpa" . "c:/Users/ray/AppData/Roaming/.emacs.d/emacs-packages/melpa")
																										                            ))

(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
    (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
   ;; custom-set-variables was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
	 ;; Your init file should contain only one such instance.
	  ;; If there is more than one, they won't work right.
	   '(cua-mode t nil (cua-base))
	    '(custom-enabled-themes '(deeper-blue))
		 '(electric-pair-mode t)
		  '(global-company-mode t)
		   '(global-linum-mode t)
		    '(org-agenda-files nil)
			 '(package-selected-packages
				   '(youdao-dictionary magit smex valign csharp-mode evil-tabs flymd markdown-preview-mode ace-window company evil))
			  '(show-paren-mode t))
(custom-set-faces
   ;; custom-set-faces was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
	 ;; Your init file should contain only one such instance.
	  ;; If there is more than one, they won't work right.
	   '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "d:/TODO/work.org"
							 			     "d:/Ray/MyProject/GitHub/ray20140811/Emacs/home.org"
											 			     "d:/Ray/MyProject/GitHub/ray20140811/Emacs/JLPT.org"))
(defun open-init-file()
    (interactive)
	  (find-file "~/.emacs.d/init.el"))

(defun open-my-org-note()
    (interactive)
	  (find-file "d:/Ray/MyProject/GitHub/ray20140811/Emacs/org-mode.org"))

(defun open-my-org-new-file()
    (interactive)
	  (progn (switch-to-buffer-other-window "test.org")
			 	 (erase-buffer)
				 	 (insert-my-org-new-title)))

(defun insert-my-org-new-title()
    (insert "#+Title:\n")
	  (insert "#+Author: Ray\n")
	    (insert "#+Date: \n"))

(defun open-my-all-file()
    (switch-to-buffer-other-window "d:/Ray/MyNote.md")
	  (find-file "d:/Ray/MyNote.md")
	    (find-file "d:/TODO/CTP.md")
		  (find-file "d:/TODO/EDITS/Edits.md")
		    (find-file "d:/TODO/work.org"))


(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "<f3>") 'cua-mode)
(global-set-key (kbd "<f4>") 'open-my-org-note)
(global-set-key (kbd "<f5>") 'open-my-org-new-file)

;;(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;;(setq backup-directory-alist
;;      '(("." . "c:/Users/ray/AppData/Roaming/.emacs.d/backup"))
;;      delete-old-versions t
;;      kept-new-versions 3
;;      version-control t)

;; all backups goto ~/.backups instead in the current directory
;;(setq backup-directory-alist (quote (("." . "~/.emacs.d/backup"))))


(setq default-directory "d:/Ray/MyProject/GitHub/ray20140811/Emacs/")

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))


