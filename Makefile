
DT := `date +"%Y-%m-%d_%H%M%S"`

run:
	echo $(DT)
	git checkout develop
	git pull
	git-branch-clean
	git branch $(DT)
	git checkout $(DT)
	echo $(DT) > test
	git add .
	git commit -m "$(DT)"
	git push --set-upstream origin $(DT)
