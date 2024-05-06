
**This work fork**   

Tian Zhou, Peisong Niu, Xue Wang, Liang Sun, Rong Jin, "One Fits All: Power General Time Series Analysis by Pretrained LM,", NeurIPS, 2023. [[paper](https://arxiv.org/abs/2302.11939)]

[official repo](https://github.com/DAMO-DI-ML/NeurIPS2023-One-Fits-All) 
This **old** implementation

- - -

**New** implementation
[unofficial don't work repo](https://github.com/PSacfc/GPT4TS_Adapter) and their paper (https://arxiv.org/abs/2311.14782)

- - -

The main challenge that blocks the development of pre-trained model for time series analysis is the lack of a large amount of data for training. In this work, we address this challenge by leveraging language or CV models, pre-trained from billions of tokens, for time series analysis. Specifically, we refrain from altering the self-attention and feedforward layers of the residual blocks in the pre-trained language or image model.

<div align="center"><img src=./pic/model_structure.png width=80% /></div>

## General Time Series Tasks

The proposed method outperforms other models on most tasks, including [long-term forecasting](./Long-term_Forecasting/README.md), [short-term forecasting](./Short-term_Forecasting/README.md), and [few-shot leanring](./Few-shot_Learning/README.md), [zero-short learning](./Zero-shot_Learning/README.md).

<div align="center"><img src=./pic/main_result.png width=60% /></div>

## Get Start

- Install Python>=3.8, PyTorch 1.8.1.
- Follow the instructions provided in the respective task folder.
