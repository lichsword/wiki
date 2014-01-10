.class public final Lcom/etao/kakalib/KakaLibScanController;
.super Ljava/lang/Object;
.source "KakaLibScanController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/etao/kakalib/business/KakaLibPreviewController;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanController"


# instance fields
.field private currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

.field private currentPreviewDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

.field private decodeFlowsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

.field private taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/business/KakaLibPreviewController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter "previewController"
    .parameter "fragmentActivity"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/etao/kakalib/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->decodeFlowsHashMap:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    .line 56
    iput-object p2, p0, Lcom/etao/kakalib/KakaLibScanController;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/etao/kakalib/KakaLibScanController;->handleDecodeFailed(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/etao/kakalib/KakaLibScanController;->handleDecodeSuccess(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V

    return-void
.end method

.method private getDecodeFlowsHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->decodeFlowsHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private varargs handleDecodeFailed(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter "decodeFlow"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;",
            "[",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, asyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Exception;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, exception:Ljava/lang/Exception;
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 246
    const/4 v2, 0x0

    aget-object v0, p3, v2

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->decodeFailed(Ljava/lang/Throwable;)Z

    move-result v1

    .line 255
    .local v1, hasCustomBehavior:Z
    if-nez v1, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->requestCameraFrame()Z

    goto :goto_0
.end method

.method private handleDecodeSuccess(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "decodeFlow"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, asyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Exception;Ljava/lang/Object;>;"
    .local p3, result:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    if-eqz p3, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->stopCameraFrame()Z

    .line 270
    invoke-virtual {p2}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v1

    .line 271
    .local v1, decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    if-eqz v1, :cond_4

    .line 272
    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->needPlayDecodeSuccessSound()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->playScanSuccessSound()Z

    .line 275
    :cond_2
    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->needShowDecodeSuccessAnimation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    instance-of v4, p3, Lcom/etao/kaka/decode/DecodeResult;

    if-eqz v4, :cond_3

    move-object v4, p3

    .line 277
    check-cast v4, Lcom/etao/kaka/decode/DecodeResult;

    invoke-virtual {p0, v4}, Lcom/etao/kakalib/KakaLibScanController;->playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)Z

    .line 281
    :cond_3
    invoke-virtual {v1, p3}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->handleDecodeResult(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    .local v2, flag:Z
    if-eqz v2, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewMode()Z

    .line 288
    .end local v2           #flag:Z
    :cond_4
    instance-of v4, p3, Lcom/etao/kaka/decode/DecodeResult;

    if-eqz v4, :cond_0

    move-object v0, p3

    .line 290
    check-cast v0, Lcom/etao/kaka/decode/DecodeResult;

    .line 291
    .local v0, decodeResult:Lcom/etao/kaka/decode/DecodeResult;
    iget v4, v0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 292
    const-string v4, "huoyansdk_qr"

    const-string v5, "Text="

    iget-object v6, v0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :try_start_0
    const-string v4, "[TELL_ME_HUOYAN_KAKA_GOGOGO_102]"

    iget-object v5, v0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppVersion="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/etao/kakalib/KakaLibScanController;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5}, Lcom/etao/kakalib/util/KaKaLibUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\nSO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 297
    const-string v5, "tbdecode_1.0.1_0807"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Lcom/etao/kakalib/KakaLibScanController;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v3}, Lcom/etao/kakalib/util/ToastUtil;->toastLongMsg(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v3           #version:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private performDecodeDecode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)V
    .locals 4
    .parameter "imageWrapper"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 188
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v1

    .line 150
    .local v1, decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->decodePrepare()Z

    .line 154
    :cond_1
    new-instance v0, Lcom/etao/kakalib/KakaLibScanController$1;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/KakaLibScanController$1;-><init>(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/KakaLibImageWrapper;)V

    .line 187
    .local v0, decodeAsyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Exception;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/etao/kakalib/KakaLibScanController;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v2, v0, v3}, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 130
    .local v2, previewSize:Landroid/hardware/Camera$Size;
    new-instance v1, Lcom/etao/kakalib/business/KakaLibImageWrapper;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    .line 131
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    .line 130
    invoke-direct {v1, p1, v3, v4, v5}, Lcom/etao/kakalib/business/KakaLibImageWrapper;-><init>([BIII)V

    .line 132
    .local v1, imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;
    invoke-direct {p0, v1}, Lcom/etao/kakalib/KakaLibScanController;->performDecodeDecode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;
    .end local v2           #previewSize:Landroid/hardware/Camera$Size;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreviewFrame e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public performDecodeDecode(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibScanController;->getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v2

    .line 197
    .local v2, qrCodeFromAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;
    if-nez v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {v2}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;->getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v1

    .line 202
    .local v1, decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->decodePrepare()Z

    .line 206
    :cond_1
    new-instance v0, Lcom/etao/kakalib/KakaLibScanController$2;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/KakaLibScanController$2;-><init>(Lcom/etao/kakalib/KakaLibScanController;Ljava/lang/String;)V

    .line 239
    .local v0, decodeAsyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Exception;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/etao/kakalib/KakaLibScanController;->taskExec:Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v3, v0, v4}, Lcom/etao/kakalib/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0, p1}, Lcom/etao/kakalib/business/KakaLibPreviewController;->playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)Z

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playScanSuccessSound()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->playScanSuccessSound()Z

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerDecodeResultProcesser(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z
    .locals 2
    .parameter "decodeFlowInterface"

    .prologue
    .line 83
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/etao/kakalib/KakaLibScanController;->getDecodeFlowsHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestCameraFrame()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->requestCameraFrame()Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartPreviewMode()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->restartPreviewMode()Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartPreviewModeAndRequestOneFrame()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->restartPreviewModeAndRequestOneFrame()Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setCurrentPreviewDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z
    .locals 3
    .parameter "currentDecodeFlow"

    .prologue
    const/4 v0, 0x0

    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 105
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/etao/kakalib/KakaLibScanController;->getDecodeFlowsHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentPreviewDecodeFlowByTag(Ljava/lang/String;)Z
    .locals 3
    .parameter "decodeName"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/etao/kakalib/KakaLibScanController;->getDecodeFlowsHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 114
    .local v0, decodeFlows:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    .line 115
    .local v1, temp:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibScanController;->setCurrentPreviewDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v2, 0x1

    .line 119
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 113
    .end local v0           #decodeFlows:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;>;"
    .end local v1           #temp:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setmAlbumDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;)V
    .locals 0
    .parameter "mAlbumDecodeFlow"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibScanController;->mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    .line 70
    return-void
.end method

.method public stopCameraFrame()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController;->currentPreviewController:Lcom/etao/kakalib/business/KakaLibPreviewController;

    invoke-interface {v0}, Lcom/etao/kakalib/business/KakaLibPreviewController;->stopCameraFrame()Z

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized unRegisterDecodeResultProcesser(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z
    .locals 2
    .parameter "decodeFlowInterface"

    .prologue
    .line 94
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/etao/kakalib/KakaLibScanController;->getDecodeFlowsHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
