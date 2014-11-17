;; Emacs Starter Kit 2
;; https://github.com/technomancy/emacs-starter-kit

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ;; ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
                         ))
(package-initialize)

;; (add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '( 
                      ;; starter kit
                      starter-kit starter-kit-lisp starter-kit-eshell starter-kit-bindings
                                  ;; other file types
                                  csv-mode
                                  log4j-mode
                                  ;; scala
                                  scala-mode2
                                  ;; clojure
                                  clojure-mode
                                  cider
                                  clojure-cheatsheet
                                  clj-refactor
                                  ;;nrepl
                                  ac-nrepl
                                  ;;nrepl-ritz
                                  ;;cider-nrepl
                                  ;;cider-browse-ns
                                  ;; lisp
                                  slime
                                  ;; java
                                  jtags
                                  ;; haskell
                                  haskell-mode
                                  ;; web
                                  multi-web-mode
                                  skewer-mode
                                  js2-mode
                                  simple-httpd
                                  impatient-mode
                                  ;; display
                                  hideshowvis
                                  rainbow-delimiters
                                  xterm-frobs
                                  color-theme ;;color-theme-library
                                  moe-theme
                                  ;;color-theme-sanityinc-solarized calmer-forest-theme zenburn-theme anti-zenburn-theme underwater-theme base16-theme tron-theme tango-2-theme tangotango-theme color-theme-sanityinc-tomorrow color-theme-wombat
                                  hexrgb
                                  highline
                                  highlight-symbol
                                  auto-highlight-symbol
                                  ;; git
                                  magit git-gutter gitconfig-mode
                                  ;; svn
                                  dsvn
                                  ;; editing
                                  all
                                  auto-complete
                                  cdlatex
                                  drag-stuff
                                  iedit
                                  yasnippet
                                  ;; communication
                                  ssh
                                  tramp
                                  w3m
                                  markdown-mode
                                  adoc-mode
                                  org
                                  org-trello
                                  ;;epresent
                                  ;; org-present
                                  ;; org-presie
                                  ;; ox-html5slide
                                  ;;org-reveal
                                  ;;??? org-latex
                                  ;; file management
                                  ;;openwith 
                                  dired+ ;;???dired-external-apps
                                  ;;;;??? dired-x
                                  dired-details+
                                  ;; emacs navigation and command-management
                                  imenu-anywhere
                                  guru-mode
                                  ;;??? uniquify
                                  ;; vim
                                  evil
                                  evil-paredit
                                  lispy
                                  ido-vertical-mode
                                  ;;key-chord
                                  ;; programming -- general
                                  flycheck
                                  ess
                                  ess-R-data-view
                                  ess-R-object-popup
                                  r-autoyas
                                  ;; other
                                  ;;google-maps
                                  google-translate
                                  mediawiki 
                                  pandoc-mode
                                  howdoi
                                  gnomenm
                                  look-mode
                                  twittering-mode
                                  elfeed
                                  aggressive-indent
                                  dash dash-at-point dash-functional
                                  s
                                  origami)
  "A list of packages to ensure are installed at launch.")

;; Add in your own as you wish:
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))



;;;;;;;; MANUAL INSTALLATION

(add-to-list 'load-path "~/.emacs.d/manual-installations/")
(add-to-list 'load-path "~/installations/deepin-emacs/site-lisp/extensions/emacs-deferred") 
(add-to-list 'load-path "~/installations/deepin-emacs/site-lisp/extensions/emacs-epc") 
(add-to-list 'load-path "~/installations/deepin-emacs/site-lisp/extensions/webkit")
;;;;;;;; NAVIGATION KEYBINDINGS

(global-set-key (kbd "C-.") 'imenu-anywhere)

(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "M-0") 'other-window)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)


(defun new-shell ()
  (interactive)
  (shell
   (generate-new-buffer
    (generate-new-buffer-name "*shell*"))))

(global-set-key (kbd "C-c s") 'new-shell)

;;;;;;;; EVIL-MODE
;; See emacs-wiki, http://stackoverflow.com/a/16226006

(require 'evil)
;; (define-key evil-normal-state-map "\C-s" 'isearch-forward-regexp)
;; (define-key evil-insert-state-map "\C-s" 'isearch-forward-regexp)
;; (define-key evil-visual-state-map "\C-s" 'isearch-forward-regexp)
;; (define-key evil-normal-state-map "\C-r" 'isearch-backward-regexp)
;; (define-key evil-insert-state-map "\C-r" 'isearch-backward-regexp)
;; (define-key evil-visual-state-map "\C-r" 'isearch-backward-regexp)
;; (define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
;; (define-key evil-insert-state-map "\C-e" 'end-of-line)
;; (define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
;; (define-key evil-normal-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-insert-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-insert-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-normal-state-map "\C-b" 'evil-backward-char)
;; (define-key evil-insert-state-map "\C-b" 'evil-backward-char)
;; (define-key evil-visual-state-map "\C-b" 'evil-backward-char)
;; (define-key evil-normal-state-map "\C-d" 'evil-delete-char)
;; (define-key evil-insert-state-map "\C-d" 'evil-delete-char)
;; (define-key evil-visual-state-map "\C-d" 'evil-delete-char)
;; (define-key evil-normal-state-map "\C-n" 'evil-next-line)
;; (define-key evil-insert-state-map "\C-n" 'evil-next-line)
;; (define-key evil-visual-state-map "\C-n" 'evil-next-line)
;; (define-key evil-normal-state-map "\C-p" 'evil-previous-line)
;; (define-key evil-insert-state-map "\C-p" 'evil-previous-line)
;; (define-key evil-visual-state-map "\C-p" 'evil-previous-line)
;; (define-key evil-normal-state-map "\C-w" 'evil-delete)
;; (define-key evil-insert-state-map "\C-w" 'evil-delete)
;; (define-key evil-visual-state-map "\C-w" 'evil-delete)
;; (define-key evil-normal-state-map "\C-y" 'yank)
;; (define-key evil-insert-state-map "\C-y" 'yank)
;; (define-key evil-visual-state-map "\C-y" 'yank)
;; (define-key evil-normal-state-map "\C-k" 'kill-line)
;; (define-key evil-insert-state-map "\C-k" 'kill-line)
;; (define-key evil-visual-state-map "\C-k" 'kill-line)
;; (define-key evil-normal-state-map "Q" 'call-last-kbd-macro)
;; (define-key evil-visual-state-map "Q" 'call-last-kbd-macro)
;; (define-key evil-normal-state-map (kbd "TAB") 'evil-undefine)

(defun evil-undefine ()
 (interactive)
 (let (evil-mode-map-alist)
   (call-interactively (key-binding (this-command-keys)))))


(setq evil-want-fine-undo t)

(setq evil-default-cursor t)

(global-set-key (kbd "C-c i") 'iedit-mode)

(require 'lispy)
(global-set-key (kbd "C-c ;")
                (lambda ()
                  (interactive)
                  (if lispy-mode
                      (setq lispy-mode nil)
                    (progn (setq lispy-mode t)
                           (paredit-backward-up)))))


(require 'evil-paredit)
(add-hook 'evil-mode-hook 'evil-paredit-mode)

(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-char-mode)
(define-key evil-emacs-state-map (kbd "C-[") 'evil-normal-state)

(add-hook 'evil-insert-state-entry-hook 'evil-emacs-state)

;; https://github.com/antono/emacs.d/blob/master/local/my-evil.el
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("blue" box))
(setq evil-visual-state-cursor '("blue" box))
(setq evil-insert-state-cursor '("blue" bar))
(setq evil-motion-state-cursor '("blue" box))

;; from emacswiki
;;(key-chord-define evil-normal-state-map ",," 'evil-force-normal-state)
;;(key-chord-define evil-visual-state-map ",," 'evil-change-to-previous-state)
;;(key-chord-define evil-insert-state-map ",," 'evil-normal-state)
;;(key-chord-define evil-replace-state-map ",," 'evil-normal-state)
;;(key-chord-define evil-emacs-state-map ",," 'evil-normal-state)
;;(key-chord-mode 1)
;;(setq key-chord-two-keys-delay 0.1)
;;(setq key-chord-one-key-delay 0.2)


;;;;;;; BUFFER MANAGEMENT KEYBINDINGS

(global-set-key (kbd "M-5") 'revert-buffer)
(global-set-key (kbd "M-6") 'recover-this-file)

;;;;;;; DISPLAY MANAGEMENT KEYBINDINGS

(defun set-dark () (interactive)
  (if window-system
      (progn (set-background-color "#333333")
             (set-foreground-color "#cccccc")
             (set-cursor-color "#99bbdd"))
    (progn
      (xterm-set-background-color "#cccccc")
      (xterm-set-foreground-color "#333333")
      (xterm-set-cursor-color "#99bbdd"))
    ))
(defun set-light () (interactive)
  (if window-system
      (progn
        (set-background-color "#cccccc")
        (set-foreground-color "#333333")
        (set-cursor-color "#664422"))
    (progn (xterm-set-background-color "#333333")
           (xterm-set-foreground-color "#cccccc")
           (xterm-set-cursor-color "#664422"))))
(global-set-key (kbd "<f1>") 'set-light)
(global-set-key (kbd "<f2>") 'set-dark)

(defun set-default-colors () (interactive)
  (progn
    (color-theme-initialize)
    (color-theme-high-contrast)
    (color-theme-jsc-light2)
    (set-light)))
(global-set-key (kbd "<f5>") 'set-default-colors)

(set-default-colors)

(global-set-key (kbd "M-7") 'visual-line-mode)
(global-set-key (kbd "M-8") 'toggle-truncate-lines)
(global-set-key (kbd "M-9") 'hl-line-mode)
(global-set-key (kbd "C-c M-1") 'randomize-buffer-background)
(global-set-key (kbd "C-c M-2") 'toggle-mode-line)
;(global-set-key (kbd "<f7>") 'visual-line-mode)
;(global-set-key (kbd "<f8>") 'toggle-truncate-lines)
;(global-set-key (kbd "<f9>") 'hl-line-mode)
;(global-set-key (kbd "<f11>") 'randomize-buffer-background)
;(global-set-key (kbd "<f12>") 'toggle-mode-line)

;; (global-set-key (kbd "<f1>")
;;                 (lambda () (interactive)
;;                   (load-file "/home/danny/.emacs.d/elpa/anti-zenburn-theme-20131119.2333/anti-zenburn-theme.el")))
;; (global-set-key (kbd "<f2>")
;;                 (lambda () (interactive)
;;                   (load-file "/home/danny/.emacs.d/elpa/zenburn-theme-20131123.1547/zenburn-theme.el")))


(global-set-key (kbd "M-1")
                (lambda () (interactive)
                  (xterm-set-background-color "#333333")
                  (xterm-set-foreground-color "#cccccc")
                  (xterm-set-cursor-color "#664422")
                  ))
(global-set-key (kbd "M-2")
                (lambda () (interactive)
                  (xterm-set-background-color "#cccccc")
                  (xterm-set-foreground-color "#333333")
                  (xterm-set-cursor-color "#99bbdd")))

(set-light)


;;;;;;;; EXTERNAL COMMANDS KEYBINDINGS
(global-set-key (kbd "C-c d") (lambda() (interactive) (message (format-time-string "%c" (current-time)))))

;;;;;;;; FRAME RELATED KEYBINDINGS
(global-set-key (kbd "C-c z") (lambda () (interactive) (delete-frame)))

;;;;;;;; ELECTRIC PAIRS

(electric-pair-mode)

;;;;;;;; AUTO-COMPLETE

(require 'auto-complete)
;;(auto-complete-mode)

;;;;;;;; YASNIPPET

(require 'yasnippet)

;;;;;;;; FLYCHECK

(require 'flycheck)
(flycheck-mode)

;;;;;;;; EDIFF
;; http://stackoverflow.com/a/1680994
;; ("Is there any way to get Ediff to not open its navigation interface in an external window?")
(if (locate-library "ediff")
    (progn
      (autoload 'ediff-files "ediff")
      (autoload 'ediff-buffers "ediff")
       (eval-after-load "ediff" '(progn
  			  (message "doing ediff customisation")
			  (setq diff-switches               "-u"
				ediff-custom-diff-options   "-U3"
				ediff-split-window-function 'split-window-horizontally
				ediff-window-setup-function 'ediff-setup-windows-plain)
			  (add-hook 'ediff-startup-hook 'ediff-toggle-wide-display)
			  (add-hook 'ediff-cleanup-hook 'ediff-toggle-wide-display)
			  (add-hook 'ediff-suspend-hook 'ediff-toggle-wide-display)))))


;;;;;;;; BIDI

(defun bidi ()
  (interactive)
  (setq bidi-display-reordering t)
)
(defun unbidi ()
  (interactive)
  (setq bidi-display-reordering nil)
)
(defun bidi-fix-ltr ()
  (interactive)
  (setq bidi-paragraph-direction 'left-to-right)
)
(defun bidi-fix-rtl ()
  (interactive)
  (setq bidi-paragraph-direction 'right-to-left)
)
(defun bidi-unfix ()
  (interactive)
  (setq bidi-paragraph-direction nil)
)

;;;;;;;; JAVA-SETUP

(let ((filename "~/.emacs.d/java-setup.el"))
  (if (file-exists-p filename)
      (load-file filename)))

;;;;;;;; WEB DEV
(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

;; (require 'simple-httpd)
;; (setq httpd-root "/var/www")
;; (httpd-start)
;; (require 'skewer-mode)
;; (add-hook 'js2-mode-hook 'skewer-mode)
;; (add-hook 'css-mode-hook 'skewer-css-mode)
;; (add-hook 'html-mode-hook 'skewer-html-mode)


;;;;;;;; SVN
(require 'vc-svn)
(require 'dsvn)

;;;;;;;; GIT-GUTTER


;; If you enable global minor mode
(global-git-gutter-mode t)

;; If you enable git-gutter-mode for some modes
;; (add-hook 'ruby-mode-hook 'git-gutter-mode)

(global-set-key (kbd "C-c u t") 'git-gutter:toggle)
(global-set-key (kbd "C-c u =") 'git-gutter:popup-diff)

;; Jump to next/previous hunk
(global-set-key (kbd "C-c u p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-c u n") 'git-gutter:next-hunk)

;; Revert current hunk
(global-set-key (kbd "C-c u r") 'git-gutter:revert-hunk)


;;;;;;;; CSV
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)


;;;;;;;; ORG-MODE (TODO: organize)

(setq org-list-allow-alphabetical t)

(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

;; (load-file "~/.emacs.d/plugins/latex-live-preview.el") 

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/tasks.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
        ))


;;(setq org-default-notes-file (concat org-directory "~/myorg.org"))


;; (make-face 'org-base-face)
;;(set-face-background 'org-base-face "navy")

(add-hook
 'org-mode-hook
 (lambda ()
;;   (highline-mode)
   ;; (buffer-face-mode t)
   ;; (buffer-face-set 'org-base-face)
   (bidi)
   (local-set-key (kbd "<C-tab>") 'other-window)  ; Avoid org-mode's binding to (org-force-cycle-archived). (Somehow, local-unset-key was not enough here -- another specific binding took place.)
   (bidi-unfix)
   )
 )

(make-face 'agenda-base-face)
;;(set-face-background 'agenda-base-face "orchid4")

(add-hook 
 'org-finalize-agenda-hook 
 (lambda () 
   ;; (highline-mode)
;;   (buffer-face-mode t)
;;   (buffer-face-set 'agenda-base-face)
   (bidi)
   (bidi-unfix)
   )
 )


;; http://members.optusnet.com.au/~charles57/GTD/mydotemacs.txt
;; .emacs file     Selected entries from ~/.emacs.el
;; file of Charles Cave to run org-mode
(setq org-agenda-files (quote (
			       ;;"~/org/myorg.org" 
			       "~/org/tasks.org"
			       )))
;;(setq org-agenda-ndays 7)
(setq org-agenda-repeating-timestamp-show-all nil)
(setq org-agenda-restore-windows-after-quit t)
(setq org-agenda-show-all-dates t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
;;(setq org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
(setq org-agenda-start-on-weekday nil)
;;(setq org-agenda-todo-ignore-deadlines t)
;;(setq org-agenda-todo-ignore-scheduled t)
;;(setq org-agenda-todo-ignore-with-date t)
;;(setq org-agenda-window-setup (quote other-window))
;;(setq org-deadline-warning-days 7)
;;(setq org-log-done (quote (done)))
;;(setq org-refile-targets (quote (("newgtd.org" :maxlevel . 1) ("someday.org" :level . 2))))
;;(setq org-reverse-note-order nil)
;;(setq org-tags-column -78)
;;(setq org-time-stamp-rounding-minutes 1)
;;(setq org-use-fast-todo-selection t)

;;(setq org-tags-match-list-sublevels 'indented)
;;(setq org-use-tag-inheritance nil)


(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;(setq org-agenda-include-diary nil)
;;(setq org-timeline-show-empty-dates t)
;;(setq org-insert-mode-line-in-empty-file t)

(setq org-directory "~/org/")
(setq org-default-notes-file "~/.notes")

(setq org-agenda-custom-commands
'(
  ("P" "Projects"   
   ((tags "PROJECT")))
  ("H" "Office and Home Lists"
   ((agenda)
    (tags-todo "@OFFICE")
    (tags-todo "@HOME")
    (tags-todo "@COMPUTER")
    ))
  ("D" "Daily Action List"
   (
    (agenda "" ((org-agenda-ndays 1)
		(org-agenda-sorting-strategy
		 (quote ((agenda time-up priority-down tag-up) )))
		(org-deadline-warning-days 0)
		))))
  )
)



(setq org-return-follows-link t)

(setq org-export-with-toc nil)
(setq org-export-author-info nil)


;; (add-to-list 'load-path "~/.emacs.d/elpa/org-present-20130426.1155")
;; (autoload 'org-present "org-present" nil t)
;; (add-hook 'org-present-mode-hook
;;           (lambda ()
;;             (org-present-big)
;;             (org-display-inline-images)))

;; (add-hook 'org-present-mode-quit-hook
;;           (lambda ()
;;             (org-present-small)
;;             (org-remove-inline-images)))



;;(add-to-list 'load-path "/home/danny/.emacs.d/elpa/cdlatex-4.0/")
;;(require 'cdlatex)

;;(openwith-mode t)

(setq dired-dwin-target t)

(setq dired-recursive-copies (quote always))
(setq dired-recursive-deletes (quote top))

(setq dired-dwim-target t)

;; (setq dired-external-apps-list 
;;       (append (list "libreoffice" "xpdf" "evince" "vlc" "eog" "gimp") dired-external-apps-list))
;; (dired-external-apps-generate-wrapper-functions-for-apps) ;; reinitialize after changes
(setq dired-external-apps-save-to-registers-flag t)

;; ;; http://lists.gnu.org/archive/html/help-gnu-emacs/2002-10/msg00556.html
(defun dired-copy-filename ()
  "push the path and filename of the file under the point to the kill ring"
  (interactive)
  (message "added %s to kill ring" (kill-new (dired-get-filename))))

(add-hook 'dired-mode-hook
                 '(lambda ()
		    ;;(highline-mode)
		    (bidi)
		    (bidi-fix-ltr)
		    (define-key dired-mode-map "c"
		      'dired-copy-filename
		    )
		    ;; (define-key dired-mode-map "L"
		    ;;   'dired-external-apps-open-with-libreoffice
		    ;;   )
		    ;; (define-key dired-mode-map "P"
		    ;;   'dired-external-apps-open-with-xpdf
		    ;;   )
		    ;; (define-key dired-mode-map "E"
		    ;;   'dired-external-apps-open-with-evince
		    ;;   )
		    ;; )
		 ))


;; http://www.emacswiki.org/emacs/DiredDoShellAsynchronous
(defun dired-shell-stuff-it (command file-list on-each &optional raw-arg)
  ;; "Make up a shell command line from COMMAND and FILE-LIST.
  ;; If ON-EACH is t, COMMAND should be applied to each file, else
  ;; simply concat all files and apply COMMAND to this.
  ;; FILE-LIST's elements will be quoted for the shell."
  ;; Might be redefined for smarter things and could then use RAW-ARG
  ;; (coming from interactive P and currently ignored) to decide what to do.
  ;; Smart would be a way to access basename or extension of file names.
  (let* ((async "")
  	 (stuff-it
  	  (progn
  	    (when (string-match "[ \t]*&[ \t]*\\'" command)
  	      (setq async "&")
  	      (setq command (substring command 0 (match-beginning 0))))
  	    (if (or (string-match dired-star-subst-regexp command)
  		    (string-match dired-quark-subst-regexp command))
  		(lambda (x)
  		  (let ((retval command))
  		    (while (string-match
  			    "\\(^\\|[ \t]\\)\\([*?]\\)\\([ \t]\\|$\\)" retval)
  		      (setq retval (replace-match x t t retval 2)))
  		    retval))
  	      (lambda (x) (concat command dired-mark-separator x async))))))
    (if on-each
  	(mapconcat stuff-it (mapcar 'shell-quote-argument file-list) ";")
      (let ((files (mapconcat 'shell-quote-argument
  			      file-list dired-mark-separator)))
  	(if (> (length file-list) 1)
  	    (setq files (concat dired-mark-prefix files dired-mark-postfix)))
  	(funcall stuff-it files)))))


(setq wdired-allow-to-change-permissions t)


;;;;;;;; CODING CONVENTIONS

;; https://www.bunkus.org/blog/2009/12/switching-identifier-naming-style-between-camel-case-and-c-style-in-emacs/
(defun mo-toggle-identifier-naming-style ()
  "Toggles the symbol at point between lisp-style naming,
    e.g. `hello-world-string', and camel case,
    e.g. `HelloWorldString'."
  (interactive)
  (let* ((symbol-pos (bounds-of-thing-at-point 'symbol))
         case-fold-search symbol-at-point cstyle regexp func)
    (unless symbol-pos
      (error "No symbol at point"))
    (save-excursion
      (narrow-to-region (car symbol-pos) (cdr symbol-pos))
      (setq cstyle (string-match-p "-" (buffer-string))
            regexp (if cstyle "\\(?:\\-<\\|-\\)\\(\\w\\)" "\\([A-Z]\\)")
            func (if cstyle
                     'capitalize
                   (lambda (s)
                     (concat (if (= (match-beginning 1)
                                    (car symbol-pos))
                                 ""
                               "-")
                             (downcase s)))))
      (goto-char (point-min))
      (while (re-search-forward regexp nil t)
        (replace-match (funcall func (match-string 1))
                       t nil))
      (widen))))
(define-key global-map "\C-c-" 'mo-toggle-identifier-naming-style)


;;;;;;;; ORG-TRELLO
(require 'org-trello)


;;;;;;;; BABEL
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . nil)
   (clojure . t)
   (python . t)
   (R . t)
   (sh . t)
   (latex . t)
))

(setq org-export-babel-evaluate nil)
(setq org-confirm-babel-evaluate nil)

;;;;;;;; BABEL WITH CLOJURE
;; ;; https://groups.google.com/forum/?fromgroups=#!topic/clojure/B3Rc_HfnlQI
;; ;; Add org-babel support
;; (when (locate-file "ob" load-path load-suffixes)
;;   (require 'ob)
;;   (require 'ob-tangle)
;;   (require 'ob-clojure)
;;   (org-babel-do-load-languages
;;    'org-babel-load-languages
;;    '((emacs-lisp . t)
;;      (clojure    . t))))

;; ;; Pull in the htmlize library for pretty source code in HTML output
;; ;;(require 'htmlize)

;; ;; fontify source code in org-latex export to PDF
;; (require 'org-latex)
;; (setq org-export-latex-listings 'minted)
;; (add-to-list 'org-export-latex-packages-alist '("" "minted"))
;; (setq org-export-latex-custom-lang-environments
;;       '(
;;         (emacs-lisp "common-lispcode")
;;         ))
;; (setq org-export-latex-minted-options
;;       '(("fontsize" "\\scriptsize")
;;         ("linenos" "false")))
;; (setq org-latex-to-pdf-process '("pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f"
;;                                  "bibtex %b"
;;                                  "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f"
;;                                  "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f"))



  
;;;;;;;; LOG4J-MODE

(autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode))

(add-hook
 'log4j-mode-hook
 (lambda ()
   (define-key log4j-mode-local-map [(control down)] 'log4j-forward-record)
   (define-key log4j-mode-local-map [(control up)] 'log4j-backward-record)))



;;;;;;;; DISPLAY

(display-time-mode)

;; http://stackoverflow.com/questions/6083496/how-do-you-specify-a-fallback-font-in-emacs
;; Use a specific font for Hebrew, since some of the mono fots are actually not mono in Hebrew.
(set-fontset-font "fontset-default" '(#x5d0 . #x5ff) "Miriam Mono CLM:bold")



(defun randomize-buffer-background ()
  "changes current buffer's background to a random color (close to the defualt of this face"
  (interactive)
  (progn
    (require 'hexrgb)
    (setq face-symbol (gensym "face-"))
    (make-face face-symbol)
    (buffer-face-set face-symbol)
    ;;(set-face-background face-symbol (color-darken-name "black" (- (random 20))))
    (setq rgb (mapcar 
	       (function (lambda (x) (let 
                                    ((y (* 1 (+ x (/ (- (random 100) 50) 1000.0)))))
                                  (if 
                                      (> y 1) 
                                      1 ;;(- 2 y)
                                    (if 
                                        (< y 0)
                                        0 ;;(- y)
                                      y)))))
	       (color-name-to-rgb (face-background 'default))))
    (setq new-color 
	  (hexrgb-rgb-to-hex 
	   (car rgb)
	   (car (cdr rgb))
	   (car (cdr (cdr rgb)))))
    (set-face-background face-symbol new-color)
    (message (concat "changed to " new-color))))
;;(add-hook 'buffer-list-changed-hook 'randomize-buffer-background)




(set-fringe-style '(0 . 0))

;; (color-theme-jb-simple)
;; (color-theme-jedit-grey)
;; (require 'calmer-forest-theme)
;; (color-theme-calm-forest)

;;;;;;;; BACKUP
;; http://stackoverflow.com/a/151946
(setq backup-directory-alist `(("." . "~/.saves")))


;;;;;;;; IIMAGE
(defun refresh-iimages ()
  "Only way I've found to refresh iimages (without also recentering)"
  (interactive)
  (clear-image-cache nil)
  (iimage-mode nil)
  (iimage-mode t))

(add-to-list 'compilation-finish-functions 
             (lambda (buffer msg)
               (save-excursion
                 (set-buffer buffer)
                 (refresh-iimages))))

;;;;;;;; MODE-LINE

;; http://stackoverflow.com/questions/5079466/hide-emacs-echo-area-during-inactivity
(defun toggle-mode-line () "toggles the modeline on and off"
  (interactive) 
  (setq mode-line-format
	(if (equal mode-line-format nil)
	    (default-value 'mode-line-format)
	  nil))
  (redraw-display))

;; http://rwiki.sciviews.org/doku.php?id=guides:ess-tips
; Enable which-func
(which-func-mode)
(add-to-list 'which-func-modes 'ess-mode)
; Modeline format
(setq-default mode-line-format
 '("(%l,%c) %b "
   global-mode-string " (" mode-name minor-mode-alist "%n)"
   (which-func-mode (" " which-func-format ""))))


;; https://gist.githubusercontent.com/anonymous/4434524/raw/dce9687dc23a008e082024632e688e3222b9d272/clean-mode-line.el

(defvar mode-line-cleaner-alist
  `((auto-complete-mode . " α")
    (git-gutter-mode . " γ")
    (paredit-mode . " π")
    (eldoc-mode . " ε")
    (nrepl-mode . " ν")
    (nrepl-interaction-mode . " νι")
    ;; Major modes
    (clojure-mode . "λ")
    (emacs-lisp-mode . "el"))
  "Alist for `clean-mode-line'.
When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")

(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;;;;;;; ENSIME

;; ;; load the ensime lisp code...
;; (add-to-list 'load-path "/home/we/installations/ensime/elisp/")
;; (require 'ensime)

;; ;; This step causes the ensime-mode to be started whenever
;; ;; scala-mode is started for a buffer. You may have to customize this step
;; ;; if you're not using the standard scala mode.
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; ;; assuming that this is $SCALA_HOME:
;; (push "/usr/bin/" exec-path)

;; ;; http://stackoverflow.com/a/15720945
;; (setq ensime-inf-default-cmd-line '("sbt" "console"))


;;;;;;;; REPL EVAL

;; ;; http://kazyos.hatenablog.com/entry/2014/04/13/094951

;; (defun my-repl-eval (repl-buffer-name fun-repl-start fun-repl-send defun-string)
;;     "Evaluates expression using a REPL specified by repl-buffer-name. Sends
;; expression using a function specified in fun-repl-start. A function definition
;;  is detected by a string specified in defun-string and handled accordingly."
;;   (interactive)
;;   (let* (;; Save current point
;; 	 (initial-point (point)))
;;     ;; defined in 200_my-misc-functions-and-bindings.el
;;     (my-repl-start repl-buffer-name fun-repl-start)
;;     ;; Check if selection is present
;;     (if (and transient-mark-mode mark-active)
;; 	;; If selected, send to ielm
;; 	(funcall fun-repl-send (point) (mark))
;;       ;; If not selected, do all the following
;;       ;; Move to the beginning of line
;;       (beginning-of-line)
;;       ;; Check if the first word is def (function def)
;;       (if (looking-at defun-string)
;; 	  ;; Use eval-defun if on defun
;; 	  (progn
;; 	    ;; Set a mark there
;; 	    (set-mark (line-beginning-position))
;; 	    ;; Go to the end
;; 	    (forward-sexp)
;; 	    ;; Send to ielm
;; 	    (funcall fun-repl-send (point) (mark))
;; 	    ;; Go to the next expression
;; 	    (forward-sexp))
;; 	;; If it is not def, do all the following
;; 	;; Go to the previous position
;; 	(goto-char initial-point)
;; 	;; Go back one S-exp. (paredit dependency)
;; 	(paredit-backward)
;; 	;; Loop
;; 	(while (not (equal (current-column) 0))
;; 	  ;; Go back one S-exp. (paredit dependency)
;; 	  (paredit-backward))
;; 	;; Set a mark there
;; 	(set-mark (line-beginning-position))
;; 	;; Go to the end of the S-exp starting there
;; 	(forward-sexp)
;; 	;; Eval the S-exp before
;; 	(funcall fun-repl-send (point) (mark))
;; 	;; Go to the next expression
;; 	(forward-sexp)
;; 	))))

;; (defun not-implemented ()
;;   (interactive)
;;   (shell-command "notify-send not implemented"))

;; (defun my-send-clojure (start end)
;;     "Sends expression to *cider-repl* and have it evaluated."

;;   (let* (;; Assign the current buffer
;; 	 (script-window (selected-window))
;; 	 ;; Assign the region as a string
;; 	 (region-string (buffer-substring-no-properties start end)))

;;     ;; Change to cider REPL
;;     (cider-switch-to-repl-buffer)
;;     ;; Move to end of buffer
;;     (end-of-buffer)
;;     ;; ;; Set mark from beginning
;;     ;; (set-mark (line-beginning-position))
;;     ;; ;; Delete the region
;;     ;; (delete-region (point) (mark))
;;     ;; ;; Unset transient mark
;;     ;; (setq mark-active nil)
;;     ;; Insert the string
;;     (insert region-string)
;;     ;; Execute
;;     (cider-repl-return)
;;     ;; Come back to the script
;;     (select-window script-window)
;;     ;; Return nil
;;     nil
;;     ))

;; (my-repl-eval
;;  ;; repl-buffer-name
;;  "*shell*"
;;  ;; fun-repl-start
;;  #'note-implemented
;;  ;; fun-repl-send
;;  #'my-send-clojure
;;  ;;defun-string
;;  "(defn ")
;; ;;

;;;;;;;; CLOJURE COOKBOOK

(defun increment-clojure-cookbook ()
  "When reading the Clojure cookbook, find the next section, and
close the buffer. If the next section is a sub-directory or in
the next chapter, open Dired so you can find it manually."
  (interactive)
  (let* ((cur (buffer-name))
	 (split-cur (split-string cur "[-_]"))
	 (chap (car split-cur))
	 (rec (car (cdr split-cur)))
	 (rec-num (string-to-number rec))
	 (next-rec-num (1+ rec-num))
	 (next-rec-s (number-to-string next-rec-num))
	 (next-rec (if (< next-rec-num 10)
		       (concat "0" next-rec-s)
		     next-rec-s))
	 (target (file-name-completion (concat chap "-" next-rec) "")))
    (progn 
      (if (equal target nil)
	  (dired (file-name-directory (buffer-file-name)))
	(find-file target))
      (kill-buffer cur))))

(add-hook 'adoc-mode-hook 'cider-mode)

;;;;;;;; CLOJURE


;; (add-to-list 'load-path "~/.emacs.d/manual-installations/monroe/")
;; (require 'monroe)
;; (add-hook 'clojure-mode-hook 'clojure-enable-monroe)


(require 'cider)

;; ;;(setq nrepl-popup-stacktraces nil)
;; ;;(add-to-list 'same-window-buffer-names "*nrepl*")
;; ;;(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
;; (add-hook 'cider-repl-mode-hook 'auto-complete-mode)

;; (add-hook 'nrepl-interaction-mode-hook 'my-nrepl-mode-setup)
;; (defun my-nrepl-mode-setup ()
;;   (require 'nrepl-ritz))

;; make cider repl use clojure font lock:
(setq cider-repl-use-clojure-font-lock t)

;; Limiting output size, combining
;; https://github.com/clojure-emacs/nrepl.el/issues/30
;; https://gist.github.com/jonneale/5669318
;; (What is the difference between nrepl-send-string-sync to
;; nrepl-interactive-eval ?).
;;
(defun nrepl-limit-print-length ()
  (interactive)
  (nrepl-send-string-sync "(do (set! *print-length* 128) (set! *print-level* 64))" "clojure.core"))
(defun nrepl-unlimit-print-length ()
  (interactive)
  (nrepl-send-string-sync "(set! *print-length* nil) (set! *print-level* nil)" "clojure.core"))
(defun my-nrepl-connected-hook ()
  (nrepl-limit-print-length))
(add-hook 'nrepl-connected-hook 'my-nrepl-connected-hook)



;; Suggestion of:
;; http://stackoverflow.com/questions/13103177/nrepl-el-how-to-eval-clojure-buffer-form-to-nrepl-buffer-instead-of-echo-area
;; commented out:
;; (defun my-interactive-eval-to-repl (form)
;;   (let ((buffer nrepl-repl-buffer))
;;     (nrepl-send-string form (nrepl-handler buffer) nrepl-buffer-ns)))
;; I
;; my variation:
(defun find-nrepl-buffer-name-corresponding-to-default-nrepl-connection ()
  (replace-regexp-in-string
   "nrepl"
   "cider-repl"
  (replace-regexp-in-string
   "-connection"
   ""
   (first nrepl-connection-list))))
(defun my-interactive-eval-to-repl-with-prefix-and-suffix (prefix form suffix)
  (let ((orig-buffer (current-buffer)))
    (progn
      (switch-to-buffer (find-nrepl-buffer-name-corresponding-to-default-nrepl-connection))
      ;; TODO: How not to assume this specific name?
      ;; nrepl-repl-buffer seems not to work.
      (cider-repl--replace-input (concat prefix form suffix))
      (cider-repl-return)
      (switch-to-buffer orig-buffer))))
(defun my-interactive-eval-to-repl (form)
  (my-interactive-eval-to-repl-with-prefix-and-suffix "" form ""))
(defun my-interactive-eval-def-to-repl (form)
  (my-interactive-eval-to-repl-with-prefix-and-suffix "(def " form ")"))
;; same as original suggestion from here:
(defun my-eval-last-expression-to-repl ()
  (interactive)
  (my-interactive-eval-to-repl
   (if mark-active
	(buffer-substring (region-beginning) (region-end))
     (cider-last-expression))))
(defun my-eval-def-last-expression-to-repl ()
  (interactive)
  (my-interactive-eval-def-to-repl
   (if mark-active
       (buffer-substring (region-beginning) (region-end))
     (cider-last-expression))))
(defun my-eval-combination0 ()
  (interactive)
  (mark-sexp)
  (my-eval-last-expression-to-repl)
  (next-line)
  (while (= 32 (char-after)) (next-line)))
(defun my-eval-combination1 ()
  (interactive)
  (mark-sexp 2)
  (my-eval-def-last-expression-to-repl)
  (next-line)
  (while (= 32 (char-after)) (next-line)))
(defun cider-repl-print-stack-trace ()
  (interactive)
  (my-interactive-eval-to-repl  "(clojure.stacktrace/print-stack-trace *e)"))
(defun cider-repl-repload ()
  (interactive)
  (my-interactive-eval-to-repl "(use 'repload) (repload)"))
(defun cider-repl-add-standard-tools ()
  (interactive)
  (my-interactive-eval-to-repl "(use '[clojure pprint repl])"))
;(cider-repl-add-shortcut "add standard tools" 'cider-repl-add-standard-tools)
;; keybindings:
;; (add-hook 'clojure-mode-hook
;; 	  '(lambda()
;; 	     ;; (highline-mode)
;;              (local-set-key [(shift return)] 'my-eval-last-expression-to-repl)
;;              ;; (local-set-key (kbd "C-c c")  'my-eval-last-expression-to-repl)
;;              (local-set-key [(control shift return)] 'my-eval-def-last-expression-to-repl)
;;              (local-set-key [(control meta return)] 'my-eval-combination0)
;;              (local-set-key [(control meta shift return)] 'my-eval-combination1)
;;              (local-set-key (kbd "C-z") 'my-eval-combination0)
;;              (local-set-key (kbd "C-q") 'my-eval-combination1)))


;; ;; ;; https://github.com/vitalreactor/nrepl-inspect
;; ;; (add-to-list 'load-path "/home/we/.emacs.d/manual-installations/nrepl-inspect/")
;; ;; (require 'nrepl-inspect)


;; ;;;;
;; ;; http://stackoverflow.com/a/13031547
;; ;; "kill previous nrepl sessions when nrepl-jack-in called?"
;; ;;
;; ;; Disable prompt on killing buffer with a process
;; (setq kill-buffer-query-functions
;;       (remq 'process-kill-buffer-query-function
;;             kill-buffer-query-functions))
;; ;;
;; (defun nrepl-kill ()
;;   "Kill all nrepl buffers and processes"
;;   (interactive)
;;   (when (get-process "nrepl-server")
;;     (set-process-sentinel (get-process "nrepl-server")
;;                           (lambda (proc evt) t)))
;;   (dolist (buffer (buffer-list))
;;     (when (string-prefix-p "*nrepl" (buffer-name buffer))
;;       (kill-buffer buffer))))
;; ;;
;; (defun nrepl-me ()
;;   (interactive)
;;   (nrepl-kill)
;;   (nrepl-jack-in nil)
;;   (split-window)
;;   (switch-to-buffer "*nrepl-server*")
;;   (end-of-buffer)
;;   ;(other-window)
;;   )
;; (global-set-key (kbd "C-c n") 'nrepl-me)
;; ;; local to nrepl


;; (defun show-nrepl-and-its-server ()
;;   (interactive)
;;   (switch-to-buffer "*nrepl*")
;;   (split-window)
;;   (switch-to-buffer "*nrepl-server*")
;;   (other-window))


;; https://github.com/clojure-emacs/ac-nrepl
(require 'ac-nrepl)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
;; (eval-after-load "auto-complete"
;;   '(add-to-list 'ac-modes 'cider-repl-mode))
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-repl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))


;;;;


;;;;;;;; CLOJURESCRIPT

;;https://github.com/brentonashworth/one/wiki/Emacs
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

;; http://martintrojer.github.io/clojure/2014/10/02/clojure-and-emacs-without-cider/
;; https://github.com/martintrojer/dotfiles/blob/master/.emacs.d/full-init.el
(add-hook 'clojure-mode-hook
          '(lambda ()
             (define-key clojure-mode-map
               "\C-c\C-k"
               '(lambda ()
                  (interactive)
                  (let ((current-point (point)))
                    (goto-char (point-min))
                    (let ((ns-idx (re-search-forward clojure-namespace-name-regex nil t)))
                      (when ns-idx
                        (goto-char ns-idx)
                        (let ((sym (symbol-at-point)))
                          (message (format "Loading %s ..." sym))
                          (lisp-eval-string (format "(require '%s :reload)" sym))
                          (lisp-eval-string (format "(in-ns '%s)" sym)))))
                    (goto-char current-point))))))

;;;;;;;; COMMON LISP
;; http://www.mohiji.org/2011/01/31/modern-common-lisp-on-linux/
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")



;;;;;;;; ESS


;; http://www.emacswiki.org/emacs/ESSShiftEnter
(setq ess-ask-for-ess-directory nil)
(setq ess-local-process-name "R")
(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

 (setq ess-ask-for-ess-directory nil)
  (setq ess-local-process-name "R")
  (setq ansi-color-for-comint-mode 'filter)
  (setq comint-prompt-read-only t)
  (setq comint-scroll-to-bottom-on-input t)
  (setq comint-scroll-to-bottom-on-output t)
  (setq comint-move-point-for-output t)

(defun my-ess-start-R ()
    (interactive)
    (if (not (member "*R*" (mapcar (function buffer-name) (buffer-list))))
      (progn
	(delete-other-windows)
	(setq w1 (selected-window))
	(setq w1name (buffer-name))
	(setq w2 (split-window w1))
	(R)
	(set-window-buffer w2 "*R*")
	(set-window-buffer w1 w1name))))

(defun my-ess-eval ()
    (interactive)
    (my-ess-start-R)
    (if (and transient-mark-mode mark-active)
	(call-interactively 'ess-eval-region)
      (call-interactively 'ess-eval-line-and-step)))

(add-hook 'ess-mode-hook
          '(lambda()
             (local-set-key [(shift return)] 'my-ess-eval)))

(add-hook 'inferior-ess-mode-hook
          '(lambda()
             (local-set-key [C-up] 'comint-previous-input)
             (local-set-key [C-down] 'comint-next-input)))

(require 'ess-site)

;; hooks

(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
(add-hook 'ess-mode-hook 'auto-complete-mode)
(add-hook 'inferior-ess-mode-hook 'r-autoyas-ess-activate)
(add-hook 'inferior-ess-mode-hook 'auto-complete-mode)

;; http://stackoverflow.com/questions/3447531/emacs-ess-version-of-clear-console
(defun clear-shell ()
   (interactive)
   (let ((old-max comint-buffer-maximum-size))
     (setq comint-buffer-maximum-size 0)
     (comint-truncate-buffer)
     (setq comint-buffer-maximum-size old-max)))

(setq ess-smart-operators nil)



(defun toggle-ess-eval-visibly-p ()
  (interactive)
  (setq ess-eval-visibly-p (not ess-eval-visibly-p)) ;; With nil ess-eval-visibly-p it is supposed to make things faster according to https://stat.ethz.ch/pipermail/ess-help/2011-March/006736.html .
  )
(toggle-ess-eval-visibly-p)
(define-key ess-mode-map (kbd "<C-return>") 'toggle-ess-eval-visibly-p)

(define-key ess-mode-map (kbd "C-c k")
  (lambda ()
    (interactive)
    (ess-send-string
     (get-process ess-local-process-name)
     (concat "library(knitr); knit2html(\"" buffer-file-name "\")"))))


(add-to-list 'auto-mode-alist '("\\.Rmd\\'" . R-mode))

;;;;;;;; JULIA
;; https://github.com/emacs-ess/ESS/wiki/Julia
(setq inferior-julia-program-name "/path/to/julia/julia")

;; ;;;;;;;; BITLBEE

;; (add-to-list 'load-path "~/.emacs.d/manual-installations/")

;; (require 'bitlbee)


;;;;;;;; GOOGLE-TRANSLATE

(require 'google-translate)
(setq google-translate-enable-ido-completion t)

;;;;;;;; MEDIAWIKI

(require 'mediawiki)
(setq
 mediawiki-site-alist (quote (("Wikipedia" "http://en.wikipedia.org/w/" "username" "password" "Main Page") ("katros" "http://10.170.13.250/wiki/" "danny" "~~~~~~~~" "Main Page"))))


;;;;;;;; WINDOW MANAGEMENT
(winner-mode)

(put 'narrow-to-region 'disabled nil)

;;;;;;;; SCROLLING

;; http://www.emacswiki.org/emacs/SmoothScrolling
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
    
(setq scroll-step 1) ;; keyboard scroll one line at a time


;; ;; http://web.archive.org/web/20061025212623/http://www.cs.utexas.edu/users/hllu/EmacsSmoothScrolling.html
;; (setq default-truncate-lines t)
;; (defun point-of-beginning-of-bottom-line ()
;;   (save-excursion
;;     (move-to-window-line -1)
;;     (point)))
;; (defun point-of-beginning-of-line ()
;;   (save-excursion
;;     (beginning-of-line)
;;     (point)))
;; (defun next-one-line () (interactive)
;;   (if (= (point-of-beginning-of-bottom-line) (point-of-beginning-of-line))
;;       (progn (scroll-up 1)
;;              (next-line 1))
;;     (next-line 1)))
;; (defun point-of-beginning-of-top-line ()
;;   (save-excursion
;;     (move-to-window-line 0)
;;     (point)))
;; (defun previous-one-line () (interactive)
;;   (if (= (point-of-beginning-of-top-line) (point-of-beginning-of-line))
;;       (progn (scroll-down 1)
;;              (previous-line 1))
;;     (previous-line 1)))
;; (global-set-key (kbd "<down>") 'next-one-line)
;; (global-set-key (kbd "<up>") 'previous-one-line)
(put 'scroll-left 'disabled nil)



;;;;;;;; IDO

(ido-vertical-mode)

;;;;;;;; W3M

(setq w3m-use-cookies t)

(add-hook 'w3m-mode-hook
	  (lambda ()
	    (visual-line-mode)
	    ;; (local-unset-key '[down])
	    ;; (local-unset-key '[up])
	    ;; (local-unset-key '[left])	    
	    ;; (local-unset-key '[right])
	    (local-set-key (kbd "M-p") 'w3m-previous-buffer)
	    (local-set-key (kbd "M-n") 'w3m-next-buffer)))


(defun add-url-at-point-to-todo ()
  "Add url at point to /home/we/todo.txt."
  (interactive)
  (let ((cmd (concat "echo \"" (thing-at-point 'url) "\" >> /home/we/todo.txt")))
    (progn (shell-command cmd)
           (message cmd))))
(global-set-key (kbd "C-c C-d") 'add-url-at-point-to-todo)


;;;;;;;; SMART-SCAN

(let ((filename "~/.emacs.d/manual-installations/smart-scan/smartscan.el"))
  (if (file-exists-p filename)
      (progn
        (load-file filename)
        (require 'smartscan)
        (global-smartscan-mode))))

;;;;;;;; REMEMBER

;; http://lists.gnu.org/archive/html/emacs-orgmode/2007-09/msg00172.html
;; (defun my-remember nil
;;   (interactive)
;;   (progn (select-frame
;;           (make-frame '((name . "*Remember*") )))
;;          (raise-frame)
;;          (remember)))
;; (setq remember-all-handler-functions t)
;; (setq remember-handler-functions
;;       '(org-remember-handler
;;       (lambda nil
;;         (let* ((frame-names-alist (make-frame-names-alist))
;;                (frame (cdr (assoc "*Remember*" frame-names-alist))))
;;           (if frame
;;               (delete-frame frame t))))))
         

;; http://lists.gnu.org/archive/html/emacs-orgmode/2007-09/msg00203.html
(add-hook 'remember-mode-hook 'delete-other-windows)

(defun remember-finalize-and-delete-frame ()
  (interactive)
  (progn
    (remember-finalize)
    (delete-frame)))

(add-hook
 'remember-mode-hook
 (lambda ()
   (local-set-key (kbd "C-c C-d") 'remember-finalize-and-delete-frame)))

(setq remember-data-file "~/.notes.org")

;; ;; http://comments.gmane.org/gmane.emacs.orgmode/17612
;; (setq sx-notes-file-name "~/.notes.org")


;;;;;;;; ORG-CAPTURE

;; http://permalink.gmane.org/gmane.emacs.orgmode/33743
(defadvice org-capture-finalize (after delete-capture-frame activate)
  "Advise capture-finalize to close the frame if it is the capture frame"
  (if (equal "capture" (frame-parameter nil 'name))
      (delete-frame)))
(defun make-capture-frame ()
  "Create a new frame and run org-capture."
  (interactive)
  (make-frame '((name . "capture")))
  (select-frame-by-name "capture")
  (delete-other-windows)
  (org-capture))

;; (add-hook 'org-capture-mode-hook 'delete-other-windows)

(add-to-list 'org-capture-templates
             '("m" "Madlan" entry (file+headline "~/org/madlan.org" "Madlan")
               "* %?\n  %i\n  %a")
             '("f" "Features" entry (file+headline "~/org/features.org" "Features")
               "* %?\n  %i\n  %a"))

(global-set-key (kbd "C-c c") 'org-capture)

;;;;;;;; QUICK REPL

(defun quick-repl ()
  (interactive)
  (shell
   (generate-new-buffer
    (generate-new-buffer-name "*shell*")))
  (insert "quick repl\n"))


;;;;;;;; OTHER

;; (setq ring-bell-function 'ignore)

;; ;; http://www.emacswiki.org/emacs/IncrementNumber    
;; (defun increment-number-at-point ()
;;   (interactive)
;;   (skip-chars-backward "0123456789.-")
;;   (or (looking-at "[0123456789.-]+")
;;       (error "No number at point"))
;;   (replace-match (number-to-string (+ (string-to-number (match-string 0))
;;                                       1)))
;;   (cider-eval-defun-at-point))
;; (defun decrement-number-at-point ()
;;   (interactive)
;;   (skip-chars-backward "0123456789.-")
;;   (or (looking-at "[0123456789.-]+")
;;       (error "No number at point"))
;;   (replace-match (number-to-string (- (string-to-number (match-string 0))
;;                                       1)))
;;   (cider-eval-defun-at-point))
;; (defun double-number-at-point ()
;;   (interactive)
;;   (skip-chars-backward "0123456789.-")
;;   (or (looking-at "[0123456789.-]+")
;;       (error "No number at point"))
;;   (replace-match (number-to-string (* (string-to-number (match-string 0))
;;                                       2)))
;;   (cider-eval-defun-at-point))
;; (defun undouble-number-at-point ()
;;   (interactive)
;;   (skip-chars-backward "0123456789.-")
;;   (or (looking-at "[0123456789.-]+")
;;       (error "No number at point"))
;;   (replace-match (number-to-string (* (string-to-number (match-string 0))
;;                                       0.5)))
;;   (cider-eval-defun-at-point))
;; (global-set-key (kbd "M-[") 'decrement-number-at-point)
;; (global-set-key (kbd "M-]") 'increment-number-at-point)
;; ;
                                        ; (global-set-key (kbd "M-9") 'undouble-number-at-point)
;; (global-set-key (kbd "M-0") 'double-number-at-point)

;; TODO: Avoid code duplication by integrating with this version.
;; ;; http://www.emacswiki.org/emacs/IncrementNumber
;; (defun transform-number-at-point (transf)
;;   (skip-chars-backward "0123456789")
;;   (or (looking-at "[0123456789]+")
;;       (error "No number at point"))
;;   (replace-match (number-to-string (funcall transf (string-to-number (match-string 0)))))
;;   (cider-eval-defun-at-point))
;; (defun decrement-number-at-point ()
;;   (interactive)
;;   (transform-number-at-point '(lambda (x) (- x 1))))
;; (defun increment-number-at-point ()
;;   (interactive)
;;   (transform-number-at-point '(lambda (x) (+ x 1))))
;; (global-set-key (kbd "C-0") 'decrement-number-at-point)
;; (global-set-key (kbd "C-9") 'increment-number-at-point)


;; ;;;;;;;; XTERM EXTRAS

;; (when (string-match "^xterm" (getenv "TERM"))
;;   (require 'xterm-extras)
;;  (xterm-extra-keys))



(setenv "R_HOME" "/usr/local/lib/R")


;;;;;;;; NOTIFY-SEND
;; http://emacs-fu.blogspot.co.il/2009/11/showing-pop-ups.html
(defun notify (msg)
  (shell-command (concat "notify-send "
                         msg)))


;;;;;;;; FOLDING
(require 'origami)

(define-key origami-mode-map
 (kbd "<tab>")
  'origami-toggle-node)

;;;;;;;; GENERATED CODE


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default bold shadow italic underline bold bold-italic bold])
;;  '(ansi-color-names-vector
;;    (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#002b36"))
;;  '(blink-cursor-mode nil)
;;  ;'(custom-enabled-themes (quote (sanityinc-solarized-light)))
;;  '(custom-safe-themes
;;    (quote
;;     ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
;;  '(debug-on-error nil)
;;  '(debug-on-quit nil)
;;  '(fci-rule-color "#073642")
;;  '(menu-bar-mode nil)
;;  '(save-place t nil (saveplace))
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map
;;    (quote
;;     ((20 . "#dc322f")
;;      (40 . "#cb4b16")
;;      (60 . "#b58900")
;;      (80 . "#859900")
;;      (100 . "#2aa198")
;;      (120 . "#268bd2")
;;      (140 . "#d33682")
;;      (160 . "#6c71c4")
;;      (180 . "#dc322f")
;;      (200 . "#cb4b16")
;;      (220 . "#b58900")
;;      (240 . "#859900")
;;      (260 . "#2aa198")
;;      (280 . "#268bd2")
;;      (300 . "#d33682")
;;      (320 . "#6c71c4")
;;      (340 . "#dc322f")
;;      (360 . "#cb4b16")))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default bold shadow italic underline bold bold-italic bold])
;;  '(ansi-color-names-vector
;;    (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
;;  '(blink-cursor-mode nil)
;;  '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
;;  '(custom-safe-themes
;;    (quote
;;     ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
;;  '(default-input-method "greek")
;;  '(display-time-mode t)
;;  '(fci-rule-color "#eee8d5")
;;  '(menu-bar-mode nil)
;;  '(show-paren-mode t)
;;  '(tool-bar-mode nil)
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map
;;    (quote
;;     ((20 . "#dc322f")
;;      (40 . "#cb4b16")
;;      (60 . "#b58900")
;;      (80 . "#859900")
;;      (100 . "#2aa198")
;;      (120 . "#268bd2")
;;      (140 . "#d33682")
;;      (160 . "#6c71c4")
;;      (180 . "#dc322f")
;;      (200 . "#cb4b16")
;;      (220 . "#b58900")
;;      (240 . "#859900")
;;      (260 . "#2aa198")
;;      (280 . "#268bd2")
;;      (300 . "#d33682")
;;      (320 . "#6c71c4")
;;      (340 . "#dc322f")
;;      (360 . "#cb4b16"))))
;;  '(vc-annotate-very-old-color nil)
 ;; )
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )


;;;;;;;; EMACS SERVER
(server-start)

;;;;;;;; CUSTOM
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(c-default-style (quote ((java-mode . "eclipse") (awk-mode . "awk") (other . "gnu"))))
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes (quote ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(elfeed-feeds (quote ("http://www.reddit.com/r/machinelearning/.rss" "http://www.reddit.com/r/julia/.rss" "http://www.reddit.com/r/rprogramming/.rss" "http://www.reddit.com/r/xfce4/.rss" "http://www.reddit.com/r/openbox/.rss" "http://www.reddit.com/r/gnu/.rss" "http://www.reddit.com/r/linux/.rss" "http://www.reddit.com/r/statistics/.rss" "http://www.reddit.com/r/programming/.rss" "http://www.reddit.com/r/clojurescript/.rss" "http://www.reddit.com/r/guile/.rss" "http://planet.haskell.org/rss20.xml" "http://planet.lisp.org/rss20.xml" "http://www.scheme.dk/planet/atom.xml" "http://www.reddit.com/r/scheme/.rss" "http://www.reddit.com/r/haskell/.rss" "http://planet.clojure.in/atom.xml" "http://planet.emacsen.org/atom.xml" "http://www.reddit.com/r/lisp/.rss" "http://www.reddit.com/r/clojure/.rss" "http://www.reddit.com/r/emacs/.rss" "http://www.reddit.com/r/distrohopping/.rss")))
 '(fci-rule-color "#eee8d5")
 '(safe-local-variable-values (quote ((Base . 10) (Syntax . ANSI-Common-Lisp) (whitespace-line-column . 80) (lexical-binding . t))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#dc322f") (40 . "#cb4b16") (60 . "#b58900") (80 . "#859900") (100 . "#2aa198") (120 . "#268bd2") (140 . "#d33682") (160 . "#6c71c4") (180 . "#dc322f") (200 . "#cb4b16") (220 . "#b58900") (240 . "#859900") (260 . "#2aa198") (280 . "#268bd2") (300 . "#d33682") (320 . "#6c71c4") (340 . "#dc322f") (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

