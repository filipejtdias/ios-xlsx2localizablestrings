# ios-xlsx2localizablestrings

A simple way to convert your Excel files to Localizable.strings files

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [Credits](#credits)
- [License](#license)

## Features

- [x] Convert **.xlsx** files to **.txt** files (just copy-paste the output of each **.txt** file to the respective **Localizable.strings** file)
- [x] Support for multiple **.xlsx** files (default language included)
- [x] Support sections
- [ ] Support notes
- [ ] Specify folder path of all **.xlsx** files
- [ ] Specify output folder path
- [ ] Replace each **Localizable.strings** automagically

## Requirements

- Python 2.7+

## Installation

### Manually

- Open up Terminal and clone the git repository:

```bash
   $ git clone https://github.com/filipejtdias/ios-xlsx2localizablestrings.git
```

## Usage
Steps to update your **Localizable.strings** files:
1. Copy **.xlsx** files into repository root path (where *ios-xlsx2localizablestrings.sh* is located)
2. Open Terminal and `cd` into repository root path and execute the following command:
```bash
   $ ./ios-xlsx2localizablestrings.sh
```
3. Open each **.txt** file and copy-paste all content into respective **Localizable.strings** file.
4. Enjoy!

## Troubleshooting
- To prevent convert issues, please make sure that you don't have any **.xlsx** file opened!

## Credits

This repository is owned and maintained by [Filipe Dias](https://www.linkedin.com/in/filipejtdias/).    
Special thanks to [Brendan O'Connor](https://github.com/brendano) for *tsvutils*.

## License

This repository is released under the MIT license. [See LICENSE](https://github.com/filipejtdias/ios-xlsx2localizablestrings/blob/master/LICENSE) for details.
