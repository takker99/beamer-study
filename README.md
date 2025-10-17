# beamer-study
beamerの技術検証

## 概要
このリポジトリはBeamerを使ったスライド作成の技術検証を行うためのものです．

## ファイル構成

### プレゼンテーション
- `main.tex` - サンプルスライド（Beamerの基本的な使い方を示すデモ）
- `presentation.tex` - 博士論文発表用スライド（鉄鋼スラグを活用したカルシア改質土の研究）

### スタイル
- `mybeamer.sty` - カスタムBeamerスタイル
  - 日本語フォント： MS Gothic
  - 英語フォント： Times New Roman
  - TikZ/pgfplotsによるグラフ描画機能
  - biblatexによる文献管理

### データ
- `data/strength_data.csv` - 一軸圧縮強度の経時変化データ
- `data/ph_data.csv` - pH値の変化データ
- `data/cbr_data.csv` - CBR試験データ

### 参考文献
- `refs.bib` - BibLaTeX形式の文献データベース

## ビルド方法

### 必要な環境
- LuaLaTeX
- latexmk
- biber
- TikZ/pgfplots
- 各種パッケージ（mybeamer.styを参照）

### コンパイル

#### 簡単な方法（推奨）
```bash
# ビルドスクリプトを使用
./build.sh
```

#### 個別にコンパイル
```bash
# main.texのコンパイル
latexmk -pdf main.tex

# presentation.texのコンパイル
latexmk -pdf presentation.tex
```

出力PDFは `dist/` ディレクトリに生成されます．

## フォント設定

### MS Gothic（日本語）
LuaLaTeXとfontspecを使用してMS Gothicを設定しています．
システムにMS Gothicがインストールされている必要があります．

### Times New Roman（英語）
LuaLaTeXとfontspecを使用してTimes New Romanを設定しています．
システムにTimes New Romanがインストールされている必要があります．

## 開発環境

### devcontainer
プロジェクトにはdevcontainerが設定されており，TexLive公式Dockerイメージ (`texlive/texlive:latest`) を使用しています．
これにより高速なビルド環境を実現しています．

## presentation.texについて

博士論文「鉄鋼スラグを活用したカルシア改質土の実用化に向けた土質特性の評価と品質管理に関する研究」の発表用スライドです．

### 特徴
- TikZ/pgfplotsによる高品質なグラフ可視化
- CSVデータからの動的グラフ生成
- 構造化されたストーリー展開
- 研究背景，実験方法，結果，考察，結論の流れ

### セクション構成
1. 研究背景と目的
2. 実験方法と材料
3. 実験結果
4. 強度発現メカニズム
5. 品質管理手法
6. 環境安全性評価
7. 結論

## ライセンス
MITライセンス
