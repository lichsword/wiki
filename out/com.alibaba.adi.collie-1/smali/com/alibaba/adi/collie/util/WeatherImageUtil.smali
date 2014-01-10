.class public Lcom/alibaba/adi/collie/util/WeatherImageUtil;
.super Ljava/lang/Object;
.source "WeatherImageUtil.java"


# static fields
.field public static weatherDayImage:[[Ljava/lang/Object;

.field public static weatherNightImage:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const v7, 0x7f0200ed

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    const/16 v0, 0x21

    new-array v0, v0, [[Ljava/lang/Object;

    .line 8
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u6674"

    aput-object v2, v1, v4

    const v2, 0x7f0200fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 9
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u591a\u4e91"

    aput-object v2, v1, v4

    const v2, 0x7f0200fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 10
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u9634"

    aput-object v2, v1, v4

    const v2, 0x7f0200e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 11
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u9635\u96e8"

    aput-object v2, v1, v4

    const v2, 0x7f0200fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 12
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u96f7\u9635\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 13
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    aput-object v3, v2, v4

    const v3, 0x7f0200f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 14
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u96e8\u5939\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 15
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5c0f\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 16
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u4e2d\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 17
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 18
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 19
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 20
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u7279\u5927\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 21
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u9635\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 22
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5c0f\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 23
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u4e2d\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 24
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 25
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u66b4\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 26
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u96fe"

    aput-object v3, v2, v4

    const v3, 0x7f0200e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 27
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u51bb\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 28
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u6c99\u5c18\u66b4"

    aput-object v3, v2, v4

    const v3, 0x7f0200f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 29
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5c0f\u96e8-\u4e2d\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 30
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u4e2d\u96e8-\u5927\u96e8"

    aput-object v3, v2, v4

    const v3, 0x7f0200ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 31
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u96e8-\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 32
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u66b4\u96e8-\u5927\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 33
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8"

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 34
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5c0f\u96ea-\u4e2d\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 35
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u4e2d\u96ea-\u5927\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 36
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5927\u96ea-\u66b4\u96ea"

    aput-object v3, v2, v4

    const v3, 0x7f0200f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 37
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u6d6e\u5c18"

    aput-object v3, v2, v4

    const v3, 0x7f0200e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 38
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u626c\u6c99"

    aput-object v3, v2, v4

    const v3, 0x7f0200f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 39
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u5f3a\u6c99\u5c18\u66b4"

    aput-object v3, v2, v4

    const v3, 0x7f0200f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 40
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\u973e"

    aput-object v3, v2, v4

    const v3, 0x7f0200e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 7
    sput-object v0, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherDayImage:[[Ljava/lang/Object;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    .line 43
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u6674"

    aput-object v2, v1, v4

    const v2, 0x7f0200e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 44
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u591a\u4e91"

    aput-object v2, v1, v4

    const v2, 0x7f0200e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 45
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u9635\u96e8"

    aput-object v2, v1, v4

    const v2, 0x7f0200ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 46
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u9635\u96ea"

    aput-object v2, v1, v4

    const v2, 0x7f0200eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 42
    sput-object v0, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherNightImage:[[Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherImageId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "dl"
    .parameter "weather"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, weaherImageId:I
    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherDayImage:[[Ljava/lang/Object;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 68
    .end local v0           #i:I
    :cond_0
    return v2

    .line 52
    .restart local v0       #i:I
    :cond_1
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherDayImage:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherDayImage:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0           #i:I
    .end local v1           #str:Ljava/lang/String;
    :cond_3
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherNightImage:[[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 60
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherNightImage:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1       #str:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    sget-object v3, Lcom/alibaba/adi/collie/util/WeatherImageUtil;->weatherNightImage:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
