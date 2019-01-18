# ImageExtension

 [![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)

ImageExtension 是一个在iOS项目中图片处理的扩展类库，简单易用，没有依赖。
当前包括以下功能:

1.图片拼接功能：

![ImageAppending](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/imageAppending_Demo_show_gif_001.gif?raw=true)

---------

2.图片叠加功能：

![ImageSuperimposition](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/ImageExtension_Demo_superimposedImage_git_001.gif?raw=true)


## Usage

### 图片拼接：

手动：
    将 `UIImage+appendingImage` 类目拖入工程即可。

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

### 图片叠加：
手动：
    将 `UIImage+Superimposed` 类目拖入工程即可。

代码示例:

```objective-c
    
    UIImage *originImage = [UIImage imageNamed:@"a.jpg"];
    UIImage *superimpositionImage = [UIImage imageNamed:@"b.jpg"];

    // 可以使用alpha控制叠加图片的透明度，blendMode控制叠加的混合模式
    UIImage *resultImg = [originImage gl_superimpositionImage:superimpositionImage superpositionRect:CGRectMake(0, 0, 100.0f, 50.0f) imageInsets:UIEdgeInsetsMake(10, 10, 10, 10) blendMode:kCGBlendModeNormal alpha:1.0];
    
    UIImageView *totalImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 100, 200, 200)];
    totalImageView.contentMode = UIViewContentModeScaleAspectFit;
    totalImageView.image = resultImg;
    
    [self.view addSubview:totalImageView];

```

## How it works
图片拼接:

使用Core Graphics框架将两张图片绘制到一张图片上下文中。

![ImageAppendingWork](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/appendimage_Demo_show_img_001.png?raw=true)


图片叠加:

使用Core Graphics框架将需要叠加的图片绘制到底图上下文中。

![ImageSuperimpositionWork](https://github.com/ghostlordstar/PicRepo/blob/master/DemoShowImg/ImageExtension/ImageExtension_work_superimaposition_001.png?raw=true)

## Contributing
希望收到大家的Issues、Pull requests! 📩

## License
`ImageExtension` 使用 MIT 许可证，详情见 LICENSE 文件。
