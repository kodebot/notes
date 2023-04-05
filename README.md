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

if this happens, use the following command to increase postBuffer to nearly 150MB, then try pushing

```bash
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

<!-- #region drawnote -->
<svg id="svg" xmlns="http://www.w3.org/2000/svg" viewbox="74.11000061035156,74.86000061035156,181.8800048828125,145.52999877929688" style="height:145.52999877929688"><path d="M 100.48,86 L 101.75,85.03 L 101.75,84.86 L 101.75,86.55 L 99.11,87.9 L 98.09,90.62 L 98.09,91.76 L 88.13,179.08 L 85.73,202.74 L 85.73,203.28" fill="none" stroke="#6190e8" stroke-width="2"></path><path d="M 92.75,99.89 L 94.19,99.9 L 95.99,99.9 L 98.93,99.9 L 108.23,99.9 L 124.25,99.9 L 140.57,98.38 L 160.13,97.29 L 182.15,95.99 L 201.95,94.52 L 217.67,93.17 L 233.03,91.7 L 240.77,90.73 L 244.49,89.91 L 245.45,89.42 L 245.45,89.31 L 244.01,89.31 L 242.99,89.31 L 242.27,89.31 L 242.27,90.4 L 241.19,92.52 L 241.19,96.21 L 240.59,103.48 L 240.59,111.78 L 240.59,121.99 L 240.59,133.82 L 241.61,145.76 L 242.27,156.5 L 244.67,168.01 L 245.93,175.66 L 245.99,181.85 L 245.99,186.08 L 244.79,188.25 L 244.79,189.39 L 244.79,189.88 L 244.79,190.96 L 243.59,190.96 L 241.97,191.51 L 239.09,192.54 L 234.53,193.57 L 228.59,194.66 L 221.33,195.9 L 212.03,197.64 L 200.27,199.59 L 183.89,201.93 L 171.95,203.23 L 162.41,203.99 L 154.13,204.48 L 145.91,205.18 L 138.95,205.73 L 134.15,205.73 L 128.15,205.73 L 122.63,206.97 L 117.77,208.6 L 114.23,209.69 L 111.29,210.07 L 108.29,210.39 L 104.81,210.39 L 100.67,210.39 L 96.53,210.39 L 93.17,210.39 L 91.01,210.39 L 89.81,209.42 L 88.13,208.44 L 86.15,207.9 L 84.29,207.9 L 84.11,207.9" fill="none" stroke="#6190e8" stroke-width="2"></path></svg>  
<!-- #endregion -->
