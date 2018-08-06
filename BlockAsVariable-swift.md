#  Closure in Swift

## As a variable

Sketch    
![imagen](../master/assets/bloks-swift1.png)

```swift

// 1. Declarate the block
var closureName: (ParameterTypes) -> ReturnType

// 2. Invoke the block
closureName(ParameterTypes);

// 3. Define the block and then retrive the result
SecondVC.sendBlk { (strUserText: String) in
    // Do something.. with the parameters result
}
```
