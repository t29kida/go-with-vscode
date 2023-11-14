# Go with Visual Studio Code

Visual Studio Codeを使ったGo開発環境構築のテンプレート。
DevContainerを使った開発環境構築を行う。

## GO開発環境構築手順

### 事前準備 - 1: Dev Containers拡張機能をインストール

[Dev Containers拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)をインストールする。

### 事前準備 - 2: Dockerfileを編集する

状況にあわせてDockerfileを編集する。

### 1. リポジトリをクローン

リポジトリをクローンする。

### 2. Visual Studio Codeで開く

クローンしたリポジトリをVisual Studio Codeで開く。

### 3. Dev Containersでコンテナーを起動

Visual Studio Codeの左下にある「><」のアイコンをクリックし、「Remote-Containers: Reopen in Container」を選択する。

## ソースファイルの置き場所

プロジェクトルートディレクトリにソースファイルを配置する。

例:

```
project-root
  ├─ .devcontainer
  ├─ compose.yml
  ├─ Dockerfile
  ├─ go.mod
  ├─ go.sum
  └─ main.go
```

## カスタマイズ

`.devcontainer/devcontainer.json`ファイルを編集してカスタマイズできる。

たとえばチームで拡張機能を共有する場合は、`customizations.vscode.extensions`に拡張機能を追加する。

```json
{
    "customizations": {
        "vscode": {
            "extensions": [
                "golang.go",
                "ms-azuretools.vscode-docker",
                "GitHub.copilot",
                "GitHub.copilot-chat"
            ],
        }
    }
}
```
