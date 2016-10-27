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
<body>This is the abstract suberclass SetManager  that manage sets and operations on sets.
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
<body>This is the concrete subclass named OCSetManager that implments set X and Y uisng OrderedCollection.
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
<body>This is the concrete subclass named ListSetManager that implments set X and Y uisng Linked List.
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
<body>The main purpose if this class SetApplication is to keep keep a reference to an appropriate SetManager.
</comment>

<methods>
<class-id>SetApplication class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>SetApplication</class-id> <category>accessing</category>

<body package="CS474" selector="manager:">manager: anObject

<body package="CS474" selector="manager">manager
</methods>

<methods>
<class-id>SetApplication</class-id> <category>instance-methods</category>

<body package="CS474" selector="add:">add: element

<body package="CS474" selector="switch">switch

<body package="CS474" selector="at:">at: element

<body package="CS474" selector="display">display

<body package="CS474" selector="remove:">remove: element

<body package="CS474" selector="save">save

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="startOCManager">startOCManager

<body package="CS474" selector="union">union

<body package="CS474" selector="member:">member: element

<body package="CS474" selector="do:">do: aBlock

<body package="CS474" selector="startListManager">startListManager
</methods>

<methods>
<class-id>SetApplication</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>SetManager class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>SetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>SetManager</class-id> <category>accessing</category>

<body package="CS474" selector="x">x

<body package="CS474" selector="y:">y: anObject

<body package="CS474" selector="x:">x: anObject

<body package="CS474" selector="y">y
</methods>

<methods>
<class-id>SetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="add:">add: element

<body package="CS474" selector="do:">do: aBlock

<body package="CS474" selector="at:">at: i

<body package="CS474" selector="remove:">remove: element
</methods>

<methods>
<class-id>SetManager</class-id> <category>private-methods</category>

<body package="CS474" selector="clearAll:">clearAll: set

<body package="CS474" selector="saveFrom:to:">saveFrom: fromSet to: toSet

<body package="CS474" selector="printSet:">printSet: set
</methods>

<methods>
<class-id>SetManager</class-id> <category>instance-methods</category>

<body package="CS474" selector="display">display

<body package="CS474" selector="save">save

<body package="CS474" selector="member:">member: element

<body package="CS474" selector="union">union

<body package="CS474" selector="switch">switch
</methods>


<methods>
<class-id>OCSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>OCSetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="remove:">remove: element

<body package="CS474" selector="clearX">clearX

<body package="CS474" selector="add:">add: element

<body package="CS474" selector="do:">do: aBlock

<body package="CS474" selector="at:">at: i
</methods>


<methods>
<class-id>ListSetManager</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>ListSetManager</class-id> <category>deferred-methods</category>

<body package="CS474" selector="add:">add: element

<body package="CS474" selector="do:">do: aBlock

<body package="CS474" selector="at:">at: i

<body package="CS474" selector="remove:">remove: element

<body package="CS474" selector="clearX">clearX
</methods>


<methods>
<class-id>Core.LinkValue</class-id> <category>printing</category>

<body package="CS474" selector="printOn:">printOn: outStream
</methods>



</st-source>