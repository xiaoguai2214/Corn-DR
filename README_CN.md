# Corn-DR 中文说明

Corn-DR 是一个面向玉米病虫害图像多标签退化识别、图像复原和 2 倍超分辨率
研究的成对数据集，覆盖雨纹、雾霾、模糊、低照度、局部遮挡及其复合退化。

[English README](README.md)

## 数据下载

完整数据集通过 [GitHub 最新发行版](https://github.com/xiaoguai2214/Corn-DR/releases/latest)
中的分卷文件提供。请下载全部文件，使用 `SHA256SUMS.txt` 核验完整性，并在
macOS 或 Linux 的空目录中执行：

```bash
shasum -a 256 -c SHA256SUMS.txt
cat Corn-DR-v1.0-images.tar.part-* | tar -xf -
cat Corn-DR-v1.0-tui_x2.tar.part-* | tar -xf -
cat Corn-DR-v1.0-clean_lr_x2.tar.part-* | tar -xf -
tar -xzf Corn-DR-v1.0-tui_masks_x2.tar.gz
tar -xzf Corn-DR-v1.0-annotations-and-manifests.tar.gz
```

同一压缩包的全部编号分卷必须放在同一目录中，且不要修改文件名。

## 数据集规模

| 数据划分 | 样本数 |
| --- | ---: |
| 训练集 | 12,083 |
| 验证集 | 570 |
| 测试集 | 400 |
| **总计** | **13,053** |

每个样本包括 `images` 中的高分辨率目标、`tui_x2` 中的 2 倍退化输入、
`clean_lr_x2` 中的清晰低分辨率参考，以及 `tui_labels_x2` 中的 JSON 标注。
适用样本的局部遮挡掩码位于 `tui_masks_x2`。发行版包含 12,470 个掩码文件；
没有掩码的样本可通过元数据识别。

五个可同时出现的退化标签为：

- `RAIN`：雨纹或类似雨纹的干扰
- `FOG`：雾或霾类大气退化
- `BLUR`：运动模糊、散焦模糊或相关模糊
- `LOW`：低照度
- `OCCL`：局部遮挡或异常模式

数据集先按原始清晰图像分组，再生成退化版本，因此同一原图及其衍生样本只会
出现在训练、验证或测试中的一个子集内。

## 适用边界

Corn-DR 将玉米病虫害语义图像、受控生成的成对退化样本和公开图像复原基准的
补充样本结合起来。补充的真实退化材料并不是新采集的玉米田间基准。因此，在
声明真实田间诊断可靠性之前，仍需在具有代表性的真实田间图像上独立验证。

## 公开与不公开内容

公开内容包括成对图像、清晰低分辨率参考、多标签标注、局部掩码、数据划分清单、
来源字段、退化参数、随机种子和完整性哈希。公开元数据中的本机绝对路径已经移除。

本仓库不公开训练权重、检查点、尚未发布的模型实现、系统集成代码、账号密钥或
私有实验日志。

## 文档

- [数据集卡片](DATASET_CARD.md)
- [目录结构与分卷说明](docs/DATA_STRUCTURE.md)
- [数据来源与使用条款](docs/PROVENANCE_AND_LICENSES.md)
- [数据清单说明](manifests/README.md)
- [机器可读的标签定义](metadata/label_definitions.json)
- [数据来源登记表](metadata/source_registry.csv)

## 引用

相关论文目前正在审稿。正式出版信息可用后，本仓库将补充完整引用。在此之前，
请引用本仓库以及实际使用的 GitHub 发行版版本号。

## 使用条款

本仓库不以统一许可覆盖各原始数据源的条款。使用者必须遵守
[数据来源与使用条款](docs/PROVENANCE_AND_LICENSES.md) 中列出的许可、访问与署名要求。

## 联系方式

有关学术用途的问题，请联系相关论文的通讯作者。
