# Notes

Notes on various topics that I've learned and want to remember.

## Supported files

* Jupyter notebooks
* Markdown files
* excalidraw files

## Excalidraw

With excalidraw extension installed, you can name the file with `.excalidraw.png` extension and it will be rendered as png when linked in markdown files and still editable.

## KaTeX and MathJax

vscode uses KaTeX for displaying TeX in the markdown preview but Github uses MathJax so sometimes TeX will be appear correctly in vscode preview but not in the Github. If this happens make sure MathJax variation is used correctly. More info on MathJax can be found [here](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference).

## Encryption

Some folder are encrypted for legal reasons or they contain data that should not be shared. For example university assessment or notes.

`git-crypt` is used for encryption

### `git-crypt` Setup

```sh
brew install git-crypt
```

```
brew install gpg
```

copy the `git-crypt-key` file to the folder above the repository

then from within the repository run `git-crypt unlock ../git-crypt-key`

use `git-crypt status -e` to view encryption status

use `git-crypt status -f` if any file that should be encrypted is not encrypted

> GOTCHAS:
1. make sure to remove any .gitignore file from secrets folder
2. before pushing make sure the files are encrypted `git-crypt status -e`
3. ssh key might be rejected by ssh if the permission is wide open, use `chmod 600 <filepath>` to fix it

## Sensitive files => More Info

DO NOT do this but this what was done to extract the key that is shared across the repos

In the root repo folder run the following command to create and extract the key

```
git-crypt init
```

```
git-crypt export-key ../git-crypt-key
```

this extracts and puts the key file outside the repo (store this in keepass)

To initiate repo with existing key use `git-crypt unlock ../git-crypt-key` instead of `git-crypt init`

Add entries to `.gitattributes` file to encrypt files

example

```
secrets/** filter=git-crypt diff=git-crypt
```

useful git-crypt commands

lock and unlock (automatically done as part of commit, push and pull for can use the below if need to do explicitly)

```
git-crypt lock
```

```
git-crypt unlock <key-file>
``

see what is going to happen to each file (test encryption)
```
git-crypt status -e

```


