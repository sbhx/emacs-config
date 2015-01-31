Content-Type: text/enriched
Text-Width: 70

;; <x-color><param>Firebrick</param>Emacs Starter Kit 2
</x-color>;; <x-color><param>Firebrick</param>https://github.com/technomancy/emacs-starter-kit
</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>package</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq package-archives '<x-color><param>grey55</param>((</x-color><x-color><param>VioletRed4</param>"gnu"</x-color> . <x-color><param>VioletRed4</param>"http://elpa.gnu.org/packages/"</x-color><x-color><param>grey55</param>)</x-color>
                         <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"marmalade"</x-color> . <x-color><param>VioletRed4</param>"http://marmalade-repo.org/packages/"</x-color><x-color><param>grey55</param>)</x-color>
                         <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"melpa"</x-color> . <x-color><param>VioletRed4</param>"http://melpa.milkbox.net/packages/"</x-color><x-color><param>grey55</param>)</x-color>
                         ;; <x-color><param>Firebrick</param>("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
</x-color>                         <x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>package-initialize<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)
</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>when</x-color> <x-color><param>grey55</param>(</x-color>not package-archive-contents<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>package-refresh-contents<x-color><param>grey55</param>))</x-color>

<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defvar</x-color> <x-color><param>sienna</param>my-packages</x-color> '<x-color><param>grey55</param>(</x-color> 
                      ;; <x-color><param>Firebrick</param>starter kit
</x-color>                      starter-kit starter-kit-lisp starter-kit-eshell starter-kit-bindings
                                  ;; <x-color><param>Firebrick</param>other file types
</x-color>                                  csv-mode
                                  log4j-mode
                                  ;; <x-color><param>Firebrick</param>scala
</x-color>                                  scala-mode2
                                  ;; <x-color><param>Firebrick</param>clojure
</x-color>                                  clojure-quick-repls
                                  clojure-mode
                                  cider
                                  clojure-cheatsheet
                                  clj-refactor
                                  ;;<x-color><param>Firebrick</param>nrepl
</x-color>                                  ac-nrepl
                                  ;;<x-color><param>Firebrick</param>nrepl-ritz
</x-color>                                  ;;<x-color><param>Firebrick</param>cider-nrepl
</x-color>                                  ;;<x-color><param>Firebrick</param>cider-browse-ns
</x-color>                                  ;; <x-color><param>Firebrick</param>lisp
</x-color>                                  slime
                                  ;; <x-color><param>Firebrick</param>java
</x-color>                                  jtags
                                  ;; <x-color><param>Firebrick</param>haskell
</x-color>                                  haskell-mode
                                  ;; <x-color><param>Firebrick</param>web
</x-color>                                  multi-web-mode
                                  skewer-mode
                                  js2-mode
                                  simple-httpd
                                  impatient-mode
                                  ;; <x-color><param>Firebrick</param>display
</x-color>                                  hideshowvis
                                  rainbow-delimiters
                                  xterm-frobs
                                  color-theme ;;<x-color><param>Firebrick</param>color-theme-library
</x-color>                                  moe-theme
                                  ;;<x-color><param>Firebrick</param>color-theme-sanityinc-solarized calmer-forest-theme zenburn-theme anti-zenburn-theme underwater-theme base16-theme tron-theme tango-2-theme tangotango-theme color-theme-sanityinc-tomorrow color-theme-wombat
</x-color>                                  hexrgb
                                  highline
                                  highlight-symbol
                                  auto-highlight-symbol
                                  ;; <x-color><param>Firebrick</param>git
</x-color>                                  magit git-gutter gitconfig-mode
                                  ;; <x-color><param>Firebrick</param>svn
</x-color>                                  dsvn
                                  ;; <x-color><param>Firebrick</param>editing
</x-color>                                  all
                                  auto-complete
                                  cdlatex
                                  drag-stuff
                                  iedit
                                  yasnippet
                                  ;; <x-color><param>Firebrick</param>communication
</x-color>                                  ssh
                                  tramp
                                  w3m
                                  markdown-mode
                                  adoc-mode
                                  org
                                  org-trello
                                  ;;<x-color><param>Firebrick</param>epresent
</x-color>                                  ;; <x-color><param>Firebrick</param>org-present
</x-color>                                  ;; <x-color><param>Firebrick</param>org-presie
</x-color>                                  ;; <x-color><param>Firebrick</param>ox-html5slide
</x-color>                                  ;;<x-color><param>Firebrick</param>org-reveal
</x-color>                                  ;;<x-color><param>Firebrick</param>??? org-latex
</x-color>                                  ;; <x-color><param>Firebrick</param>file management
</x-color>                                  ;;<x-color><param>Firebrick</param>openwith 
</x-color>                                  dired+ ;;<x-color><param>Firebrick</param>???dired-external-apps
</x-color>                                  ;;;;<x-color><param>Firebrick</param>??? dired-x
</x-color>                                  dired-details+
                                  ;; <x-color><param>Firebrick</param>emacs navigation and command-management
</x-color>                                  imenu-anywhere
                                  guru-mode
                                  ;;<x-color><param>Firebrick</param>??? uniquify
</x-color>                                  ;; <x-color><param>Firebrick</param>vim
</x-color>                                  evil
                                  evil-paredit
                                  lispy
                                  ido-vertical-mode
                                  ;;<x-color><param>Firebrick</param>key-chord
</x-color>                                  ;; <x-color><param>Firebrick</param>programming -- general
</x-color>                                  flycheck
                                  ess
                                  ess-R-data-view
                                  ess-R-object-popup
                                  r-autoyas
                                  ;; <x-color><param>Firebrick</param>other
</x-color>                                  ;;<x-color><param>Firebrick</param>google-maps
</x-color>                                  google-translate
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
                                  origami
                                  browse-kill-ring+
                                  multiple-cursors
                                  ace-link
                                  ewmctrl

                                  ;;<x-color><param>Firebrick</param>expand-region

</x-color>                                  ace-isearch

                                  history

                                  elmacro<x-color><param>grey55</param>)</x-color>
  "A list of packages to ensure are installed at launch."<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>Add in your own as you wish:
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>dolist</x-color> <x-color><param>grey55</param>(</x-color>p my-packages<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>when</x-color> <x-color><param>grey55</param>(</x-color>not <x-color><param>grey55</param>(</x-color>package-installed-p p<x-color><param>grey55</param>))</x-color>
    <x-color><param>grey55</param>(</x-color>package-install p<x-color><param>grey55</param>)))</x-color>



;;;;;;;; <x-color><param>Firebrick</param>MANUAL INSTALLATION
</x-color>
<x-color><param>grey55</param>(</x-color>add-to-list 'load-path <x-color><param>VioletRed4</param>"~/.emacs.d/manual-installations/"</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>add-to-list 'load-path <x-color><param>VioletRed4</param>"~/installations/deepin-emacs/site-lisp/extensions/emacs-deferred"</x-color><x-color><param>grey55</param>)</x-color> 
<x-color><param>grey55</param>(</x-color>add-to-list 'load-path <x-color><param>VioletRed4</param>"~/installations/deepin-emacs/site-lisp/extensions/emacs-epc"</x-color><x-color><param>grey55</param>)</x-color> 
<x-color><param>grey55</param>(</x-color>add-to-list 'load-path <x-color><param>VioletRed4</param>"~/installations/deepin-emacs/site-lisp/extensions/webkit"</x-color><x-color><param>grey55</param>)</x-color>
;;;;;;;; <x-color><param>Firebrick</param>NAVIGATION KEYBINDINGS
</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-."</x-color><x-color><param>grey55</param>)</x-color> 'imenu-anywhere<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"<<C-tab>"</x-color><x-color><param>grey55</param>)</x-color> 'other-window<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-0"</x-color><x-color><param>grey55</param>)</x-color> 'other-window<x-color><param>grey55</param>)</x-color>


<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c SPC"</x-color><x-color><param>grey55</param>)</x-color> 'ace-jump-mode<x-color><param>grey55</param>)</x-color>


<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>new-shell</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>shell
   <x-color><param>grey55</param>(</x-color>generate-new-buffer
    <x-color><param>grey55</param>(</x-color>generate-new-buffer-name <x-color><param>VioletRed4</param>"*shell*"</x-color><x-color><param>grey55</param>))))</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c s"</x-color><x-color><param>grey55</param>)</x-color> 'new-shell<x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>EVIL-MODE
</x-color>;; <x-color><param>Firebrick</param>See emacs-wiki, http://stackoverflow.com/a/16226006
</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>evil</x-color><x-color><param>grey55</param>)</x-color>
;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-s" 'isearch-forward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-s" 'isearch-forward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-s" 'isearch-forward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-r" 'isearch-backward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-r" 'isearch-backward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-r" 'isearch-backward-regexp)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-e" 'end-of-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-f" 'evil-forward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-f" 'evil-forward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-b" 'evil-backward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-b" 'evil-backward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-b" 'evil-backward-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-d" 'evil-delete-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-d" 'evil-delete-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-d" 'evil-delete-char)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-n" 'evil-next-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-n" 'evil-next-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-n" 'evil-next-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-p" 'evil-previous-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-p" 'evil-previous-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-p" 'evil-previous-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-w" 'evil-delete)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-w" 'evil-delete)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-w" 'evil-delete)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-y" 'yank)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-y" 'yank)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-y" 'yank)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "\C-k" 'kill-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-insert-state-map "\C-k" 'kill-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "\C-k" 'kill-line)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map "Q" 'call-last-kbd-macro)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-visual-state-map "Q" 'call-last-kbd-macro)
</x-color>;; <x-color><param>Firebrick</param>(define-key evil-normal-state-map (kbd "TAB") 'evil-undefine)

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>evil-undefine</x-color> <x-color><param>grey55</param>()</x-color>
 <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
 <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let</x-color> <x-color><param>grey55</param>(</x-color>evil-mode-map-alist<x-color><param>grey55</param>)</x-color>
   <x-color><param>grey55</param>(</x-color>call-interactively <x-color><param>grey55</param>(</x-color>key-binding <x-color><param>grey55</param>(</x-color>this-command-keys<x-color><param>grey55</param>)))))</x-color>


<x-color><param>grey55</param>(</x-color>setq evil-want-fine-undo t<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>setq evil-default-cursor t<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c i"</x-color><x-color><param>grey55</param>)</x-color> 'iedit-mode<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>lispy</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c ;"</x-color><x-color><param>grey55</param>)</x-color>
                <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color>
                  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> lispy-mode
                      <x-color><param>grey55</param>(</x-color>setq lispy-mode nil<x-color><param>grey55</param>)</x-color>
                    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color> <x-color><param>grey55</param>(</x-color>setq lispy-mode t<x-color><param>grey55</param>)</x-color>
                           <x-color><param>grey55</param>(</x-color>paredit-backward-up<x-color><param>grey55</param>)))))</x-color>


<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>evil-paredit</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>add-hook 'evil-mode-hook 'evil-paredit-mode<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>define-key evil-normal-state-map <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"SPC"</x-color><x-color><param>grey55</param>)</x-color> 'ace-jump-char-mode<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>define-key evil-emacs-state-map <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-["</x-color><x-color><param>grey55</param>)</x-color> 'evil-normal-state<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>add-hook 'evil-insert-state-entry-hook 'evil-emacs-state<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>https://github.com/antono/emacs.d/blob/master/local/my-evil.el
</x-color><x-color><param>grey55</param>(</x-color>setq evil-emacs-state-cursor '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"red"</x-color> box<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>setq evil-normal-state-cursor '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"blue"</x-color> box<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>setq evil-visual-state-cursor '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"blue"</x-color> box<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>setq evil-insert-state-cursor '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"blue"</x-color> bar<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>setq evil-motion-state-cursor '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"blue"</x-color> box<x-color><param>grey55</param>))</x-color>

;; <x-color><param>Firebrick</param>from emacswiki
</x-color>;;<x-color><param>Firebrick</param>(key-chord-define evil-normal-state-map ",," 'evil-force-normal-state)
</x-color>;;<x-color><param>Firebrick</param>(key-chord-define evil-visual-state-map ",," 'evil-change-to-previous-state)
</x-color>;;<x-color><param>Firebrick</param>(key-chord-define evil-insert-state-map ",," 'evil-normal-state)
</x-color>;;<x-color><param>Firebrick</param>(key-chord-define evil-replace-state-map ",," 'evil-normal-state)
</x-color>;;<x-color><param>Firebrick</param>(key-chord-define evil-emacs-state-map ",," 'evil-normal-state)
</x-color>;;<x-color><param>Firebrick</param>(key-chord-mode 1)
</x-color>;;<x-color><param>Firebrick</param>(setq key-chord-two-keys-delay 0.1)
</x-color>;;<x-color><param>Firebrick</param>(setq key-chord-one-key-delay 0.2)

</x-color>

;;;;;;; <x-color><param>Firebrick</param>MULTIPLE CURSORS

</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c m"</x-color><x-color><param>grey55</param>)</x-color> 'mc/mark-all-like-this-dwim<x-color><param>grey55</param>)</x-color>

;;;;;;; <x-color><param>Firebrick</param>NARROW, WIDEN

</x-color>;; <x-color><param>Firebrick</param>http://www.bytopia.org/2014/11/26/rename-clojure-symbol-in/
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>narrow-or-widen-dwim</x-color> <x-color><param>grey55</param>(</x-color>p<x-color><param>grey55</param>)</x-color>
  "If the buffer is narrowed, it widens. Otherwise, it narrows intelligently.
Intelligently means: region, subtree, or defun, whichever applies
first.

With prefix P, don't widen, just narrow even if buffer is already
narrowed."
  <x-color><param>grey55</param>(</x-color>interactive <x-color><param>VioletRed4</param>"P"</x-color><x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>declare</x-color> <x-color><param>grey55</param>(</x-color>interactive-only<x-color><param>grey55</param>))</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>cond</x-color> <x-color><param>grey55</param>((</x-color>and <x-color><param>grey55</param>(</x-color>buffer-narrowed-p<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>not p<x-color><param>grey55</param>))</x-color> <x-color><param>grey55</param>(</x-color>widen<x-color><param>grey55</param>))</x-color>
        <x-color><param>grey55</param>((</x-color>region-active-p<x-color><param>grey55</param>)</x-color>
         <x-color><param>grey55</param>(</x-color>narrow-to-region <x-color><param>grey55</param>(</x-color>region-beginning<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>region-end<x-color><param>grey55</param>)))</x-color>
        <x-color><param>grey55</param>((</x-color>derived-mode-p 'org-mode<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>org-narrow-to-subtree<x-color><param>grey55</param>))</x-color>
        <x-color><param>grey55</param>(</x-color>t <x-color><param>grey55</param>(</x-color>narrow-to-defun<x-color><param>grey55</param>))))</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-x n n"</x-color><x-color><param>grey55</param>)</x-color> 'narrow-or-widen-dwim<x-color><param>grey55</param>)</x-color>


;;;;;;; <x-color><param>Firebrick</param>BUFFER MANAGEMENT KEYBINDINGS

</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-5"</x-color><x-color><param>grey55</param>)</x-color> 'revert-buffer<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-6"</x-color><x-color><param>grey55</param>)</x-color> 'recover-this-file<x-color><param>grey55</param>)</x-color>

;;;;;;; <x-color><param>Firebrick</param>DISPLAY MANAGEMENT KEYBINDINGS

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>set-dark</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> window-system
      <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color> <x-color><param>grey55</param>(</x-color>set-background-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
             <x-color><param>grey55</param>(</x-color>set-foreground-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
             <x-color><param>grey55</param>(</x-color>set-cursor-color <x-color><param>VioletRed4</param>"#99bbdd"</x-color><x-color><param>grey55</param>))</x-color>
    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
      <x-color><param>grey55</param>(</x-color>xterm-set-background-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
      <x-color><param>grey55</param>(</x-color>xterm-set-foreground-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
      <x-color><param>grey55</param>(</x-color>xterm-set-cursor-color <x-color><param>VioletRed4</param>"#99bbdd"</x-color><x-color><param>grey55</param>))</x-color>
    <x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>set-light</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> window-system
      <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
        <x-color><param>grey55</param>(</x-color>set-background-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
        <x-color><param>grey55</param>(</x-color>set-foreground-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
        <x-color><param>grey55</param>(</x-color>set-cursor-color <x-color><param>VioletRed4</param>"#664422"</x-color><x-color><param>grey55</param>))</x-color>
    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color> <x-color><param>grey55</param>(</x-color>xterm-set-background-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
           <x-color><param>grey55</param>(</x-color>xterm-set-foreground-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
           <x-color><param>grey55</param>(</x-color>xterm-set-cursor-color <x-color><param>VioletRed4</param>"#664422"</x-color><x-color><param>grey55</param>))))</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"<<f1>"</x-color><x-color><param>grey55</param>)</x-color> 'set-light<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"<<f2>"</x-color><x-color><param>grey55</param>)</x-color> 'set-dark<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>set-default-colors</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>moe-theme</x-color><x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>color-theme-initialize<x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>color-theme-high-contrast<x-color><param>grey55</param>)</x-color>
    ;; <x-color><param>Firebrick</param>(moe-light)
</x-color>    <x-color><param>grey55</param>(</x-color>color-theme-jsc-light2<x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>set-light<x-color><param>grey55</param>)))</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"<<f5>"</x-color><x-color><param>grey55</param>)</x-color> 'set-default-colors<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>set-default-colors<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-7"</x-color><x-color><param>grey55</param>)</x-color> 'visual-line-mode<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-8"</x-color><x-color><param>grey55</param>)</x-color> 'toggle-truncate-lines<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-9"</x-color><x-color><param>grey55</param>)</x-color> 'hl-line-mode<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c M-1"</x-color><x-color><param>grey55</param>)</x-color> 'randomize-buffer-background<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c M-2"</x-color><x-color><param>grey55</param>)</x-color> 'toggle-mode-line<x-color><param>grey55</param>)</x-color>
;<x-color><param>Firebrick</param>(global-set-key (kbd "<<f7>") 'visual-line-mode)
</x-color>;<x-color><param>Firebrick</param>(global-set-key (kbd "<<f8>") 'toggle-truncate-lines)
</x-color>;<x-color><param>Firebrick</param>(global-set-key (kbd "<<f9>") 'hl-line-mode)
</x-color>;<x-color><param>Firebrick</param>(global-set-key (kbd "<<f11>") 'randomize-buffer-background)
</x-color>;<x-color><param>Firebrick</param>(global-set-key (kbd "<<f12>") 'toggle-mode-line)

</x-color>;; <x-color><param>Firebrick</param>(global-set-key (kbd "<<f1>")
</x-color>;;                 <x-color><param>Firebrick</param>(lambda () (interactive)
</x-color>;;                   <x-color><param>Firebrick</param>(load-file "/home/danny/.emacs.d/elpa/anti-zenburn-theme-20131119.2333/anti-zenburn-theme.el")))
</x-color>;; <x-color><param>Firebrick</param>(global-set-key (kbd "<<f2>")
</x-color>;;                 <x-color><param>Firebrick</param>(lambda () (interactive)
</x-color>;;                   <x-color><param>Firebrick</param>(load-file "/home/danny/.emacs.d/elpa/zenburn-theme-20131123.1547/zenburn-theme.el")))

</x-color>

<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-1"</x-color><x-color><param>grey55</param>)</x-color>
                <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-background-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-foreground-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-cursor-color <x-color><param>VioletRed4</param>"#664422"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"M-2"</x-color><x-color><param>grey55</param>)</x-color>
                <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-background-color <x-color><param>VioletRed4</param>"#cccccc"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-foreground-color <x-color><param>VioletRed4</param>"#333333"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>xterm-set-cursor-color <x-color><param>VioletRed4</param>"#99bbdd"</x-color><x-color><param>grey55</param>)))</x-color>

<x-color><param>grey55</param>(</x-color>set-light<x-color><param>grey55</param>)</x-color>


;;;;;;;; <x-color><param>Firebrick</param>EXTERNAL COMMANDS KEYBINDINGS
</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c d"</x-color><x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color><x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>message <x-color><param>grey55</param>(</x-color>format-time-string <x-color><param>VioletRed4</param>"%c"</x-color> <x-color><param>grey55</param>(</x-color>current-time<x-color><param>grey55</param>)))))</x-color>

;;;;;;;; <x-color><param>Firebrick</param>FRAME RELATED KEYBINDINGS
</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c z"</x-color><x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color> <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>delete-frame<x-color><param>grey55</param>)))</x-color>

;;;;;;;; <x-color><param>Firebrick</param>ELECTRIC PAIRS

</x-color><x-color><param>grey55</param>(</x-color>electric-pair-mode<x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>AUTO-COMPLETE

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>auto-complete</x-color><x-color><param>grey55</param>)</x-color>
;;<x-color><param>Firebrick</param>(auto-complete-mode)

</x-color>;;;;;;;; <x-color><param>Firebrick</param>YASNIPPET

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>yasnippet</x-color><x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>FLYCHECK

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>flycheck</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>flycheck-mode<x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>EDIFF
</x-color>;; <x-color><param>Firebrick</param>http://stackoverflow.com/a/1680994
</x-color>;; <x-color><param>Firebrick</param>("Is there any way to get Ediff to not open its navigation interface in an external window?")
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> <x-color><param>grey55</param>(</x-color>locate-library <x-color><param>VioletRed4</param>"ediff"</x-color><x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
      <x-color><param>grey55</param>(</x-color>autoload 'ediff-files <x-color><param>VioletRed4</param>"ediff"</x-color><x-color><param>grey55</param>)</x-color>
      <x-color><param>grey55</param>(</x-color>autoload 'ediff-buffers <x-color><param>VioletRed4</param>"ediff"</x-color><x-color><param>grey55</param>)</x-color>
       <x-color><param>grey55</param>(</x-color>eval-after-load <x-color><param>VioletRed4</param>"ediff"</x-color> '<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
  			  <x-color><param>grey55</param>(</x-color>message <x-color><param>VioletRed4</param>"doing ediff customisation"</x-color><x-color><param>grey55</param>)</x-color>
			  <x-color><param>grey55</param>(</x-color>setq diff-switches               <x-color><param>VioletRed4</param>"-u"</x-color>
				ediff-custom-diff-options   <x-color><param>VioletRed4</param>"-U3"</x-color>
				ediff-split-window-function 'split-window-horizontally
				ediff-window-setup-function 'ediff-setup-windows-plain<x-color><param>grey55</param>)</x-color>
			  <x-color><param>grey55</param>(</x-color>add-hook 'ediff-startup-hook 'ediff-toggle-wide-display<x-color><param>grey55</param>)</x-color>
			  <x-color><param>grey55</param>(</x-color>add-hook 'ediff-cleanup-hook 'ediff-toggle-wide-display<x-color><param>grey55</param>)</x-color>
			  <x-color><param>grey55</param>(</x-color>add-hook 'ediff-suspend-hook 'ediff-toggle-wide-display<x-color><param>grey55</param>)))))</x-color>


;;;;;;;; <x-color><param>Firebrick</param>BIDI

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>bidi</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>setq bidi-display-reordering t<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>unbidi</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>setq bidi-display-reordering nil<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>bidi-fix-ltr</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>setq bidi-paragraph-direction 'left-to-right<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>bidi-fix-rtl</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>setq bidi-paragraph-direction 'right-to-left<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>bidi-unfix</x-color> <x-color><param>grey55</param>()</x-color>
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>setq bidi-paragraph-direction nil<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>JAVA-SETUP

</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let</x-color> <x-color><param>grey55</param>((</x-color>filename <x-color><param>VioletRed4</param>"~/.emacs.d/java-setup.el"</x-color><x-color><param>grey55</param>))</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> <x-color><param>grey55</param>(</x-color>file-exists-p filename<x-color><param>grey55</param>)</x-color>
      <x-color><param>grey55</param>(</x-color>load-file filename<x-color><param>grey55</param>)))</x-color>

;;;;;;;; <x-color><param>Firebrick</param>WEB DEV
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>multi-web-mode</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq mweb-default-major-mode 'html-mode<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq mweb-tags '<x-color><param>grey55</param>((</x-color>php-mode <x-color><param>VioletRed4</param>"<<\\?php</x-color><x-color><param>VioletRed4</param>\\|</x-color><x-color><param>VioletRed4</param><<\\? </x-color><x-color><param>VioletRed4</param>\\|</x-color><x-color><param>VioletRed4</param><<\\?="</x-color> <x-color><param>VioletRed4</param>"\\?>"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>js-mode <x-color><param>VioletRed4</param>"<<script +</x-color><x-color><param>VioletRed4</param>\\(</x-color><x-color><param>VioletRed4</param>type=\"text/javascript\"</x-color><x-color><param>VioletRed4</param>\\|</x-color><x-color><param>VioletRed4</param>language=\"javascript\"</x-color><x-color><param>VioletRed4</param>\\)</x-color><x-color><param>VioletRed4</param>[</x-color><x-color><param>VioletRed4</param>^</x-color><x-color><param>VioletRed4</param>>]*>"</x-color> <x-color><param>VioletRed4</param>"<</script>"</x-color><x-color><param>grey55</param>)</x-color>
                  <x-color><param>grey55</param>(</x-color>css-mode <x-color><param>VioletRed4</param>"<<style +type=\"text/css\"[</x-color><x-color><param>VioletRed4</param>^</x-color><x-color><param>VioletRed4</param>>]*>"</x-color> <x-color><param>VioletRed4</param>"<</style>"</x-color><x-color><param>grey55</param>)))</x-color>
<x-color><param>grey55</param>(</x-color>setq mweb-filename-extensions '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"php"</x-color> <x-color><param>VioletRed4</param>"htm"</x-color> <x-color><param>VioletRed4</param>"html"</x-color> <x-color><param>VioletRed4</param>"ctp"</x-color> <x-color><param>VioletRed4</param>"phtml"</x-color> <x-color><param>VioletRed4</param>"php4"</x-color> <x-color><param>VioletRed4</param>"php5"</x-color><x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>multi-web-global-mode 1<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>(</x-color><x-color><param>Firebrick</param>require</x-color><x-color><param>Firebrick</param> 'simple-httpd)
</x-color>;; <x-color><param>Firebrick</param>(setq httpd-root "/var/www")
</x-color>;; <x-color><param>Firebrick</param>(httpd-start)
</x-color>;; <x-color><param>Firebrick</param>(</x-color><x-color><param>Firebrick</param>require</x-color><x-color><param>Firebrick</param> 'skewer-mode)
</x-color>;; <x-color><param>Firebrick</param>(add-hook 'js2-mode-hook 'skewer-mode)
</x-color>;; <x-color><param>Firebrick</param>(add-hook 'css-mode-hook 'skewer-css-mode)
</x-color>;; <x-color><param>Firebrick</param>(add-hook 'html-mode-hook 'skewer-html-mode)

</x-color>

;;;;;;;; <x-color><param>Firebrick</param>SVN
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>vc-svn</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>dsvn</x-color><x-color><param>grey55</param>)</x-color>

;;;;;;;; <x-color><param>Firebrick</param>GIT-GUTTER

</x-color>

;; <x-color><param>Firebrick</param>If you enable global minor mode
</x-color><x-color><param>grey55</param>(</x-color>global-git-gutter-mode t<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>If you enable git-gutter-mode for some modes
</x-color>;; <x-color><param>Firebrick</param>(add-hook 'ruby-mode-hook 'git-gutter-mode)

</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c u t"</x-color><x-color><param>grey55</param>)</x-color> 'git-gutter:toggle<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c u ="</x-color><x-color><param>grey55</param>)</x-color> 'git-gutter:popup-diff<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>Jump to next/previous hunk
</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c u p"</x-color><x-color><param>grey55</param>)</x-color> 'git-gutter:previous-hunk<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c u n"</x-color><x-color><param>grey55</param>)</x-color> 'git-gutter:next-hunk<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>Revert current hunk
</x-color><x-color><param>grey55</param>(</x-color>global-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"C-c u r"</x-color><x-color><param>grey55</param>)</x-color> 'git-gutter:revert-hunk<x-color><param>grey55</param>)</x-color>


;;;;;;;; <x-color><param>Firebrick</param>CSV
</x-color><x-color><param>grey55</param>(</x-color>add-to-list 'auto-mode-alist '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"\\.[Cc][Ss][Vv]\\'"</x-color> . csv-mode<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>autoload 'csv-mode <x-color><param>VioletRed4</param>"csv-mode"</x-color>
  "Major mode for editing comma-separated value files." t<x-color><param>grey55</param>)</x-color>


;;;;;;;; <x-color><param>Firebrick</param>ORG-MODE (</x-color>TODO<x-color><param>Firebrick</param>: organize)

</x-color><x-color><param>grey55</param>(</x-color>setq org-list-allow-alphabetical t<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>setq org-src-fontify-natively t<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-src-tab-acts-natively t<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>(load-file "~/.emacs.d/plugins/latex-live-preview.el") 

</x-color><x-color><param>grey55</param>(</x-color>setq org-capture-templates
      '<x-color><param>grey55</param>((</x-color><x-color><param>VioletRed4</param>"t"</x-color> <x-color><param>VioletRed4</param>"Todo"</x-color> entry <x-color><param>grey55</param>(</x-color>file+headline <x-color><param>VioletRed4</param>"~/org/tasks.org"</x-color> <x-color><param>VioletRed4</param>"Tasks"</x-color><x-color><param>grey55</param>)</x-color>
	 <x-color><param>VioletRed4</param>"* </x-color>TODO<x-color><param>VioletRed4</param> %?\n  %i\n  %a"</x-color><x-color><param>grey55</param>)</x-color>
        <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"j"</x-color> <x-color><param>VioletRed4</param>"Journal"</x-color> entry <x-color><param>grey55</param>(</x-color>file+datetree <x-color><param>VioletRed4</param>"~/org/journal.org"</x-color><x-color><param>grey55</param>)</x-color>
	 <x-color><param>VioletRed4</param>"* %?\nEntered on %U\n  %i\n  %a"</x-color><x-color><param>grey55</param>)</x-color>
        <x-color><param>grey55</param>))</x-color>


;;<x-color><param>Firebrick</param>(setq org-default-notes-file (concat org-directory "~/myorg.org"))

</x-color>

;; <x-color><param>Firebrick</param>(make-face 'org-base-face)
</x-color>;;<x-color><param>Firebrick</param>(set-face-background 'org-base-face "navy")

</x-color><x-color><param>grey55</param>(</x-color>add-hook
 'org-mode-hook
 <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color>
;;   <x-color><param>Firebrick</param>(highline-mode)
</x-color>   ;; <x-color><param>Firebrick</param>(buffer-face-mode t)
</x-color>   ;; <x-color><param>Firebrick</param>(buffer-face-set 'org-base-face)
</x-color>   <x-color><param>grey55</param>(</x-color>bidi<x-color><param>grey55</param>)</x-color>
   <x-color><param>grey55</param>(</x-color>local-set-key <x-color><param>grey55</param>(</x-color>kbd <x-color><param>VioletRed4</param>"<<C-tab>"</x-color><x-color><param>grey55</param>)</x-color> 'other-window<x-color><param>grey55</param>)</x-color>  ; <x-color><param>Firebrick</param>Avoid org-mode's binding to (org-force-cycle-archived). (Somehow, local-unset-key was not enough here -- another specific binding took place.)
</x-color>   <x-color><param>grey55</param>(</x-color>bidi-unfix<x-color><param>grey55</param>)</x-color>
   <x-color><param>grey55</param>)</x-color>
 <x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>make-face 'agenda-base-face<x-color><param>grey55</param>)</x-color>
;;<x-color><param>Firebrick</param>(set-face-background 'agenda-base-face "orchid4")

</x-color><x-color><param>grey55</param>(</x-color>add-hook 
 'org-finalize-agenda-hook 
 <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color> 
   ;; <x-color><param>Firebrick</param>(highline-mode)
</x-color>;;   <x-color><param>Firebrick</param>(buffer-face-mode t)
</x-color>;;   <x-color><param>Firebrick</param>(buffer-face-set 'agenda-base-face)
</x-color>   <x-color><param>grey55</param>(</x-color>bidi<x-color><param>grey55</param>)</x-color>
   <x-color><param>grey55</param>(</x-color>bidi-unfix<x-color><param>grey55</param>)</x-color>
   <x-color><param>grey55</param>)</x-color>
 <x-color><param>grey55</param>)</x-color>


;; <x-color><param>Firebrick</param>http://members.optusnet.com.au/~charles57/GTD/mydotemacs.txt
</x-color>;; <x-color><param>Firebrick</param>.emacs file     Selected entries from ~/.emacs.el
</x-color>;; <x-color><param>Firebrick</param>file of Charles Cave to run org-mode
</x-color><x-color><param>grey55</param>(</x-color>setq org-agenda-files <x-color><param>grey55</param>(</x-color>quote <x-color><param>grey55</param>(</x-color>
			       ;;<x-color><param>Firebrick</param>"~/org/myorg.org" 
</x-color>			       <x-color><param>VioletRed4</param>"~/org/tasks.org"</x-color>
			       <x-color><param>grey55</param>)))</x-color>
;;<x-color><param>Firebrick</param>(setq org-agenda-ndays 7)
</x-color><x-color><param>grey55</param>(</x-color>setq org-agenda-repeating-timestamp-show-all nil<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-agenda-restore-windows-after-quit t<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-agenda-show-all-dates t<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-agenda-skip-deadline-if-done t<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-agenda-skip-scheduled-if-done t<x-color><param>grey55</param>)</x-color>
;;<x-color><param>Firebrick</param>(setq org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
</x-color><x-color><param>grey55</param>(</x-color>setq org-agenda-start-on-weekday nil<x-color><param>grey55</param>)</x-color>
;;<x-color><param>Firebrick</param>(setq org-agenda-todo-ignore-deadlines t)
</x-color>;;<x-color><param>Firebrick</param>(setq org-agenda-todo-ignore-scheduled t)
</x-color>;;<x-color><param>Firebrick</param>(setq org-agenda-todo-ignore-with-date t)
</x-color>;;<x-color><param>Firebrick</param>(setq org-agenda-window-setup (quote other-window))
</x-color>;;<x-color><param>Firebrick</param>(setq org-deadline-warning-days 7)
</x-color>;;<x-color><param>Firebrick</param>(setq org-log-done (quote (done)))
</x-color>;;<x-color><param>Firebrick</param>(setq org-refile-targets (quote (("newgtd.org" :maxlevel . 1) ("someday.org" :level . 2))))
</x-color>;;<x-color><param>Firebrick</param>(setq org-reverse-note-order nil)
</x-color>;;<x-color><param>Firebrick</param>(setq org-tags-column -78)
</x-color>;;<x-color><param>Firebrick</param>(setq org-time-stamp-rounding-minutes 1)
</x-color>;;<x-color><param>Firebrick</param>(setq org-use-fast-todo-selection t)

</x-color>;;<x-color><param>Firebrick</param>(setq org-tags-match-list-sublevels 'indented)
</x-color>;;<x-color><param>Firebrick</param>(setq org-use-tag-inheritance nil)

</x-color>

<x-color><param>grey55</param>(</x-color>add-to-list 'auto-mode-alist '<x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"\\.org$"</x-color> . org-mode<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>define-key global-map <x-color><param>VioletRed4</param>"\C-cl"</x-color> 'org-store-link<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>define-key global-map <x-color><param>VioletRed4</param>"\C-ca"</x-color> 'org-agenda<x-color><param>grey55</param>)</x-color>

;;<x-color><param>Firebrick</param>(setq org-agenda-include-diary nil)
</x-color>;;<x-color><param>Firebrick</param>(setq org-timeline-show-empty-dates t)
</x-color>;;<x-color><param>Firebrick</param>(setq org-insert-mode-line-in-empty-file t)

</x-color><x-color><param>grey55</param>(</x-color>setq org-directory <x-color><param>VioletRed4</param>"~/org/"</x-color><x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-default-notes-file <x-color><param>VioletRed4</param>"~/.notes"</x-color><x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>setq org-agenda-custom-commands
'<x-color><param>grey55</param>(</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"P"</x-color> <x-color><param>VioletRed4</param>"Projects"</x-color>   
   <x-color><param>grey55</param>((</x-color>tags <x-color><param>VioletRed4</param>"PROJECT"</x-color><x-color><param>grey55</param>)))</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"H"</x-color> <x-color><param>VioletRed4</param>"Office and Home Lists"</x-color>
   <x-color><param>grey55</param>((</x-color>agenda<x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>tags-todo <x-color><param>VioletRed4</param>"@OFFICE"</x-color><x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>tags-todo <x-color><param>VioletRed4</param>"@HOME"</x-color><x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>(</x-color>tags-todo <x-color><param>VioletRed4</param>"@COMPUTER"</x-color><x-color><param>grey55</param>)</x-color>
    <x-color><param>grey55</param>))</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>VioletRed4</param>"D"</x-color> <x-color><param>VioletRed4</param>"Daily Action List"</x-color>
   <x-color><param>grey55</param>(</x-color>
    <x-color><param>grey55</param>(</x-color>agenda <x-color><param>VioletRed4</param>""</x-color> <x-color><param>grey55</param>((</x-color>org-agenda-ndays 1<x-color><param>grey55</param>)</x-color>
		<x-color><param>grey55</param>(</x-color>org-agenda-sorting-strategy
		 <x-color><param>grey55</param>(</x-color>quote <x-color><param>grey55</param>((</x-color>agenda time-up priority-down tag-up<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>)))</x-color>
		<x-color><param>grey55</param>(</x-color>org-deadline-warning-days 0<x-color><param>grey55</param>)</x-color>
		<x-color><param>grey55</param>))))</x-color>
  <x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>)</x-color>



<x-color><param>grey55</param>(</x-color>setq org-return-follows-link t<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>setq org-export-with-toc nil<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>setq org-export-author-info nil<x-color><param>grey55</param>)</x-color>


;; <x-color><param>Firebrick</param>(add-to-list 'load-path "~/.emacs.d/elpa/org-present-20130426.1155")
</x-color>;; <x-color><param>Firebrick</param>(autoload 'org-present "org-present" nil t)
</x-color>;; <x-color><param>Firebrick</param>(add-hook 'org-present-mode-hook
</x-color>;;           <x-color><param>Firebrick</param>(lambda ()
</x-color>;;             <x-color><param>Firebrick</param>(org-present-big)
</x-color>;;             <x-color><param>Firebrick</param>(org-display-inline-images)))

</x-color>;; <x-color><param>Firebrick</param>(add-hook 'org-present-mode-quit-hook
</x-color>;;           <x-color><param>Firebrick</param>(lambda ()
</x-color>;;             <x-color><param>Firebrick</param>(org-present-small)
</x-color>;;             <x-color><param>Firebrick</param>(org-remove-inline-images)))

</x-color>


;;<x-color><param>Firebrick</param>(add-to-list 'load-path "/home/danny/.emacs.d/elpa/cdlatex-4.0/")
</x-color>;;<x-color><param>Firebrick</param>(</x-color><x-color><param>Firebrick</param>require</x-color><x-color><param>Firebrick</param> 'cdlatex)

</x-color>;;<x-color><param>Firebrick</param>(openwith-mode t)

</x-color><x-color><param>grey55</param>(</x-color>setq dired-dwin-target t<x-color><param>grey55</param>)</x-color>

<x-color><param>grey55</param>(</x-color>setq dired-recursive-copies <x-color><param>grey55</param>(</x-color>quote always<x-color><param>grey55</param>))</x-color>
<x-color><param>grey55</param>(</x-color>setq dired-recursive-deletes <x-color><param>grey55</param>(</x-color>quote top<x-color><param>grey55</param>))</x-color>

<x-color><param>grey55</param>(</x-color>setq dired-dwim-target t<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>(setq dired-external-apps-list 
</x-color>;;       <x-color><param>Firebrick</param>(append (list "libreoffice" "xpdf" "evince" "vlc" "eog" "gimp") dired-external-apps-list))
</x-color>;; <x-color><param>Firebrick</param>(dired-external-apps-generate-wrapper-functions-for-apps) ;; reinitialize after changes
</x-color><x-color><param>grey55</param>(</x-color>setq dired-external-apps-save-to-registers-flag t<x-color><param>grey55</param>)</x-color>

;; <x-color><param>Firebrick</param>;; http://lists.gnu.org/archive/html/help-gnu-emacs/2002-10/msg00556.html
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>dired-copy-filename</x-color> <x-color><param>grey55</param>()</x-color>
  "push the path and filename of the file under the point to the kill ring"
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color>message <x-color><param>VioletRed4</param>"added %s to kill ring"</x-color> <x-color><param>grey55</param>(</x-color>kill-new <x-color><param>grey55</param>(</x-color>dired-get-filename<x-color><param>grey55</param>))))</x-color>

<x-color><param>grey55</param>(</x-color>add-hook 'dired-mode-hook
                 '<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>()</x-color>
		    ;;<x-color><param>Firebrick</param>(highline-mode)
</x-color>		    <x-color><param>grey55</param>(</x-color>bidi<x-color><param>grey55</param>)</x-color>
		    <x-color><param>grey55</param>(</x-color>bidi-fix-ltr<x-color><param>grey55</param>)</x-color>
		    <x-color><param>grey55</param>(</x-color>define-key dired-mode-map <x-color><param>VioletRed4</param>"c"</x-color>
		      'dired-copy-filename
		    <x-color><param>grey55</param>)</x-color>
		    ;; <x-color><param>Firebrick</param>(define-key dired-mode-map "L"
</x-color>		    ;;   <x-color><param>Firebrick</param>'dired-external-apps-open-with-libreoffice
</x-color>		    ;;   <x-color><param>Firebrick</param>)
</x-color>		    ;; <x-color><param>Firebrick</param>(define-key dired-mode-map "P"
</x-color>		    ;;   <x-color><param>Firebrick</param>'dired-external-apps-open-with-xpdf
</x-color>		    ;;   <x-color><param>Firebrick</param>)
</x-color>		    ;; <x-color><param>Firebrick</param>(define-key dired-mode-map "E"
</x-color>		    ;;   <x-color><param>Firebrick</param>'dired-external-apps-open-with-evince
</x-color>		    ;;   <x-color><param>Firebrick</param>)
</x-color>		    ;; <x-color><param>Firebrick</param>)
</x-color>		 <x-color><param>grey55</param>))</x-color>


;; <x-color><param>Firebrick</param>http://www.emacswiki.org/emacs/DiredDoShellAsynchronous
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>dired-shell-stuff-it</x-color> <x-color><param>grey55</param>(</x-color>command file-list on-each <x-color><param>ForestGreen</param>&optional</x-color> raw-arg<x-color><param>grey55</param>)</x-color>
  ;; <x-color><param>Firebrick</param>"Make up a shell command line from COMMAND and FILE-LIST.
</x-color>  ;; <x-color><param>Firebrick</param>If ON-EACH is t, COMMAND should be applied to each file, else
</x-color>  ;; <x-color><param>Firebrick</param>simply concat all files and apply COMMAND to this.
</x-color>  ;; <x-color><param>Firebrick</param>FILE-LIST's elements will be quoted for the shell."
</x-color>  ;; <x-color><param>Firebrick</param>Might be redefined for smarter things and could then use RAW-ARG
</x-color>  ;; <x-color><param>Firebrick</param>(coming from interactive P and currently ignored) to decide what to do.
</x-color>  ;; <x-color><param>Firebrick</param>Smart would be a way to access basename or extension of file names.
</x-color>  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let*</x-color> <x-color><param>grey55</param>((</x-color>async <x-color><param>VioletRed4</param>""</x-color><x-color><param>grey55</param>)</x-color>
  	 <x-color><param>grey55</param>(</x-color>stuff-it
  	  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>progn</x-color>
  	    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>when</x-color> <x-color><param>grey55</param>(</x-color>string-match <x-color><param>VioletRed4</param>"[ \t]*&[ \t]*\\'"</x-color> command<x-color><param>grey55</param>)</x-color>
  	      <x-color><param>grey55</param>(</x-color>setq async <x-color><param>VioletRed4</param>"&"</x-color><x-color><param>grey55</param>)</x-color>
  	      <x-color><param>grey55</param>(</x-color>setq command <x-color><param>grey55</param>(</x-color>substring command 0 <x-color><param>grey55</param>(</x-color>match-beginning 0<x-color><param>grey55</param>))))</x-color>
  	    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> <x-color><param>grey55</param>(</x-color>or <x-color><param>grey55</param>(</x-color>string-match dired-star-subst-regexp command<x-color><param>grey55</param>)</x-color>
  		    <x-color><param>grey55</param>(</x-color>string-match dired-quark-subst-regexp command<x-color><param>grey55</param>))</x-color>
  		<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>(</x-color>x<x-color><param>grey55</param>)</x-color>
  		  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let</x-color> <x-color><param>grey55</param>((</x-color>retval command<x-color><param>grey55</param>))</x-color>
  		    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>while</x-color> <x-color><param>grey55</param>(</x-color>string-match
  			    <x-color><param>VioletRed4</param>"</x-color><x-color><param>VioletRed4</param>\\(</x-color><x-color><param>VioletRed4</param>^</x-color><x-color><param>VioletRed4</param>\\|</x-color><x-color><param>VioletRed4</param>[ \t]</x-color><x-color><param>VioletRed4</param>\\)\\(</x-color><x-color><param>VioletRed4</param>[*?]</x-color><x-color><param>VioletRed4</param>\\)\\(</x-color><x-color><param>VioletRed4</param>[ \t]</x-color><x-color><param>VioletRed4</param>\\|</x-color><x-color><param>VioletRed4</param>$</x-color><x-color><param>VioletRed4</param>\\)</x-color><x-color><param>VioletRed4</param>"</x-color> retval<x-color><param>grey55</param>)</x-color>
  		      <x-color><param>grey55</param>(</x-color>setq retval <x-color><param>grey55</param>(</x-color>replace-match x t t retval 2<x-color><param>grey55</param>)))</x-color>
  		    retval<x-color><param>grey55</param>))</x-color>
  	      <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color> <x-color><param>grey55</param>(</x-color>x<x-color><param>grey55</param>)</x-color> <x-color><param>grey55</param>(</x-color>concat command dired-mark-separator x async<x-color><param>grey55</param>))))))</x-color>
    <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> on-each
  	<x-color><param>grey55</param>(</x-color>mapconcat stuff-it <x-color><param>grey55</param>(</x-color>mapcar 'shell-quote-argument file-list<x-color><param>grey55</param>)</x-color> <x-color><param>VioletRed4</param>";"</x-color><x-color><param>grey55</param>)</x-color>
      <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let</x-color> <x-color><param>grey55</param>((</x-color>files <x-color><param>grey55</param>(</x-color>mapconcat 'shell-quote-argument
  			      file-list dired-mark-separator<x-color><param>grey55</param>)))</x-color>
  	<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>if</x-color> <x-color><param>grey55</param>(</x-color>> <x-color><param>grey55</param>(</x-color>length file-list<x-color><param>grey55</param>)</x-color> 1<x-color><param>grey55</param>)</x-color>
  	    <x-color><param>grey55</param>(</x-color>setq files <x-color><param>grey55</param>(</x-color>concat dired-mark-prefix files dired-mark-postfix<x-color><param>grey55</param>)))</x-color>
  	<x-color><param>grey55</param>(</x-color>funcall stuff-it files<x-color><param>grey55</param>)))))</x-color>


<x-color><param>grey55</param>(</x-color>setq wdired-allow-to-change-permissions t<x-color><param>grey55</param>)</x-color>


;;;;;;;; <x-color><param>Firebrick</param>CODING CONVENTIONS

</x-color>;; <x-color><param>Firebrick</param>https://www.bunkus.org/blog/2009/12/switching-identifier-naming-style-between-camel-case-and-c-style-in-emacs/
</x-color><x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>defun</x-color> <x-color><param>Blue1</param>mo-toggle-identifier-naming-style</x-color> <x-color><param>grey55</param>()</x-color>
  "Toggles the symbol at point between lisp-style naming,
    e.g. `<x-color><param>dark cyan</param>hello-world-string</x-color>', and camel case,
    e.g. `<x-color><param>dark cyan</param>HelloWorldString</x-color>'."
  <x-color><param>grey55</param>(</x-color>interactive<x-color><param>grey55</param>)</x-color>
  <x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>let*</x-color> <x-color><param>grey55</param>((</x-color>symbol-pos <x-color><param>grey55</param>(</x-color>bounds-of-thing-at-point 'symbol<x-color><param>grey55</param>))</x-color>
         case-fold-search symbol-at-point cstyle regexp func<x-color><param>grey55</param>)</x-color>
    (unless symbol-pos
      (error "No symbol at point"))
    (save-excursion
      (narrow-to-region (car symbol-pos) (cdr symbol-pos))
      (setq cstyle (string-match-p "-" (buffer-string))
            regexp (if cstyle "\\(?:\\-<<\\|-\\)\\(\\w\\)" "\\([A-Z]\\)")
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
                                        (<< y 0)
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
	 (next-rec (if (<< next-rec-num 10)
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
;; (setq cider-repl-use-pretty-printing t)


(defun cider-repl-pretify ()
  (interactive)
  (progn
    (beginning-of-buffer)
    (replace-regexp "\] " "]\n") 
    (beginning-of-buffer)
    (replace-regexp "\> #" ">\n#")
    (beginning-of-buffer)
    (replace-regexp "\} " "}\n")
    (beginning-of-buffer)
    (replace-regexp "\) " ")\n")
    (beginning-of-buffer)
    (replace-regexp ", " ",\n")
    (indent-region (point-min) (point-max))
    (end-of-buffer)))

(global-set-key (kbd "C-c p") 'cider-repl-pretify)



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
;(cider-repl-add-shortcut "add stgmandard tools" 'cider-repl-add-standard-tools)
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
;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
;; (setq inferior-lisp-program "sbcl")



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
      <x-color><param>grey55</param>(</x-color>call-interactively 'ess-eval-line-and-step<x-color><param>grey55</param>)))</x-color>

<x-color><param>grey55</param>(</x-color>add-hook 'ess-mode-hook
          '<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color><x-color><param>grey55</param>()</x-color>
             <x-color><param>grey55</param>(</x-color>local-set-key [<x-color><param>grey55</param>(</x-color>shift return<x-color><param>grey55</param>)</x-color>] 'my-ess-eval<x-color><param>grey55</param>)))</x-color>

<x-color><param>grey55</param>(</x-color>add-hook 'inferior-ess-mode-hook
          '<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>lambda</x-color><x-color><param>grey55</param>()</x-color>
             <x-color><param>grey55</param>(</x-color>local-set-key [C-up] 'comint-previous-input<x-color><param>grey55</param>)</x-color>
             <x-color><param>grey55</param>(</x-color>local-set-key [C-down] 'comint-next-input<x-color><param>grey55</param>)))</x-color>

<x-color><param>grey55</param>(</x-color><x-color><param>Purple</param>require</x-color> '<x-color><param>Maroon</param>ess-site</x-color><x-color><param>grey55</param>)</x-color>

;; <x-color><param>Red3</param>hooks

</x-color><x-color><param>grey55</param>(</x-color>add-hook 'ess-mode-hook 'r-autoyas-ess-activate<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>add-hook 'ess-mode-hook 'auto-complete-mode<x-color><param>grey55</param>)</x-color>
<x-color><param>grey55</param>(</x-color>add-hook 'inferior-ess-mode-hook 'r-autoyas-ess-activate<x-color><param>grey55</param>)</x-color>
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
(define-key ess-mode-map (kbd "<<C-return>") 'toggle-ess-eval-visibly-p)

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
;; (global-set-key (kbd "<<down>") 'next-one-line)
;; (global-set-key (kbd "<<up>") 'previous-one-line)
(put 'scroll-left 'disabled nil)



;;;;;;;; IDO

(ido-vertical-mode)

;;;;;;;; EWW
(setq shr-inhibit-images t)

;; http://oremacs.com/2014/12/30/ace-link-eww/
(defun oleh-eww-hook ()
  (define-key eww-mode-map "j" 'oww-down)
  (define-key eww-mode-map "k" 'oww-up)
  (define-key eww-mode-map "l" 'forward-char)
  (define-key eww-mode-map "L" 'eww-back-url)
  (define-key eww-mode-map "h" 'backward-char)
  (define-key eww-mode-map "v" 'recenter-top-bottom)
  (define-key eww-mode-map "V" 'eww-view-source)
  (define-key eww-mode-map "m" 'eww-follow-link)
  (define-key eww-mode-map "a" 'move-beginning-of-line)
  (define-key eww-mode-map "e" 'move-end-of-line)
  (define-key eww-mode-map "o" 'ace-link-eww)
  (define-key eww-mode-map "y" 'eww))
(add-hook 'eww-mode-hook 'oleh-eww-hook)
(defun oww-down (arg)
  (interactive "p")
  (if (bolp)
      (progn
        (forward-paragraph arg)
        (forward-line 1))
    (line-move arg)))
(defun oww-up (arg)
  (interactive "p")
  (if (bolp)
      (progn
        (forward-line -1)
        (backward-paragraph arg)
        (forward-line 1))
    (line-move (- arg))))
(defun ace-link-setup-default ()
  "Setup the defualt shortcuts."
  (eval-after-load "info"
    '(define-key Info-mode-map "o" 'ace-link-info))
  (eval-after-load "help-mode"
    '(define-key help-mode-map "o" 'ace-link-help))
  (eval-after-load "eww"
    '(progn
      (define-key eww-link-keymap "o" 'ace-link-eww)
      (define-key eww-mode-map "o" 'ace-link-eww))))
(ace-link-setup-default)

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


;;;;;;;; MU4E
;;https://gist.github.com/areina/3879626

(add-to-list 'load-path "~/installations/mu/mu4e")
(require 'mu4e)

;; default
(setq mu4e-maildir (expand-file-name "~/.Mail/daniel@madlan.co.il"))

(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; ;; don't save message to Sent Messages, GMail/IMAP will take care of this
;; (setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
(setq mu4e-maildir-shortcuts
      '(("/INBOX"             . ?i)
        ("/[Gmail].Sent Mail" . ?s)
        ("/[Gmail].Trash"     . ?t)))

;; ;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
;; I don't use a signature...
(setq
 user-mail-address "daniel.slutsky@gmail.com"
 user-full-name  "Daniel Slutsky"
 ;; message-signature
 ;;  (concat
 ;;    "Foo X. Bar\n"
 ;;    "http://www.example.com\n")
)

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu, 'gnutls' in Archlinux.

(require 'smtpmail)

(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials
      '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials
      (expand-file-name "~/.authinfo.gpg")
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)


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
 (kbd "<<tab>")
  'origami-toggle-node)

(define-key origami-mode-map
 (kbd "<<backtab>")
  'origami-toggle-all-nodes)

;;;;;;;; SUNSHINE
(let ((path "~/.emacs.d/manual-installations/sunshine.el/"))
  (if (file-exists-p path)
      (progn (add-to-list 'load-path path)
             (require 'sunshine)
             (setq sunshine-location "Tel Aviv"))))




;;;;;;;; KILL RING
(require 'browse-kill-ring)

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

(defun m ()
  (interactive)
  (find-file "/192.168.10.156:/home/we/enc/projects/mad-lan/clj/m.clj"))
