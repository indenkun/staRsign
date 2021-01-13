README
================

# staRsign packge

staRsignは誕生日などの日付から12星座を出力するstaRsign関数と、年（または年を含む日付データ）から十二支を出力するoRiental\_zodiac関数を含むパッケージです。

staRsign is a package containing the staRsign function to output 12 star
signs from a date such as a birthday and the oRiental\_zodiac function
to output 12 oriental zodiac from a number of year (or date data
containing a year).

## How to install

``` r
devtools::install_github("indenkun/staRsign")
```

## staRsign

staRsignは誕生日などの日付からから星占いで用いられている12星座をRで出力するための関数です。

staRsign is a function to output the 12 star sign used in astrology from
the date of birth on R.

### How to use

誕生日を入力すると12星座をラテン語式英名で出力します。

Enter the date of birth, it will output the 12 star sign in Latin
English names.

``` r
staRsign::staRsign("12/25")
```

    ## [1] "Capricorn"

標準では日付について“%m/%d”形式をサポートしますが、それ以外もフォーマットを指定すると処理可能です。

By default, “%m/%d” format is supported for the date, but other formats
can be processed if the format is specified.

``` r
staRsign::staRsign("2020/12/25", format = "%Y/%m/%d")
```

    ## [1] "Capricorn"

``` r
staRsign::staRsign("12-25", format = "%m-%d")
```

    ## [1] "Capricorn"

処理できない13/1やNAを含む日付以外のデータなどを入力するとNAを出力します。

If you input data that cannot be processed, such as 13/1 or data other
than the date containing NA, NA will be output.

``` r
staRsign::staRsign("13/1")
```

    ## [1] NA

``` r
staRsign::staRsign(NA)
```

    ## [1] NA

``` r
staRsign::staRsign("HOGE")
```

    ## [1] NA

日本語（かな+座）での出力も可能です。

It is also possible to output in Japanese (かな + 座).

``` r
staRsign::staRsign.ja("12/25")
```

    ## [1] "やぎ座"

## oRintal\_zodiac

oRiental\_zodiacは年または年を含む日付データから十二支をRで出力するための関数です。

oRiental\_zodiac is a function to output a zodiac on R from date data
containing a year or number of year.

### How to use

引数に0以上の年を入力するとその年の十二支を英語で出力します。

Enter a number of year greater than or equal to 0 in the argument, the
twelve signs of the oriental zodiac for that year will be output in
English.

``` r
staRsign::oRiental_zodiac(2020)
```

    ## [1] "Rat"

デフォルトでは年のみか年を含む日付データをサポートします。

By default, it supports date data that contains only the year or the
year.

日付データの場合はダブルコーテーションで必ず囲ってください。

For date data, be sure to enclose it with a double citation.

``` r
staRsign::oRiental_zodiac("2020/12/25")
```

    ## [1] "Rat"

ダブルコーテーションで囲わない場合は、計算式として解釈され、期待される十二支を返さないことがあります。

If not enclosed in double-cotations, it may be interpreted as a formula
and may not return the expected twelve signs of the oriental zodiac.

``` r
# これは2000 / 2 / 1 = 1000として解釈されます 
# This is interpreted as 2000 / 2 / 1 = 1000
staRsign::oRiental_zodiac(2000/2/1)
```

    ## [1] "Rat"

``` r
staRsign::oRiental_zodiac(2000)
```

    ## [1] "Dragon"

``` r
staRsign::oRiental_zodiac("2000/2/1")
```

    ## [1] "Dragon"

日付データはデフォルトで“%Y/%m/%d”形式をサポートしますが、それ以外の形式もformatで指定可能です。

The date data supports the “%Y/%m/%d” format by default, but other
formats can also be specified in the format.

``` r
staRsign::oRiental_zodiac("2020/12", "%Y/%M")
```

    ## [1] "Rat"

日本語（漢字）での出力も可能です。

It is also possible to output in Japanese (Kanji).

``` r
staRsign::oRiental_zodiac.ja(2020)
```

    ## [1] "子"

``` r
staRsign::oRiental_zodiac.ja("2020/12/25")
```

    ## [1] "子"

## Imprors to use this package

  - lubridate

## notice

staRsign関数では誕生日のみを参照しています。

staRsign function referring only to the date of birth.

西洋占星術で用いられる正確な十二宮（12星座）の時期については算出していません。

The exact timing of the Twelve Zodiac signs used in Western astrology
has not been calculated.

現在、oRiental\_zodiac関数では負の年数を入れると正しい十二支を出力できません。

Currently, the oRiental\_zodiac function cannot output the correct
oriental zodiac if a negative number of year is entered.

DESCRIPTIONに記載しているメールアドレスはダミーです。なにかあればISSUEに記載してください。

The email address listed in the DESCRIPTION is a dummy. If you have any
questions, please post them on ISSUE.

## License

MIT.
