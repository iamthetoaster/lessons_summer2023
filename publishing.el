
(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("summer2023-notes"
         :base-directory "~/org/lessons/summer2023/source/"
         :base-extension "org"
         :publishing-directory "~/org/lessons/summer2023/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; just the default for this project.
         :auto-preamble t
          :auto-sitemap nil
         )
        ("summer2023-static"
         :base-directory "~/org/lessons/summer2023/source/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/org/lessons/summer2023/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("summer2023" :components ("summer2023-notes" "summer2023-static"))
      ))

;; (provide 'publishing)
;;; publishing.el ends here
