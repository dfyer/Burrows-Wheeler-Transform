## Burrows-Wheeler Transfrom Impl. on Objective-C

This is an implementation of Burrows-Wheeler Transfrom (BWT) on Objective-C.
The transfrom algorithm is well-known to enhance the compression ratio of texts.

This code illustrates each step of transformation and reverse-transformation of BWT, each implemented on `encode` and `decode` functions.

### Example

First we show the encoding process on the original text, then we show the decoding process of encoded text.

```objc
NSString* original = @"#shesellsseashells";
NSString* encoded = @"seshshsseelllsea#l";
```

Then calls static functions to encode/decode each text

```objc
NSLog([BWT encode:original]);
NSLog([BWT decode:encoded]);
```

### Acknowledgement

This is free-to-use. If you have any questions, please contact me anytime.
