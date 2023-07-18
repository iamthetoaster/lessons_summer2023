
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
         :auto-sitemap t
         :sitemap-filename "index.org"
         :sitemap-title "Lessons Summer of 2023"
         :html-head "<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Inconsolata|Open Sans\">
<link rel=\"stylesheet\" href=\"style.css\">"
         ; :html-link-home "./index.html"
         :author "Gabriel Cardozo"
         ; :property "header-args :results raw verbatim output :post output_drawer(data=*this*) :noweb strip-export" TODO: Think about how to make this work?     :auto-sitemap nil
         )
        ("summer2023-static"
         :base-directory "~/org/lessons/summer2023/source/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|svg"
         :publishing-directory "~/org/lessons/summer2023/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("summer2023" :components ("summer2023-notes" "summer2023-static"))
      ))

;; (provide 'publishing)
;;; publishing.el ends here
