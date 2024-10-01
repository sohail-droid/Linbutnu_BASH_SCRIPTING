Unfortunately I created all folders with exercise and later i wanted to change it to levels

command i used to create folders

for i in {1..15}; do mkdir exercise${i}; done

To now rename the directories

for i in {1..15}; do mv exercise${i} level{i}; done

To move all the exercise files into the level directories

for i in {1..16}; do mv ${i}exe.sh level${i}/solution.sh; done
