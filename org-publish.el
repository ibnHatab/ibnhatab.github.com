
(require 'org-publish)

(setq org-publish-project-alist
      '(("orgfiles"
	 :base-directory "org"
	 :base-extension "org"
	 :publishing-directory "."
	 :publishing-function org-publish-org-to-html
	 :recursive t

	 :headline-levels 3
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\"/>"
	 :org-export-html-style "<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\"/>"

	 ;; :auto-sitemap    t
	 ;; :sitemap-filename "sitemap.org"
	 ;; :sitemap-title    "Sitemap"

	 :html-preamble t)

	("website" :components ("orgfiles"))))