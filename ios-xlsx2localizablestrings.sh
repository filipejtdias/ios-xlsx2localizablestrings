#!/bin/bash

EXCLUDE_KEYS="Translated String|Unstranslated string|Key does not exist|Changed original string"

# For each Translation File (.xlsx)
for file in *.xlsx; do

	# Create Temporary File
	TEMP_FILE="${file%.xlsx}.tsv"

	# Translated File
	LOCALIZABLE_FILE="${file%.xlsx}.txt"

	# Convert .xlsx to ";" separated value file
	python xlsx2tsv.py "$file" > "$TEMP_FILE"

	while IFS=";" read -r f1 f2 f3 f4; do

		if [ -z "$f2" ] ; then
	  		# For comments
	  		echo ""
	    	echo "//" $f1""
	    	echo ""
	  	else
	  		if [ -z "$f3" ] ; then
	  			# For EN File
				echo "\""$f1"\" = \""$f2"\";"
	  		else
	  			# For other languages
	  			echo "\""$f1"\" = \""$f3"\";"
	  		fi
	    	
	  	fi
      
	done < "$TEMP_FILE" > "$LOCALIZABLE_FILE"

	CONTENT=$(cat "$LOCALIZABLE_FILE")

	FILENAME="Localizable.strings\n    ${file%.xlsx}"
	GITHUB_URL="Created by https://github.com/filipejtdias/ios-xlsx2localizablestrings"
	MODIFIED_DATE_USER="Modified by $(whoami) on $(date +%Y-%m-%d)."

	printf "/*\n    ${FILENAME}\n\n    ${GITHUB_URL}\n    ${MODIFIED_DATE_USER}\n*/\n\n" > "$LOCALIZABLE_FILE"
	echo "$CONTENT" | egrep -v "$EXCLUDE_KEYS" | grep -v -e "^//\s*$" >> "$LOCALIZABLE_FILE"

	# Remove temporary file
	rm -rf "$TEMP_FILE"
done
