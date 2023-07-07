# Questions 

1. Rubocode changed this code
```Ruby
 splitter.map {|word| word.reverse}
```
into this code:
```Ruby
splitter.map(&:reverse)
```
I have not seen the ampersand+colon syntax anywhere.  I've seen the logical operator '&&' and the 'and' keyword but not a single ampersand by itself. I'd like to know how to use this syntax.

2. My Advice.new controller method isn't working.  I have a feeling it's because it's confused about the pluralization of the Advice model 
