# No frills project management

### 2017-02-23 - vim syntax file created, very short and simple rules:

Projects are stored in a file named `proj.txt` or `[something].proj.txt` (or whatever you decide, by changing `ftdetect/proj.vim`)

A project is simply a line in the file, preferably starting at column 1

Indent subtasks under the project

Mark projects or tasks as important using a star `*` before the task, followed by any number of spaces or tabs

Mark projects or tasks as done by using a lowercase `x` before the task, followed by any number of spaces (shortcut: \x)

#### Todo:

* Recursively mark as done tasks under the project, when marking it as complete.

* Adding more sophisticated project management stuff, such as due dates, percent task completion, prerequisites, etc.

* Folding project tasks

* Choose to hide complete tasks

* Highlight due dates using some criteria (expired, next 7 days, etc.)


Losely inspired by: 
* http://todotxt.com/
* https://github.com/freitass/todo.txt-vim
