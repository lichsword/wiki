.class public Landroid/taobao/chardet/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BI)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Landroid/taobao/chardet/nsDetector;

    invoke-direct {v0, v2}, Landroid/taobao/chardet/nsDetector;-><init>(I)V

    .line 7
    .local v0, det:Landroid/taobao/chardet/nsDetector;
    invoke-virtual {v0, p0, p1, v2}, Landroid/taobao/chardet/nsDetector;->DoIt([BIZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    .local v1, encoding:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/taobao/chardet/nsDetector;->DataEnd()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    invoke-static {p0}, Landroid/taobao/chardet/StringUtils;->guessEncoding([B)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_1
    return-object v1
.end method
