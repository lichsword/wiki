.class public Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;
.source "KakaLibDecodeResultQrFromAlbumRawProcesser.java"


# instance fields
.field private barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 17
    new-instance v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    invoke-direct {v0, p2, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    iput-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;->barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    .line 18
    return-void
.end method


# virtual methods
.method public decodeFailed(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;->barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;->barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->showNoQRCodeFoundDialog()V

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDecodeResult(Ljava/lang/Object;)Z
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
    .line 22
    .local p1, result:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;->barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;->barCodeDialogHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;

    check-cast p1, Lcom/etao/kaka/decode/DecodeResult;

    .end local p1           #result:Ljava/lang/Object;,"TT;"
    invoke-virtual {v0, p1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->showQRText(Lcom/etao/kaka/decode/DecodeResult;)V

    .line 25
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
