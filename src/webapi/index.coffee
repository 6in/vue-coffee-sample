export default class MyClass
    constructor: () ->
        @name = "ohya"
    someMethod1: () ->
      new Promise((res,rej) -> 
        res(
            chart: 
                type: 'bar'
            colors: [
                '#3498DB'
                '#E74C3C'
            ]
            title: 
                text: 'グラフタイトル'
            xAxis: categories: [
                '小1'
                '小2'
                '小3'
                '小4'
                '小5'
                '小6'
                '中1'
                '中2'
                '中3'
                '高1'
                '高2'
                '高3'
            ]
            tooltip: valueSuffix: 'cm'
            legend:
                layout: 'vertical'
                align: 'right'
                verticalAlign: 'top'
                borderWidth: 2
            series: [
                {
                name: '男子'
                data: [
                    116.6
                    122.4
                    128.2
                    133.6
                    139.0
                    145.0
                    152.3
                    159.5
                    165.0
                    168.3
                    169.9
                    170.7
                ]
                }
                {
                name: '女子'
                data: [
                    115.6
                    121.6
                    127.3
                    133.6
                    140.1
                    146.8
                    151.8
                    154.8
                    156.5
                    157.0
                    157.6
                    158.0
                ]
                }
            ]
        )
      )