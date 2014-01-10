.class public abstract Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
.source "KakaLibAbsScanProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;,
        Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;,
        Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOGO_SCAN_TIMES:I = 0x1e


# instance fields
.field defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

.field logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

.field private mCount:I

.field private mScanTimes:I


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I

    .line 45
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    .line 25
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->setLogoScanTimes(I)V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mScanTimes:I

    return v0
.end method

.method static synthetic access$2(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I

    return-void
.end method

.method private runNotUiThread(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "run"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final decodeFailed(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter "throwable"

    .prologue
    .line 49
    instance-of v1, p1, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;

    .line 51
    .local v0, scanDecodeFailedException:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;->getFailedFeature()Lcom/etao/kaka/decode/LogoDecodeResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->onDecodeFailed(Ljava/lang/Object;)V

    .line 56
    .end local v0           #scanDecodeFailedException:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->onDecodeFailed(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final decodePrepare()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->defaultLogoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->onDecodeStart()V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public final handleDecodeResult(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, result:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$1;-><init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->runNotUiThread(Ljava/lang/Runnable;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onGetReqestApi(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public restLogoCount()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I

    .line 30
    return-void
.end method

.method public setLogoScanCallback(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;)V
    .locals 0
    .parameter "logoDecodeCallback"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    .line 34
    return-void
.end method

.method public setLogoScanTimes(I)V
    .locals 0
    .parameter "logoScanTime"

    .prologue
    .line 37
    iput p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mScanTimes:I

    .line 38
    return-void
.end method
