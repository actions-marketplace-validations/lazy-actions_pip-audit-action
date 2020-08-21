# pip-audit-action

Audit action for python dependencies (requirements.txt, Pipfile and poetry.lock etc...)

<!-- TOC depthFrom:2 -->

- [Feature](#feature)
- [Usage](#usage)
- [Inputs](#inputs)

<!-- /TOC -->

## Feature

- Audit dependencies
- Support multiple python package management tools
  - pip (requirements.txt)
  - pipenv (Pipfile.lock)
  - poetry (poetry.lock)

## Usage

```yaml
steps:
  - uses: actions/setup-python@v2
    with:
      python-version: '3.8'

  - uses: homoluctus/pip-audit-action@v1
    with:
      type: pip
```

## Inputs

|Name|Type|Required|Default|Description|
|:--:|:--:|:--:|:--:|:--|
|type|string|true||Specify package management tool from pip, pipenv or poetry|
