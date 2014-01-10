.class public Landroid/taobao/chardet/nsDetector;
.super Landroid/taobao/chardet/nsPSMDetector;
.source "nsDetector.java"

# interfaces
.implements Landroid/taobao/chardet/nsICharsetDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/taobao/chardet/nsPSMDetector;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "langFlag"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/taobao/chardet/nsPSMDetector;-><init>(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Ljava/lang/String;
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "oDontFeedMe"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/taobao/chardet/nsDetector;->HandleData([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Done()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/taobao/chardet/nsDetector;->DataEnd()Ljava/lang/String;

    .line 69
    return-void
.end method

.method public Init(Landroid/taobao/chardet/nsICharsetDetectionObserver;)V
    .locals 0
    .parameter "aObserver"

    .prologue
    .line 54
    return-void
.end method

.method public isAscii([BI)Z
    .locals 2
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 80
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 84
    :goto_1
    return v1

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
