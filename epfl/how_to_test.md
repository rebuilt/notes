# How to test - 
[The magic tricks of testing by Sandi Metz](https://www.youtube.com/watch?v=URSWYvyc42M&t=589s)

| Message            	| Query                    	| Command                           	|
|--------------------	|--------------------------	|-----------------------------------	|
| Incoming =>        	| Assert what is sent back 	| Assert direct public side effects 	|
| => Sent to Self => 	| Ignore                   	| Ignore                            	|
| <= Outgoing        	| Ignore                   	| Expect to send                    	|

# Incoming Messages
The receiver of incoming messages has the sole responsibility for asserting **the result** || **the direct public side effect**

1. Incoming Queries
Test incoming query messages by making assertions about what they send back(Assert state)
Assert you get back what you expect to get back

| Message            	| Query                       	| Command 	|
|--------------------	|-----------------------------	|---------	|
|**Incoming =>**     	| Assert what is sent back     	| .        	|

2. Incoming Commands
Test incoming command messages by making assertions about **direct public side effects**
Direct means it's the responsibility of the last class involved; not an indirect chain of classes.  

| Message            	| Query 	| Command                    	        |
|--------------------	|-------	|----------------------------	        |
| **Incoming =>**        	| .      	| Assert direct  public side effects 	|

# Messages sent to self 
Don't test private methods

| Message            	| Query       	| Command     	|
|--------------------	|-------------	|-------------	|
| **=> Sent to Self =>** 	| Do not test 	| Do not test 	|

# Outgoing messages

1. Outgoing Queries
  * Do not test outgoing query messages
  * Do not make *assertions* about their result
  * Do not *expect* to send them

| Message            	| Query       	| Command 	|
|--------------------	|-------------	|---------	|
| **<= Outgoing**        	| Do not test 	| .        	|

2. Outgoing Commands
Only test direct effects.  If, eventually, through other referenced classes something else gets triggered... that's not the responsibility of this class. When you do test that behavior, it's an integration test.  Integration tests should not be put in your unit tests.
So how do you correctly make a test without assuming state and side effects of other parts of your software?
  * Create a Mock 
  * Inject the Mock
  * Set expectation about sending the message
  * Trigger the event
  * Verify step on the Mock
Expect to send outgoing command messages.  You don't need to mock objects if the side effects are cheap and close.  

| Message            	| Query 	| Command        	|
|--------------------	|-------	|----------------	|
| **<= Outgoing**        	| .      	| Expect to send 	|

