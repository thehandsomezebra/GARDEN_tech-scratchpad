#!/bin/sh

if [[ $1 == "" ]]; then
	INPUTFILE="/app/inputs/5-input.txt"
# elif [[ $1 == "test" ]]; then
#     DATA="/app/inputs/day-5-example"
else
	INPUTFILE=$1
fi

INPUT=$(cat $INPUTFILE)

grep '|' $INPUTFILE >/tmp/rules
grep ',' $INPUTFILE | tr ',' ' ' >/tmp/prints

get_line() {
	tail -n +$2 $1 | head -n $3
}
get_element() {
	cut -f $1 -d ' '
}

truncate() {
	cut -f -$1 -d ' '
}

skip() {
	cut -f $1- -d ' '
}
pattern() {
	pattern=$(echo $1 | tr ' ' '\n' | xargs -i% echo -n " -e "\'%\')
	if test "$pattern" = ""; then
		return
	fi
	echo $2 | sh -c "grep -o $pattern"
}
median() {
	echo $1 | cut -f $(($(echo "$1" | wc -w) / 2 + 1)) -d ' '
}

output=0
for i in $(seq $(cat /tmp/prints | wc -l)); do
	line=$(get_line /tmp/prints $i 1)
	sum=0
	for element in $(seq $(echo "$line" | wc -w)); do
		num=$(echo "$line" | get_element $element)
		before=$(echo "$line" | truncate $element)
		after=$(echo "$line" | skip $element)
		left=$(grep -oE "$num"'\|[0-9]+' /tmp/rules | cut -f 2 -d '|' | tr '\n' ' ' | skip 1)
		right=$(grep -oE '[0-9]+\|'"$num" /tmp/rules | cut -f 1 -d '|' | tr '\n' ' ' | skip 1)
		leftres=$(pattern "$left" "$before" | wc -l)
		rightres=$(pattern "$right" "$after" | wc -l)
		sum=$(($sum + $leftres + $rightres))
	done
	if test $sum -eq '0'; then
		output=$(($output + $(median "$line")))
	fi
done

echo "Advent of Code 2024 Day 5a Solution...."
echo "+-----------------------------------+"
echo "|           Total: $output             |"
echo "+-----------------------------------+"
