# Parser-Logical-Form-Generator

* Course : COL-765, Introduction to Logic and Functional Programming, Assignment-5

Objective : Program that parses and generate the Logical Form of English Sentences given in certain form.

Some examples of sentences whose logical form can be generated using our Prolog program : 

* Ram is a man                      :    man(ram)

* God  loves Ram                    :    loves(god, ram)

* Ram eats an apple                 :    eats(ram, apple)

* Sita drinks water                 :    drinks(sita, water)

* Every teacher teaches a course    :    all(X,teacher(X) -->exist(Y,  course(Y) /\ teaches(X,Y)))

* The cat eats a rat                :    exist(X, cat(X) /\ exist(Y, rat(Y) /\ eats(X,Y))

* A fat man hates sita              :    exists(X, fat(X) /\ man(X)  /\ hate(X,sita))
