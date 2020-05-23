README
================

# staRsign

staRsignは誕生日から星占いで用いられている12星座をRで出力するためのパッケージと関数です。

staRsign is a package and function to output the 12 constellations used
in astrology from the date of birth on R.

## How to install

    devtools::install_github("indenkun/staRsign")

## How to use

誕生日を入力すると12星座をラテン語式英名で出力します。

Enter the date of birth, it will output the 12 constellations in Latin
English names.

    staRsign::staRsign("12/25")

標準では日付についてmonth/day形式をサポートしますが、それ以外もフォーマットを指定すると処理可能です。

By default, month/day format is supported for the date, but other
formats can be processed if the format is specified.

    staRsign::staRsign("2020/12/25", format = "%Y/%m/%d")
    staRsign::staRsign("12-25", format = "%m-%d")

処理できない13/1やNAを含む日付以外のデータなどを入力するとNAを出力します。

If you input data that cannot be processed, such as 13/1 or data other
than the date containing NA, NA will be output.

    staRsign::staRsign("13/1")
    staRsign::staRsign(NA)
    staRsign::staRsign("HOGE")

日本語（かな+座）での出力も可能です。

It is also possible to output in Japanese (かな + 座).

    staRsign::staRsign.ja("12/25")

## Depends/Imprors to use this package

  - R (\>= 4.0.0)
  - lubridate (\>= 1.7.8)

## notice

誕生日のみを参照しています。

Referring only to the date of birth.

西洋占星術で用いられる正確な十二宮（12星座）の時期については算出していません。

The exact timing of the Twelve Zodiac signs used in Western astrology
has not been calculated.

DESCRIPTIONに記載しているメールアドレスはダミーです。なにかあればISSUEに記載してください。

The email address listed in the DESCRIPTION is a dummy. If you have any
questions, please post them on ISSUE.

## License

MIT.
