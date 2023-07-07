| Assertion                                                    	| Purpose                                                                                    	|
|--------------------------------------------------------------	|--------------------------------------------------------------------------------------------	|
| assert( test, [msg] )                                        	| Ensures that test is true.                                                                 	|
| assert_not( test, [msg] )                                    	| Ensures that test is false.                                                                	|
| assert_equal( expected, actual, [msg] )                      	| Ensures that expected == actual is true.                                                   	|
| assert_not_equal( expected, actual, [msg] )                  	| Ensures that expected != actual is true.                                                   	|
| assert_same( expected, actual, [msg] )                       	| Ensures that expected.equal?(actual) is true.                                              	|
| assert_not_same( expected, actual, [msg] )                   	| Ensures that expected.equal?(actual) is false.                                             	|
| assert_nil( obj, [msg] )                                     	| Ensures that obj.nil? is true.                                                             	|
| assert_not_nil( obj, [msg] )                                 	| Ensures that obj.nil? is false.                                                            	|
| assert_empty( obj, [msg] )                                   	| Ensures that obj is empty?.                                                                	|
| assert_not_empty( obj, [msg] )                               	| Ensures that obj is not empty?.                                                            	|
| assert_match( regexp, string, [msg] )                        	| Ensures that a string matches the regular expression.                                      	|
| assert_no_match( regexp, string, [msg] )                     	| Ensures that a string doesn't match the regular expression.                                	|
| assert_includes( collection, obj, [msg] )                    	| Ensures that obj is in collection.                                                         	|
| assert_not_includes( collection, obj, [msg] )                	| Ensures that obj is not in collection.                                                     	|
| assert_in_delta( expected, actual, [delta], [msg] )          	| Ensures that the numbers expected and actualare within delta of each other.                	|
| assert_not_in_delta( expected, actual, [delta], [msg] )      	| Ensures that the numbers expected and actualare not within delta of each other.            	|
| assert_in_epsilon ( expected, actual, [epsilon], [msg] )     	| Ensures that the numbers expected and actualhave a relative error less than epsilon.       	|
| assert_not_in_epsilon ( expected, actual, [epsilon], [msg] ) 	| Ensures that the numbers expected and actualdon't have a relative error less than epsilon. 	|
| assert_throws( symbol, [msg] ) { block }                     	| Ensures that the given block throws the symbol.                                            	|
| assert_raises( exception1, exception2, ... ) { block }       	| Ensures that the given block raises one of the given exceptions.                           	|
| assert_instance_of( class, obj, [msg] )                      	| Ensures that obj is an instance of class.                                                  	|
| assert_not_instance_of( class, obj, [msg] )                  	| Ensures that obj is not an instance of class.                                              	|
| assert_kind_of( class, obj, [msg] )                          	| Ensures that obj is an instance of class or is descending from it.                         	|
| assert_not_kind_of( class, obj, [msg] )                      	| Ensures that obj is not an instance of class and is not descending from it.                	|
| assert_respond_to( obj, symbol, [msg] )                      	| Ensures that obj responds to symbol.                                                       	|
| assert_not_respond_to( obj, symbol, [msg] )                  	| Ensures that obj does not respond to symbol.                                               	|
| assert_operator( obj1, operator, [obj2], [msg] )             	| Ensures that obj1.operator(obj2) is true.                                                  	|
| assert_not_operator( obj1, operator, [obj2], [msg] )         	| Ensures that obj1.operator(obj2) is false.                                                 	|
| assert_predicate ( obj, predicate, [msg] )                   	| Ensures that obj.predicate is true, e.g. assert_predicate str, :empty?                     	|
| assert_not_predicate ( obj, predicate, [msg] )               	| Ensures that obj.predicate is false, e.g. assert_not_predicate str, :empty?                	|
| flunk( [msg] )                                               	| Ensures failure. This is useful to explicitly mark a test that isn't finished yet.         	|
