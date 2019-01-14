# ImageExtension

 [![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)

ImageExtension 是一个在iOS项目中图片处理的扩展类库，简单易用，没有依赖。

当前只有一个图片拼接功能。

![ImageAppending](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/imageAppending_Demo_show_gif_001.gif?raw=true)

## Usage
手动：
    将 `UIImage+appendingImage` 类目拖入工程即可。

代码示例:

```objective-c
    
    UIImage *originImage = [UIImage imageNamed:@"a.jpg"];
    UIImage *appendingImage = [UIImage imageNamed:@"b.jpg"];
    
    UIImage *totalImage = [originImage gl_appendingImg:appendingImage imageGap:10.0f appendingDirection:ImageAppendingDirectionAbove appendingAlignment:ImageAppendingAlignmentCenter];
    
    UIImageView *totalImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 200, 200)];
    totalImageView.contentMode = UIViewContentModeScaleAspectFit;
    totalImageView.image = totalImage;
    
    [self.view addSubview:totalImageView];

```

`图片拼接位置：`
```
    typedef enum : NSUInteger {
        ImageAppendingDirectionAbove,       // 拼接到上方
        ImageAppendingDirectionBelow,       // 拼接到下方
        ImageAppendingDirectionLeft,        // 拼接到左边
        ImageAppendingDirectionRight,       // 拼接到右边
    } ImageAppendingDirection;
```

`图片拼接时的对齐方式；`
```
    typedef enum : NSUInteger {
        ImageAppendingAlignmentUp,          // 居上对齐
        ImageAppendingAlignmentDown,        // 居下对齐
        ImageAppendingAlignmentLeft,        // 居左对齐
        ImageAppendingAlignmentRight,       // 居右对齐
        ImageAppendingAlignmentCenter,      // 居中对齐
    } ImageAppendingAlignment;
```
## How it works
    使用Core Graphics框架将两张图片绘制到一张图片上下文中。

![ImageAppendingWork](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/appendimage_Demo_show_img_001.png?raw=true)


## Contributing
希望收到大家的Issues、Pull requests! 📩

## License
`ImageExtension` 使用 MIT 许可证，详情见 LICENSE 文件。
