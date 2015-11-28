# Animator

![ci](https://travis-ci.org/oa414/Animator.svg)

Yet another iOS animation library in Swift2

working in progress

## Animator

[Animate.css](https://daneden.github.io/animate.css/) 的 Swift 实现

还在完成中，虽然代码很糟糕但还是可以用的 。 ლ(╹◡╹ლ)

FadeIn, FadeOut, ZoomIn, ZoomOut, SlideIn, SlideOut, ZoomIn, ZoomOut, RotateIn, RotateOut, Flip,BounceIn, BounceOut,Attention, Speed, Special 效果。

效果名称和 https://daneden.github.io/animate.css/ 一一对应。

## 使用


在你的 Podfile 中加入

```
pod 'Animator', :git => 'https://github.com/oa414/Animator.git', :tag => '0.0.5'
```

运行 pod install，在你的类中 import Animator;就可以使用啦。


```
   ZoomIn().play(myView, duration:0.8)
   BounceOutRight().play(myView, duration: 0.3)
```

## 开发计划

加油完善中  (｡・`ω´･) 

-[ ] 完善代码和文档
-[ ] 完善 scorll.js（http://lab.hakim.se/scroll-effects/） 的 Swift 实现
-[ ] 改善代码质量和规范工程
-[ ] 加入更友好的语法糖 API 和集成更多简单效果






