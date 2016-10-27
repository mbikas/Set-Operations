<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on October 1, 2014 at 5:42:55 AM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>comment</property> <value>'" This package contains all the code required for Homewor1"
"There is three classes in this package, one is a abstract superclass SetManager and other two is ListSetManager and OCSetmanager subclasses implentting all the deffered method of SetManager along with some other instance methods"'</value>
</component-property>

<class>
<name>SetManager</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>X Y </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>SetManager</class-id>
<body>This is the abstract suberclass SetManager  that manage sets and operations on sets.This SetManager deﬁnes storage and operations for two sets, named X and Y.In this class, interface for its subclasses is declared and it will defer implementation of some of its methods for concrete subclasses (ListSetManager and OCSetManager).@author: Md Abu Naser BikasUIN: 651644268UIC</body>
</comment>

<class>
<name>OCSetManager</name>
<environment>Smalltalk</environment>
<super>SetManager</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>OCSetManager</class-id>
<body>This is the concrete subclass named OCSetManager that implments set X and Y uisng OrderedCollection.This class implements all the abstract methods of the superclass SetManager along with its own instance methods.@author: Md Abu Naser BikasUIN: 651644268UIC</body>
</comment>

<class>
<name>ListSetManager</name>
<environment>Smalltalk</environment>
<super>SetManager</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>ListSetManager</class-id>
<body>This is the concrete subclass named ListSetManager that implments set X and Y uisng Linked List.This class implements all the abstract methods of the superclass SetManager along with its own instance methods.@author: Md Abu Naser BikasUIN: 651644268UIC</body>
</comment>

<class>
<name>SetApplication</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>manager </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>SetApplication</class-id>
<body>The main purpose if this class SetApplication is to keep keep a reference to an appropriate SetManager.The instance variable manager of SetApplication will be bound  to either ListSetManager or OCSetManager instance.There will be a single instance of SetApplication running at all times; however, a brand new the SetManager instance will be created whenever the methods startListManager and startOCManager are executed. (The actual type of SetManager created will depend on which of the two methods is actually executed.)==========Test Script: 1-----------------setApp := SetApplication new.setApp startOCManager."setApp startListManager."setApp add: 1.setApp add: $a.setApp add: 'Hello'.setApp add: 1.setApp display.setApp save.setApp remove: $a.setApp display.setApp member: 'Hello'.setApp switch.setApp display.setApp union.setApp display.setApp clearX.setApp display.====================Test Script: 2-----------------setApp := SetApplication new.setApp startListManager."setApp startOCManager."setApp add: 1.setApp add: #(1 2 3).setApp add: $a.setApp add: 'Bikas'.setApp add: 1.setApp remove: 2.setApp member: 2.setApp save.setApp clearX."setApp switch."setApp add: 2.setApp add: 3.setApp union.setApp at: 2.setApp display=====================================Test script : 3 ( only for do: method)-----------------------------------------------setApp := SetApplication new.setApp startOCManager.setApp add: 1.setApp add: 2.setApp add: 3.sum := 0.   setApp do: [ :aNumber | sum := sum + aNumber].   "sum."setApp  display.setApp startListManager.setApp add: 1.setApp add: 2.setApp add: 3.setApp  display.setApp do: [ :x |  x + 1].setApp  display.===========================@author: Md Abu Naser BikasUIN: 651644268UIC</body>
</comment>

<methods>
<class-id>SetApplication class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SetApplication</class-id> <category>accessing</category>

<body package="CS474" selector="manager:">manager: anObject	manager := anObject</body>

<body package="CS474" selector="manager">manager	^manager</body>
</methods>

<methods>
<class-id>SetApplication</class-id> <category>instance-methods</category>

<body package="CS474" selector="add:">add: element	"this method  will just call the add method of the delagated class bound to its instance variable manager"	^manager add: element</body>

<body package="CS474" selector="switch">switch	"this method  will just call the switch method of the delagated class bound to its instance variable manager"	^manager switch</body>

<body package="CS474" selector="at:">at: element	"this method  will just call the at method of the delagated class bound to its instance variable manager"	^manager at: element</body>

<body package="CS474" selector="display">display	"this method  will just call the display method of the delagated class bound to its instance variable manager"	^manager display</body>

<body package="CS474" selector="remove:">remove: element	"this keyword method  will just call the remove method of the delagated class bound to its instance variable manager"	^manager remove:element</body>

<body package="CS474" selector="save">save	"this method  will just call the save method of the delagated class bound to its instance variable manager"	^manager save</body>

<body package="CS474" selector="clearX">clearX	"this method  will just call the clearX method of the delagated class bound to its instance variable manager"	^manager clearX</body>

<body package="CS474" selector="startOCManager">startOCManager	"Here the instance variable will keep reference of  SetManager instance (ListSetManager)"	manager := OCSetManager new.	^self</body>

<body package="CS474" selector="union">union	"this method  will just call the union method of the delagated class bound to its instance variable manager"	^manager union</body>

<body package="CS474" selector="member:">member: element	"this method  will just call the memeber method of the delagated class bound to its instance variable manager"	^manager member: element</body>

<body package="CS474" selector="do:">do: aBlock	"this method  will just call the do method of the delagated class bound to its instance variable manager"	^manager do: aBlock</body>

<body package="CS474" selector="startListManager">startListManager	"Here the instance variable will keep reference of  SetManager instance (ListSetManager)"		manager := ListSetManager new.	^self</body>
</methods>

<methods>
<class-id>SetApplication</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initially this variable is nil and later it will keep reference of either ListSetManager or OCSetManager instance based on the instace method startListManager or startOCManager being called"	"SetApplication class delegates its instance methods via this variable manager"	super initialize.	manager := nil.	"manager := SetManager new."	^self</body>
</methods>


<methods>
<class-id>SetManager class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"As this is an Abstract class we should not be able to create an instace of this class."	"From Pharo By Example book we know that , in smalltalk a class is considered abstract if one of its method is abstract (self subclassResponsibilty). Nothing actually prevent us from creating an instace, everything should work until an abstract method is invoked"	" But here just to give a signal that we should not create instances of an abstract class making this method abstract too"	^self subclassResponsibility	"	super initialize.	X := nil.	Y := nil.	^self	"</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>accessing</category>

<body package="CS474" selector="x">x		^X</body>

<body package="CS474" selector="y:">y: anObject	Y := anObject</body>

<body package="CS474" selector="x:">x: anObject	X := anObject</body>

<body package="CS474" selector="y">y	^Y</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="clearX">clearX	"This is a unary method which is deferred that resets Set X to be an empty set"	" No new instance of X should be created. Set Y should be left unchanged"	^self subclassResponsibility</body>

<body package="CS474" selector="add:">add: element	"This keyword method should allows to add a new object to the Set X."	"No action should be taken if the argument is already in the set, otherwise the object should be added to X"	" This method is deferred"	^self subclassResponsibility</body>

<body package="CS474" selector="do:">do: aBlock	"This is a keyword method with a one-argument block."	" The argument block should applied to each elements in Set X"	"The element should be replaced by the value returned by the block on that element"	"This method is deferred"	^self subclassResponsibility</body>

<body package="CS474" selector="at:">at: i	"This keyword method takes a nonnegative integer parameter i and will return the element at position i in the set"	"This method is deferred"	^self subclassResponsibility</body>

<body package="CS474" selector="remove:">remove: element	"This keyword mehod should allows a user to remove the argument element from X."	"No action should be taken if the object in question is not in the set. Otherwise, the object passed as an argument is removed from X"	"This method is deferred. "	^self subclassResponsibility</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>private-methods</category>

<body package="CS474" selector="clearAll:">clearAll: set	"This is a keyword method with a single argument that removes all the elements from the given set"	"This method resets given set to be an empty set. No new instance is created"		(set isEmpty)				"If there is no elements in the given Set, nothing to do, just return"			ifTrue: [^self].	[set size &gt; 0]				"if there are some LinkValue in the provided set  remove all of them"		whileTrue: [	set removeFirst. ].	^self.</body>

<body package="CS474" selector="saveFrom:to:">saveFrom: fromSet to: toSet	"This is a keyword method that copies all the elements of set fromSet into set  toSet"	"The previous content of toSet will be lost and replaced with set fromSet. The content of fromSet is not effected"	"Deep copy is applied, so that both sets will not share any data structures, means, they can be modiﬁed independently of each other"	self clearAll: toSet.	1 to: fromSet size do: [:index | toSet add: (fromSet at: index) dcopy].	^self</body>

<body package="CS474" selector="printSet:">printSet: set	"This keyword method used to print out all the elements of given set (LinkedList or OrderedColelction) in the Transcript"		Transcript show: set  printString; cr.	"Checking if set is an instance of OrderedCollection"	"(set isMemberOf: OrderedCollection)			ifTrue: [ Transcript show: set  printString].		(set isMemberOf: LinkedList)			ifTrue: 	[ 					Transcript show: 'Linked List ('. 					1 to: set size do: [ :index | ( Transcript show: (set at: index) value printString, ' ' )].					Transcript show: ')'.				].	Transcript cr. 	^self	"</body>
</methods>

<methods>
<class-id>SetManager</class-id> <category>instance-methods</category>

<body package="CS474" selector="display">display	"This unary method displays the current content of sets X and Y in the Transcript window."		"Transcript clear."										"Clear the Transcript WIndow"	Transcript show: Date dateAndTimeNow printString; cr.	"Showing current System time just to keep track of messages"	Transcript show: 'Contents of Set X : '; cr.		"Here printSet is a custom keyword method which prints elemtents of a given set in the Transcript"	self printSet: X.										"Prints the elements of Set X"			Transcript show: 'Contents of Set Y : '; cr.	self printSet: Y.										"Prints the elements of Set Y"			^self.</body>

<body package="CS474" selector="save">save	"This unary method copies the X set into Y"	"The previous content of Y will be lost and replaced with set X. The content of X is not effected"	"Deep copy is applied, so that both sets will not share any data structures, means, they can be modiﬁed independently of each other"	^self saveFrom: X to: Y</body>

<body package="CS474" selector="member:">member: element	"This keyword method returns true or false depending on whether set X contains the given argument number."		1 to: X size do: [:index | ((self at: index) = element) ifTrue: [^true]].	^false	"Checking if X is an instance of OrderedCollection"	"(X isMemberOf: OrderedCollection) ifTrue: [^X includes: element]."	"at this point X is surely a LinkedList"	"Returns true is the LinkedList contains the element"	"1 to: X size do: [:index | (X at: index) value = element ifTrue: [^true]]."	"otherwise returns false"	"^false"</body>

<body package="CS474" selector="union">union	"This unary method computes the set union of set X and Y"	"The result is stored as set X. The old content of X is lost and contents of Y is not modified"	"Duplicate values are ignored"	"Adding the elements from Y to X at the end of X, only if the element is not already a member of X"	"If the set Y is OrderedCollection then adding the element otherwise adding the value of LinkValue"		"1 to: Y size do:  [:index | (self member: (Y at: index)) ifFalse: [self add: (Y at: index)]].	^self"	1 to: Y size do:  [:index |			(Y isMemberOf: LinkedList)				ifTrue: 					[(self member: (Y at: index)) ifFalse: [self add: (Y at: index) value]]				ifFalse: [(self member: (Y at: index)) ifFalse: [self add: (Y at: index)]]].	^self</body>

<body package="CS474" selector="switch">switch	"This unary method swaps the sets associated with X and Y"	"X will now have all the elements of Y set and vice versa"	"First saving a copy of set X into a temporary set temp, then copying from Y to X and at the end getting temp to Y"	| temp |	temp := (X dcopy).	self saveFrom: Y to: X.	self saveFrom: temp to: Y.	temp := nil.	^self	"Checking if X is an instance of either OrderedCollection or LinkedList, updating temp based on that"	"(X isMemberOf: OrderedCollection)		ifTrue: [temp := OrderedCollection new]		ifFalse: [temp := LinkedList new].		self saveFrom: X to: temp.	self saveFrom: Y to: X.	self saveFrom: temp to: Y.	self clearAll: temp.	temp := nil.	^self	"</body>
</methods>


<methods>
<class-id>OCSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. Initially the set X and Y would be two empty OrderedCollection"	X := OrderedCollection new.	Y := OrderedCollection new.	^self</body>
</methods>

<methods>
<class-id>OCSetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="remove:">remove: element	"This keyword mehod allows a user to remove the given argument element from X."	"No action is taken if the object in question is not in the set. Otherwise, the object passed as an argument is removed from X"	"This method is deferred by its superclass SetManager. "	"If  the given object present in X then removing the element from set X"	(X includes: element) ifTrue: [X remove: element ifAbsent: [^element]].	^element</body>

<body package="CS474" selector="clearX">clearX	"This is a unary method implementation which is deferred by Set Manager"	"This method resets Set X to be an empty set. No new instance of X is created and Set Y is unchanged"		^super clearAll: X</body>

<body package="CS474" selector="add:">add: element	"This keyword method allows to add a new object to the Set X."	"Nothing is done if the argument is already in the set X, otherwise the object is added to X"	" This is the implementation of the deferred method by its superclass SetManager"	(X includes: element) ifFalse: [X add: element].	^element</body>

<body package="CS474" selector="do:">do: aBlock	"This is a keyword method implementation with a one-argument block which is deferred by Set Manager"	" The argument block applied to each elements in Set X"	"The element is replaced by the value returned by the block on that element"	1 to: X size		do: [:index | X at: index put: (aBlock value: (X basicAt: index) value)]</body>

<body package="CS474" selector="at:">at: i	"This keyword method takes a nonnegative integer parameter i and returns the element at position i in the set X "		^X at: i</body>
</methods>


<methods>
<class-id>ListSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. Initially the set X and Y would be two empty LinkedList"	"super initialize."	X := LinkedList new.	Y := LinkedList new.	^self</body>
</methods>

<methods>
<class-id>ListSetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="add:">add: element	"This keyword method allows to add a new object to the Set X."	"Nothing is done if the argument is already in the set X, otherwise the object is added to X"	" This is the implementation of the deferred method by its superclass SetManager"	"First checking if the given argument is already in set X, if yes then doing nothing, just returning the element"	X size &gt; 0		ifTrue: 			[1 to: X size				do: [:index | (self at: index)  = element ifTrue: [^element]]].	"If the argument is new obejct then adding a new LinkValue to the set X"	X add: (LinkValue value: element).	^element</body>

<body package="CS474" selector="do:">do: aBlock	"This is a keyword method with a one-argument block."	"The argument block is applied to each elements in Set X"	"The element of X is replaced by the value returned by the block on that element"	"This method was deferred by SetManager"		"Saving the block returne values for each index in a temporary LinkedList as we cannot use at:put: in LinkedList"	"Atfer executing the whole block, clearing the X and putting back values from tempList to X"	| tempList |	tempList := LinkedList new.	1 to: X size		do: [:index | tempList add: (LinkValue value: (aBlock value: (X at: index) value))].	self clearX.	1 to: tempList size do: [:index | X add: (tempList at: index) dcopy].		"releasing memory of tempList"	self clearAll: tempList.	tempList := nil</body>

<body package="CS474" selector="at:">at: i	"This keyword method takes a nonnegative integer parameter i and returns the element at position i in the set X "	^(X at: i) value</body>

<body package="CS474" selector="remove:">remove: element	"This keyword mehod allows a user to remove the argument element from X."	"No action is taken if the object in question is not in the set. Otherwise, the object passed as an argument is removed from X"	"This method is deferred by its superclass SetManager. "	"If the given object present in X then removing the element from set X"	1 to: X size		do: [:index | (X at: index) value = element ifTrue: [^X remove: (X at: index)]].	^element</body>

<body package="CS474" selector="clearX">clearX	"This is a unary method implementation which is deferred by Set Manager"	"This method resets Set X to be an empty set. No new instance of X is created and Set Y is unchanged"	^self clearAll: X</body>
</methods>


<methods>
<class-id>Core.LinkValue</class-id> <category>printing</category>

<body package="CS474" selector="printOn:">printOn: outStream	"Overridind the printOn method to see the actual value of any LinkValue"	outStream nextPutAll: 'aLinkValue: '.	"by commenting this line we can get only the value like OC"	outStream nextPutAll: value printString.	^self</body>
</methods>



</st-source>
