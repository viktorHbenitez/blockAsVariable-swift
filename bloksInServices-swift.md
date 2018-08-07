#  Closure in Swift

## Refactor code to prepare for service 

Sketch    
![imagen](../master/assets/bloks-swift1.png)

```swift

// The syntax for closure types is (in) -> out.
typealias CompletionBlock = (InParameters) -> Void
completionHandler : (inParameters) -> Void
completionHandler : (inParameters) -> ()


// 1. Declarate the block
func nameMethodWithHandler(completionHandler:@escaping(inParameters) -> Void) {}

// 2. Invoke the block
completionHandler(inParameterToSend);

// 3. Define the block and then retrive the result
objectInstanceClass.nameMethodWithHandler { (inParameters) in
    // Do something ..
}
```
Example result:
in ViewController  
![imagen](../master/assets/ClosureInService.png)




