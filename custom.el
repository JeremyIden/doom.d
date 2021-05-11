(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dante-methods-alist
   '((new-flake-impure "flake.nix"
                       ("nix" "develop" "--impure" "-c" "cabal" "v2-repl"
                        (or dante-target
                            (dante-package-name)
                            "")
                        "--builddir=dist/dante"))
     (new-flake "flake.nix"
                ("nix" "develop" "-c" "cabal" "v2-repl"
                 (or dante-target
                     (dante-package-name)
                     "")
                 "--builddir=dist/dante"))
     (flake-impure "flake.nix"
                   ("nix" "develop" "--impure" "-c" "cabal" "v1-repl"
                    (or dante-target
                        (dante-package-name)
                        "")
                    "--builddir=dist/dante"))
     (flake "flake.nix"
            ("nix" "develop" "-c" "cabal" "v1-repl"
             (or dante-target
                 (dante-package-name)
                 "")
             "--builddir=dist/dante"))
     (styx "styx.yaml"
           ("styx" "repl" dante-target))
     (new-impure-nix dante-cabal-new-nix
                     ("nix-shell" "--run"
                      (concat "cabal v2-repl "
                              (or dante-target
                                  (dante-package-name)
                                  "")
                              " --builddir=dist/dante")))
     (new-nix dante-cabal-new-nix
              ("nix-shell" "--pure" "--run"
               (concat "cabal v2-repl "
                       (or dante-target
                           (dante-package-name)
                           "")
                       " --builddir=dist/dante")))
     (impure-nix dante-cabal-nix
                 ("nix-shell" "--run"
                  (concat "cabal v1-repl "
                          (or dante-target "")
                          " --builddir=dist/dante")))
     (nix dante-cabal-nix
          ("nix-shell" "--pure" "--run"
           (concat "cabal v1-repl "
                   (or dante-target "")
                   " --builddir=dist/dante")))
     (new-build "cabal.project.local"
                ("cabal" "new-repl"
                 (or dante-target
                     (dante-package-name)
                     nil)
                 "--builddir=dist/dante"))
     (nix-ghci
      #[257 "\300\301\302#\207"
            [directory-files t "shell.nix\\|default.nix"]
            5 "

(fn D)"]
      ("nix-shell" "--pure" "--run" "ghci"))
     (stack "stack.yaml"
            ("stack" "repl" dante-target))
     (mafia "mafia"
            ("mafia" "repl" dante-target))
     (bare-cabal
      #[257 "\300\301\302#\207"
            [directory-files t "..cabal$"]
            5 "

(fn D)"]
      ("cabal" "v2-repl" dante-target "--builddir=newdist/dante"))
     (bare-v1-cabal
      #[257 "\300\301\302#\207"
            [directory-files t "..cabal$"]
            5 "

(fn D)"]
      ("cabal" "v1-repl" dante-target "--builddir=dist/dante"))
     (bare-ghci
      #[257 "\300\207"
            [t]
            2 "

(fn _)"]
      ("ghci"))))
 '(docker-run-as-root nil)
 '(docker-tramp-docker-executable "docker")
 '(flycheck-disabled-checkers '(haskell-hlint))
 '(haskell-interactive-popup-errors nil)
 '(haskell-process-suggest-hoogle-imports t)
 '(org-babel-load-languages
   '((ein-python . t)
     (ein . t)
     (python . t)
     (jupyter-python . t)
     (emacs-lisp . t)))
 '(package-selected-packages
   '(psc-ide lsp-treemacs imenu-anywhere evil-multiedit evil-iedit-state helm-swoop notmuch hercules iedit helm-switch-to-repl slime helm-sly sly wgrep-helm flymake-hlint ob-ipython))
 '(safe-local-variable-values
   '((pyvenv-activate . "./env")
     (setenv "GOOGLE_APPLICATION_CREDENTIALS" "polar-standard-246307-5ff6b8064ee7.json")
     (pyenv-activate . "./env"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(num3-face-even ((t (:underline t :weight bold)))))
