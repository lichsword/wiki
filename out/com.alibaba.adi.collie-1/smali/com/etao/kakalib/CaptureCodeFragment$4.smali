.class Lcom/etao/kakalib/CaptureCodeFragment$4;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/CaptureCodeFragment;->initCameraAndStartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureCodeFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;
    invoke-static {v2}, Lcom/etao/kakalib/CaptureCodeFragment;->access$6(Lcom/etao/kakalib/CaptureCodeFragment;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    #calls: Lcom/etao/kakalib/CaptureCodeFragment;->initCamera(Landroid/view/SurfaceHolder;)V
    invoke-static {v1, v2}, Lcom/etao/kakalib/CaptureCodeFragment;->access$7(Lcom/etao/kakalib/CaptureCodeFragment;Landroid/view/SurfaceHolder;)V

    .line 322
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/camera/CameraManager;->startPreviewRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$8(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->dismissOpenCameraDialog()V

    .line 331
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->inScanning:Z
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$9(Lcom/etao/kakalib/CaptureCodeFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->restartPreviewModeAndRequestOneFrame()Z

    .line 334
    :cond_1
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScanFragment"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$4;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$8(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraErrorDialog()V

    goto :goto_0
.end method
