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

Some folder are encrypted as they contain notes that should not be shared. For example university assessment or notes.

**When it is OK to make them public, move it out of `encrypted` folder**

`git-crypt` is used for encryption

### `git-crypt` Setup on a new machine

#### 1. Install

```sh
brew install git-crypt
```

```sh
brew install gpg
```

#### 2. Key file

copy the `git-crypt-notes-key` file to the folder above the repository (this is in keepass)

#### 3. Unlock

then from within the repository run `git-crypt unlock ../git-crypt-notes-key`

use `git-crypt status -e` to view encryption status

use `git-crypt status -f` if any file that should be encrypted is not encrypted

#### 4. Gotcha

1. make sure to remove any .gitignore file from secrets folder
2. before pushing make sure the files are encrypted `git-crypt status -e`

### First time repository setup [DO NOT do this for this repo]

DO NOT do this for this repo, but this what was done to extract the key that is used by this repo

In the root repo folder run the following command to create and extract the key

```sh
git-crypt init
```

```sh
git-crypt export-key ../git-crypt-notes-key
```

this extracts and puts the key file outside the repo (store this in keepass)

To initiate repo with existing key use `git-crypt unlock ../git-crypt-notes-key` instead of `git-crypt init`

Add entries to `.gitattributes` file to encrypt files

example

```sh
**/encrypted/** filter=git-crypt diff=git-crypt
```

### Useful `git-crypt` commands

lock and unlock (automatically done as part of commit, push and pull for can use the below if need to do explicitly)

```sh
git-crypt lock
```

```sh
git-crypt unlock <key-file>
```

see what is going to happen to each file (test encryption)

```sh
git-crypt status -e

```

## git postBuffer

When commit has large changes like images or csv files then default postBuffer causes git push to hang.

if this happens, use the following command to increase postBuffer to nearly 150MB

```
git config --global http.postBuffer 150000000
```

## Splitting large files

Unable to push files that are around ore more than 1MB.

If this happens, go back to previous commit, and split the files then add one part at a time

works for csv files

1.Get total line count

```bash
wc -l <filename>
```

2.Decide how many lines per file is needed

3.Split

```bash
split -l <lines per file>  <input file name> <output file prefix>
```
