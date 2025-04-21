#!/usr/bin/env python3
project = 'YosysHQ Docs'
author = 'YosysHQ GmbH'
copyright = '2024 YosysHQ GmbH'

# select HTML theme
html_theme = 'furo-ys'
html_css_files = ['custom.css']
html_theme_options: dict[str, any] = {}

# this is the root doc, we don't need to provde links back here
html_theme_options["brand_main_docs"] = None

# These folders are copied to the documentation's HTML output
html_static_path = ['_static']

# code blocks style 
pygments_style = 'colorful'
highlight_language = 'systemverilog'

# generate section labels from their heading
extensions = ['sphinx.ext.autosectionlabel']

# ensure that autosectionlabel will produce unique names
autosectionlabel_prefix_document = True
autosectionlabel_maxdepth = 1
