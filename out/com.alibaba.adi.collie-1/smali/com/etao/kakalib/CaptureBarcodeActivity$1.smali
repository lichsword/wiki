.class Lcom/etao/kakalib/CaptureBarcodeActivity$1;
.super Landroid/os/Handler;
.source "CaptureBarcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/CaptureBarcodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureBarcodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;->this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;

    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 30
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 31
    new-instance v0, Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-direct {v0}, Lcom/etao/kakalib/CaptureCodeFragment;-><init>()V

    .line 33
    .local v0, captureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;
    new-instance v2, Lcom/etao/kakalib/KakaLibScanController;

    .line 34
    iget-object v4, p0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;->this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;

    .line 33
    invoke-direct {v2, v0, v4}, Lcom/etao/kakalib/KakaLibScanController;-><init>(Lcom/etao/kakalib/business/KakaLibPreviewController;Landroid/support/v4/app/FragmentActivity;)V

    .line 37
    .local v2, kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    iget-object v4, p0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;->this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;

    .line 36
    invoke-static {v2, v4}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultProcesserBuilder;->builderTaobaoProductProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v3

    .line 39
    .local v3, rawProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    invoke-static {v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeFlowBuilder;->buildDecodeQRAndBarCodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v1

    .line 40
    .local v1, decodeQRAndBarCodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    invoke-virtual {v2, v1}, Lcom/etao/kakalib/KakaLibScanController;->registerDecodeResultProcesser(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z

    .line 41
    invoke-virtual {v2, v1}, Lcom/etao/kakalib/KakaLibScanController;->setCurrentPreviewDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z

    .line 44
    invoke-static {v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeFlowBuilder;->buildQRCodeFromAlbumDecodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Lcom/etao/kakalib/KakaLibScanController;->setmAlbumDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/etao/kakalib/CaptureCodeFragment;->setScanController(Lcom/etao/kakalib/KakaLibScanController;)V

    .line 47
    iget-object v4, p0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;->this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;

    invoke-virtual {v4}, Lcom/etao/kakalib/CaptureBarcodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/etao/kakalib/CaptureBarcodeActivity$1;->this$0:Lcom/etao/kakalib/CaptureBarcodeActivity;

    .line 50
    const-string v6, "container"

    const/high16 v7, 0x7f0a

    .line 49
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 50
    const-string v6, "scanFragment"

    .line 49
    invoke-virtual {v4, v5, v0, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    .end local v0           #captureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;
    .end local v1           #decodeQRAndBarCodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .end local v2           #kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;
    .end local v3           #rawProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    :cond_0
    return-void
.end method
