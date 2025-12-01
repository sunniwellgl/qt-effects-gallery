# Qt Effects Gallery

一个展示 Qt/QML 实现的各种视觉效果的项目集合。

## 🎨 项目简介

Qt Effects Gallery 是一个在线展示平台，用于展示使用 Qt/QML 技术实现的各种视觉效果和动画。项目采用响应式网页设计，支持瀑布流布局和大图预览功能。


## 🚀 快速开始

### 在线预览
1. 在浏览器中访问 `https://sunniwellgl.github.io/qt-effects-gallery/`

### 源码运行环境
- **Qt 版本**: Qt 6.7.3
- **操作系统**: Linux(Ubuntu 20.04)

## 🎭 展示效果

目前包含以下 Qt/QML 效果：

### 模糊阴影效果
- **技术**: ShaderEffectSource + FastBlur
- **说明**: 实现现代化的模糊阴影视觉效果
- **源码**: [blur_shadow](https://github.com/sunniwellgl/qt-effects-gallery/tree/master/src/blur_shadow)

## 🤝 贡献指南

欢迎提交新的 Qt/QML 效果展示！

1. Fork 本仓库
2. 创建新的效果分支
3. 在 `data.json` 中添加效果信息
4. 添加对应的预览图片到 `img/` 目录
5. 提交 Pull Request

### 添加新效果的格式

在 `data.json` 中添加新的效果对象：

```json
{
  "name": "效果名称",
  "img": "img/预览图片.png",
  "url": "https://github.com/sunniwellgl/qt-effects-gallery/tree/master/src/效果目录",
  "desc": "效果描述和技术说明"
}
```

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

感谢所有为 Qt/QML 社区贡献精彩效果的开发者！

## 📞 联系方式

如有问题或建议，欢迎通过以下方式联系：

- 提交 [Issue](https://github.com/lingao/qt-effects-gallery/issues)
- 发起 [Discussion](https://github.com/lingao/qt-effects-gallery/discussions)

---

⭐ 如果这个项目对你有帮助，请给它一个星标！