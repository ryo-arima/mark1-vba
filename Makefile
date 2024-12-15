lint:
	find books -type f -name '*.xml' -exec xmllint --format --output {} {} \;

s:
	git add .
	commit-emoji
	git push origin main

zip:
	cd books && zip -r main.xlsx *

unzip:
	cd books && unzip -o main.xlsx && rm *.xlsx 
