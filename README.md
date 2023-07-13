# docker-openapi

Use Docker to generate html files from OpenAPI yml using redoc-cli without polluting the local environment

Docker を使用して、ローカル環境を汚さずに、redoc-cli によって、OpenAPI の yml から HTML ファイルを生成

## How To USE

1. compose up

```bash
docker compose -f "docker-compose.yml" up -d --build
```

2. Add a yaml file or edit `sample_api_yml.yml` based on the OpenAPI specification (OpenAPI 仕様に基づいた yaml ファイルの追加または`sample_api_yml.yml`を編集する)

3. Enter the command to convert a yml file to an html file into the terminal (yml ファイルを html ファイルに変換するコマンドをターミナルに入力する)

※ Modify the `sample_api_yml.yml` and `api_specification.html` sections according to the file name of the yml you want to convert and the file name of the converted html (`sample_api_yml.yml`と`api_specification.html`の箇所は変換したい yml のファイル名、変換後の html のファイル名に合わせて修正する)

```bash
docker exec -ti redoc sh -c "redoc-cli bundle sample_api_yml.yml -o api_specification.html"
```
