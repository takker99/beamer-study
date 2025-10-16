# クイックスタートガイド

## 1. 環境のセットアップ

### devcontainerを使用する場合（推奨）
1. VS Codeで本リポジトリを開く
2. 「Reopen in Container」を選択
3. コンテナが起動するまで待つ（初回は数分かかる場合があります）

### ローカル環境を使用する場合
必要なもの:
- TexLive（完全版推奨）
- LuaLaTeX
- latexmk
- biber

## 2. スライドのビルド

### 簡単な方法
```bash
./build.sh
```

### 個別にビルド
```bash
# サンプルスライド
latexmk -pdf main.tex

# 博士論文発表スライド
latexmk -pdf presentation.tex
```

## 3. 出力の確認
生成されたPDFは `dist/` ディレクトリにあります:
- `dist/main.pdf` - サンプルスライド
- `dist/presentation.pdf` - 博士論文発表スライド

## 4. スライドのカスタマイズ

### フォントの変更
`mybeamer.sty` を編集してフォント設定を変更できます。

現在の設定:
- 日本語: MS Gothic（フォールバック有り）
- 英語: Times New Roman（フォールバック有り）

### データの更新
グラフのデータを変更する場合:
1. `data/` ディレクトリのCSVファイルを編集
2. 再度ビルドするだけで自動的にグラフが更新されます

### スライドの追加
`presentation.tex` に新しい `\begin{frame}...\end{frame}` を追加:

```latex
\begin{frame}
  \frametitle{新しいスライドのタイトル}
  ここに内容を記述
\end{frame}
```

### 画像の追加
画像は `figs/` ディレクトリに配置:

```latex
\includegraphics[width=0.5\linewidth]{figs/your_image.jpg}
```

## 5. よくある質問

### Q: ビルドが遅い
A: 初回のビルドは時間がかかります。2回目以降は変更があったファイルのみ処理されるため高速です。

### Q: フォントエラーが出る
A: MS GothicやTimes New Romanがシステムにない場合、自動的に代替フォントが使用されます。エラーが続く場合は `mybeamer.sty` のフォント設定を確認してください。

### Q: グラフが表示されない
A: CSVファイルのパスが正しいか確認してください。また、TikZ/pgfplotsパッケージがインストールされているか確認してください。

### Q: 文献が表示されない
A: 以下を確認:
1. `refs.bib` に文献情報が記載されているか
2. `\cite{key}` で文献を引用しているか
3. biberが正しく実行されているか（latexmkが自動的に実行します）

## 6. トラブルシューティング

### ビルドエラーの確認
```bash
# ログファイルを確認
cat dist/presentation.log | grep -i error

# 詳細なログ
latexmk -pdf -verbose presentation.tex
```

### クリーンビルド
```bash
# 中間ファイルを削除
latexmk -C

# 再ビルド
./build.sh
```

## 7. 参考資料

### ファイル
- `CHANGES.md` - 実装内容の詳細説明
- `README.md` - プロジェクト全体のドキュメント
- `main.tex` - Beamerの基本的な使い方のサンプル
- `presentation.tex` - 研究発表スライドの実例

### Beamerの使い方
- 公式ドキュメント: https://ctan.org/pkg/beamer
- Metropolisテーマ: https://github.com/matze/mtheme

### TikZ/pgfplots
- pgfplots ドキュメント: https://ctan.org/pkg/pgfplots
- TikZ examples: https://texample.net/tikz/

## まとめ

1. `./build.sh` でビルド
2. `dist/` ディレクトリのPDFを確認
3. 必要に応じてTeX/CSVファイルを編集
4. 再ビルド

簡単3ステップで高品質なスライドが作成できます！
