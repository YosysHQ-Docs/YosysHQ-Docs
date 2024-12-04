REPOS :=
REPOS += git@github.com:YosysHQ-Docs/AppNote-109.git
REPOS += git@github.com:YosysHQ-Docs/AppNote-120.git
REPOS += git@github.com:YosysHQ/mcy.git
REPOS += git@github.com:YosysHQ/SymbiYosys.git

checkout:
	test ! -d prjs
	mkdir -p prjs
	set -ex; cd prjs; for url in $(REPOS); do git clone $$url; done

status:
	set -e; for dir in prjs/*; do ( echo; echo; set -ex; cd $$dir; git status; ); done

update:
	set -e; for dir in prjs/*; do \
	  echo; echo; echo "=== $$dir ==="; ( \
	    set -ex; \
	    mkdir -p $$dir/docs/source/_static; \
	    for file in docs/.gitignore docs/Makefile \
	                docs/source/requirements.txt .readthedocs.yaml; \
	    do cp $$file $$dir/$$file; done; \
	    test -f $$dir/docs/source/_static/custom.css || \
	      cp docs/source/_static/custom.css $$dir/docs/source/_static/custom.css; \
	    test -f $$dir/docs/source/conf.diff || \
	      cp docs/source/conf.diff $$dir/docs/source/conf.diff; \
	    cp docs/source/conf.py $$dir/docs/source/conf.py; \
	    patch $$dir/docs/source/conf.py $$dir/docs/source/conf.diff; \
	  ); \
	done

