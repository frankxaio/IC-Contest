# Local Binary Pattern

```YAML
last-edited: 4/23/2025
```

## File

```
├── algo
│   ├── cpp
│   └── python
├── DESIGN
│   ├── rtl
│   ├── scripts
│   ├── syn
│   └── verification
├── Note
│   ├── Note.excalidraw
│   └── temp.md
└── README.md
```

-   algo: 使用 CPP 和 python 幫助理解算法
-   DESIGN: RTL 和 Gate level simulation
-   Note: 思考過程筆記
-   README: 結果報告

## SPEC

| Spec | Requirement | My Design  |
| ----- | ----- | ----- |
| Clock (ns) | \< 20 | 5.7 ns |
| Cell Area (µm²) | \< 10,000 | 3856.5 |
| Design Compiler Check | No Latch | ✅ |

Time \= 904960500 ps \= 904960.5 ns

Score \= 3856.5 \* 904960.5 \= 3,489,980,168  \=\> ==A tier==

## FSM

| ![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXcMcq369JICBVwjIBDTH353FIqE6Gz4TT2Hi6OHtMpbKXi0g0Mv5cbQnHqtcE8cixFD0g8riqa8WHEye3z0LDJl0eHXxiuJEsIj3VH2lZqzZCaHJUeWnOet6HKPaqOiuAim6n7O) | ![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXcmuTKfCydTWFYMn8-flA_cwQLKCKo3slUnoNvbrg6hg88UUTFULhO33RZ8JSCd5cAOijPhW3WEcbDd0O965TOTG-lEs59JCGb5ccvI5r_bP6mehSr--YXZFdVK1yhqWnmqe0mA) |
| :---- | ----: |

REQ: 當 state \== REQ 時 req\_cnt 才會啟動，每拿一次資料計數器 req\_cnt 就 \+1，拿中間點的資料存到 ctr\_data。並且每拿一次相鄰點就進行 LBP 的計算。 WR: 將(i,j)計算結果寫入 LBP memory，寫完後將 (i,j)+1。若 (i,j) \<= (126,126)，過一個 cycle 後將狀態切換成 REQ，若 (i,j) \== (126,126) 則切換成 DONE。 DONE: Give finish signal a pulse

## Internal Signal

| Name | Type | Description |
| ----- | ----- | ----- |
| req\_cnt | logic \[ 3:0\] | Counter to track the number of requests made |
| ctr\_i | logic \[6:0\] | Row (ctr\_i) counters for pixel traversal |
| ctr\_j | logic \[6:0\] | column (ctr\_j) counters for pixel traversal |
| ctr\_data | logic \[7:0\] | Temporary storage for gray-scale data being processed |
| lbp\_cal | logic \[7:0\] | Temporary storage for calculated LBP value |

## Architecture

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXdQhX3imN47ePSpmS5vZmOyOfMGJjWEdVQLqUpEd8dNDulXLvUIpt9GnnkSNOdMy70pjRV_9w9bo-W3RnK8zezx-STeKV2_Q1ZIgfC3MNHkPHOfrvdXPFtrB9p5VXvfXtfaliAbWQ)



## Waveform

計算一個點為 8 cycle 的 latency。1 個 cycle 拿中心點 8 個 cycle 拿相鄰點的值，lbp\_data, lbp\_addr, lbp\_valid 以 combinational 直接輸出。

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXeVcMb9MI6itMwzyDuJKAzk7IAJPvVma5HHpBRmWkkCOOgw4EsjMCsLabWJH-2NsynlXyuFw1dVuop0kTcEmlc5cj4J7DWXbCRj8GVRUjIrmW7_Z3_7fNSs6mnWtDqnjUhJTUEp)

##### RTL Simulation

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXdOPhQf78mU9HbnwtvIqHg91pXMfdSgnHzqCF5iEB4WXs_bDAGSk1ptDssdMtyhY7zZs9aKPtJxWTDEj516uCNUadr2ZHvDeJm0YEb3HhUtKElvuJ1X3hw5BTwNE-GEkKPH49pZ-g)

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXfRWeorROH3-7hefoLw7UtgbUL2PEH80UU0afKJJuLg8V7x0-bqBhRKHOKBn2zAt9A9O4oNDqvVULutqaOj-pc3xS0qd7wyXPzrrsY8zas83Ibi8M5NK8FC9KlZYmdJnUkrPXdDMw)

##### Gate level simulation

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXd2MTNErwxwSkEHEjbMwZPhPrGYX0wKwtw8M3vIrosvoF8W93SE7ubwk0cxPizzvtFAyXd0XLvbAS1k_axqugj3WKqssyvZEoENDA5te4qpvhbymafGiB3o-hET5kEcpwajmwpB)

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXeEDHlW8xqmeSVimfHHgGg1ss7PSuQ6AYrH2G1ESzxz-n4YgyHGhXnuO0lLbhjiSYXhkpLqq29ZK0qgT2vzH7HzDlkmMa0akHplTx4WOqu3ALtlZjNwSOMlLsfWtTtrfr3vsar_DA)

![img](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/AD_4nXdogd8VvCc2X47fiurDNYhLx-AXfkfNrLpdLinJDlYTR_Wo_8Ad1r2ChiooTgb5qVTQblwR5oQIK-7YA-8BZt1UNsAtu5CUh3qXfJswm-OWQYRraYObHHg4sRESmlauX8IXkSFDxQ)