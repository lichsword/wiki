.class Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;
.super Ljava/lang/Object;
.source "KakaLibAbsScanProcesser.java"

# interfaces
.implements Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultLogoDecodeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeFailed(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v0, v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I
    invoke-static {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I

    move-result v0

    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mScanTimes:I
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v0, v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    invoke-interface {v0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;->onDecodeFailed(Ljava/lang/Object;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    invoke-virtual {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->getScanController()Lcom/etao/kakalib/KakaLibScanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->requestCameraFrame()Z

    goto :goto_0
.end method

.method public onDecodeStart()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I
    invoke-static {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$2(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;I)V

    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mScanTimes:I
    invoke-static {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$1(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I

    move-result v1

    rem-int v1, v2, v1

    #setter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I
    invoke-static {v0, v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$2(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;I)V

    .line 111
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    #getter for: Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->mCount:I
    invoke-static {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->access$0(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;)I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v0, v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v0, v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    invoke-interface {v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;->onDecodeStart()V

    .line 116
    :cond_0
    return-void
.end method

.method public onDecodeSuccess(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 121
    move-object v0, p1

    check-cast v0, Lcom/etao/kaka/decode/LogoDecodeResult;

    .line 122
    .local v0, r:Lcom/etao/kaka/decode/LogoDecodeResult;
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v1, v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/etao/kaka/decode/LogoDecodeResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    new-instance v2, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;

    invoke-direct {v2, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$ScanDecodeFailedException;-><init>(Lcom/etao/kaka/decode/LogoDecodeResult;)V

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->decodeFailed(Ljava/lang/Throwable;)Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->restLogoCount()V

    .line 127
    iget-object v1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$DefaultLogoDecodeCallback;->this$0:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;

    iget-object v1, v1, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;->logoDecodeCallback:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;

    invoke-interface {v1, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;->onDecodeSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
