Questions

# 1. Using the echo command print in console "Hello World". Here is some info about echo command [https://discuss.codecademy.com/t/what-are-practical-uses-of-the-echo-command/394788]

(base) vschuckar@Vitorias-Air lab-bash % echo "Hello World" 
Hello World

# 2. Create a new directory called new_dir.

(base) vschuckar@Vitorias-Air lab-bash % mkdir new_dir 
(base) vschuckar@Vitorias-Air lab-bash % ls
exercices	lorem		new_dir		readme.md
inputs		lorem-copy	outputs


# 3. Delete/Remove the directory new_dir.

(base) vschuckar@Vitorias-Air lab-bash % rm -rf new_dir
(base) vschuckar@Vitorias-Air lab-bash % ls
exercices	lorem		outputs
inputs		lorem-copy	readme.md

# 4. Copy the file sed.txt from the lorem folder and paste it to the folder lorem-copy folder.

(base) vschuckar@Vitorias-Air lab-bash % cd lorem
(base) vschuckar@Vitorias-Air lorem % cp sed.txt ../lorem-copy 
(base) vschuckar@Vitorias-Air lorem % cd ..
(base) vschuckar@Vitorias-Air lab-bash % ls
exercices	lorem		outputs
inputs		lorem-copy	readme.md
(base) vschuckar@Vitorias-Air lab-bash % cd lorem-copy
(base) vschuckar@Vitorias-Air lorem-copy % ls
dummy_file.txt	sed.txt

# 5. Copy the other two files from the lorem folder to lorem-copy folder in just one line using semicolon ;.
(base) vschuckar@Vitorias-Air lorem % cp lorem.txt ../lorem-copy; cp at.txt ../lorem-copy

# 6. Show the sed.txt file content from the lorem folder.
(base) vschuckar@Vitorias-Air lorem % cat sed.txt

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, 
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. 
Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, 
sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. 
Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, 
sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. 
Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, 
nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, 
vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?Homo homini lupus

# 7. Show the at.txt file and lorem.txt file contents from lorem folder.

(base) vschuckar@Vitorias-Air lorem % cat at.txt; cat lorem.txt

At vero eos ET accusamus ET iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
deleniti atque corrupti quos dolores ET quas molestias excepturi sint occaecati cupiditate non 
provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum ET dolorum fuga. 
Et harum quidem rerum facilis est ET expedita distinctio. 
Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod 
maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. 
Temporibus autem quibusdam ET aut officiis debitis aut rerum necessitatibus saepe eveniET 
ut ET voluptates repudiandae sint ET molestiae non recusandae. 
Itaque earum rerum hic tenETur a sapiente delectus, ut aut reiciendis voluptatibus maiores 
alias consequatur aut perferendis doloribus asperiores repellat
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

# 8. Print the first 3 rows in sed.txt file from lorem-copy folder.

(base) vschuckar@Vitorias-Air lorem-copy % head -3 sed.txt
Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, 
totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. 
Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, 

# 9. Print the last 3 rows in sed.txt file from lorem-copy folder.

(base) vschuckar@Vitorias-Air lorem-copy % tail -3 sed.txt
Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, 
nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, 
vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?Homo homini lupus

# 10. Add Homo homini lupus. at the end of sed.txt file in the lorem-copy folder.

(base) vschuckar@Vitorias-Air lorem-copy % echo "Homo homini lupus." >> sed.txt

# 11. Print the last 3 rows in sed.txt file from lorem-copy folder. You should see Homo homini lupus..

(base) vschuckar@Vitorias-Air lorem-copy % tail -3 sed.txt
nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, 
vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?Homo homini lupus
Homo homini lupus.

# 12. sed command is used to replace the text in a file. Use the sed command to replace all occurances of et with ET in the file at.txt file present in the folder lorem. You can use the following link to refer to sed commands [https://www.linode.com/docs/guides/manipulate-text-from-the-command-line-with-sed/] Check the contents of the sed.txt file using cat command.

(base) vschuckar@Vitorias-Air lorem % sed -i.bak 's/et/ET/g' at.txt
(base) vschuckar@Vitorias-Air lorem % cat at.txt 
At vero eos ET accusamus ET iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
deleniti atque corrupti quos dolores ET quas molestias excepturi sint occaecati cupiditate non 
provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum ET dolorum fuga. 
Et harum quidem rerum facilis est ET expedita distinctio. 
Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod 
maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. 
Temporibus autem quibusdam ET aut officiis debitis aut rerum necessitatibus saepe eveniET 
ut ET voluptates repudiandae sint ET molestiae non recusandae. 
Itaque earum rerum hic tenETur a sapiente delectus, ut aut reiciendis voluptatibus maiores 
alias consequatur aut perferendis doloribus asperiores repellat

# error in the exercise text? Why cat sed.txt? I did cat of the at.txt instead.

# 13. Find who is the system user.

(base) vschuckar@Vitorias-Air lorem % whoami
vschuckar

# 14. Find the current path of the directory you are in.

(base) vschuckar@Vitorias-Air lorem % pwd
/Users/vschuckar/Desktop/data_analytics/Week_1/Day_1/Morning/lab-bash/lorem

# 15. List all files with the extension .txt in lorem folder.

(base) vschuckar@Vitorias-Air lorem % ls *.txt
at.txt		lorem.txt	sed.txt

# 16. Count the rows in sed.txt file from lorem folder. Look concatenate cat and wc with the pipe |.

(base) vschuckar@Vitorias-Air lorem % cat sed.txt | wc -l        
       9

#17. Count the files which start with lorem in all directories.

(base) vschuckar@Vitorias-Air lab-bash % find . -type f -name 'lorem*'        
./lorem-copy/lorem.txt
./lorem/lorem.txt
(base) vschuckar@Vitorias-Air lab-bash % find . -type f -name 'lorem*' | wc -l

       2

#Store your name in a variable with read command.
(base) vschuckar@Vitorias-Air lab-bash % read variable 
vitoria 

#Print that variable.
(base) vschuckar@Vitorias-Air lab-bash % echo $variable
vitoria

#Create a new directory named with variable name.
(base) vschuckar@Vitorias-Air lab-bash % mkdir vitoria 
(base) vschuckar@Vitorias-Air lab-bash % ls
exercices	inputs		lorem		lorem-copy	outputs		readme.md	vitoria

#Remove that directory.

(base) vschuckar@Vitorias-Air lab-bash % rm -rf vitoria
(base) vschuckar@Vitorias-Air lab-bash % ls 
exercices	inputs		lorem		lorem-copy	outputs		readme.md
