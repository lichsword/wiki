.class public Lcom/etao/kakalib/CaptureCodeFragment;
.super Landroid/support/v4/app/Fragment;
.source "CaptureCodeFragment.java"

# interfaces
.implements Lcom/etao/kakalib/business/KakaLibPreviewController;


# static fields
.field protected static final REQUEST_CODE_GET_ALBUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScanFragment"


# instance fields
.field private barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

.field private cameraManager:Lcom/etao/kakalib/camera/CameraManager;

.field private hasSurface:Z

.field private imageButtonScanTorch:Landroid/widget/ImageButton;

.field private imageViewLock:Lcom/etao/kakalib/views/CameraLocateView;

.field private inScanning:Z

.field private isResume:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private previewView:Landroid/view/SurfaceView;

.field private rootView:Landroid/view/View;

.field private scanController:Lcom/etao/kakalib/KakaLibScanController;

.field private surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 215
    new-instance v0, Lcom/etao/kakalib/CaptureCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/CaptureCodeFragment$1;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    iput-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 239
    new-instance v0, Lcom/etao/kakalib/CaptureCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/CaptureCodeFragment$2;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    iput-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/CaptureCodeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z

    return v0
.end method

.method static synthetic access$1(Lcom/etao/kakalib/CaptureCodeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z

    return-void
.end method

.method static synthetic access$10(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/views/KakaLibBarCodeScanView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/etao/kakalib/CaptureCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->initCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3(Lcom/etao/kakalib/CaptureCodeFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/etao/kakalib/CaptureCodeFragment;->torchButtonClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/etao/kakalib/CaptureCodeFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/etao/kakalib/CaptureCodeFragment;)Landroid/view/SurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/etao/kakalib/CaptureCodeFragment;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/etao/kakalib/CaptureCodeFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$8(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    return-object v0
.end method

.method static synthetic access$9(Lcom/etao/kakalib/CaptureCodeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->inScanning:Z

    return v0
.end method

.method private addSurfaceView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 130
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    .local v0, viewGroup:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    new-instance v1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    .line 135
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 136
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method private closeCameraDriver()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "ScanFragment"

    const-string v1, "--->?call stopCurrentMode"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->stopPreview()V

    .line 370
    const-string v0, "ScanFragment"

    const-string v1, "--->?call stopPreview"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->closeDriver()V

    .line 372
    const-string v0, "ScanFragment"

    const-string v1, "--->?call closeDriver"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method private dismissScanViewAnim()V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/CaptureCodeFragment$5;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/CaptureCodeFragment$5;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method private getImagePathFromActivityResultIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .parameter "data"

    .prologue
    .line 436
    const/4 v10, 0x0

    .line 438
    .local v10, path:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 440
    .local v1, originalUri:Landroid/net/Uri;
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 453
    :goto_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v9, file:Ljava/io/File;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-string v0, "ScanFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pick image file exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 460
    :goto_1
    const-string v0, "ScanFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pick image:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v1           #originalUri:Landroid/net/Uri;
    .end local v9           #file:Ljava/io/File;
    :cond_0
    :goto_2
    return-object v10

    .line 443
    .restart local v1       #originalUri:Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 444
    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 448
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 450
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 458
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v9       #file:Ljava/io/File;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 462
    .end local v1           #originalUri:Landroid/net/Uri;
    .end local v9           #file:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 463
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get image error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 339
    const-string v2, "ScanFragment"

    const-string v3, "------initCamera() called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-nez v2, :cond_1

    .line 344
    new-instance v2, Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/etao/kakalib/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const-string v2, "ScanFragment"

    const-string v3, "------initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    :goto_0
    return-void

    .line 350
    :cond_3
    iget-boolean v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->isResume:Z

    if-eqz v2, :cond_2

    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/etao/kakalib/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "ScanFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    invoke-virtual {v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraErrorDialog()V

    goto :goto_0

    .line 358
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ScanFragment"

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    invoke-virtual {v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraErrorDialog()V

    goto :goto_0
.end method

.method private initCameraAndStartPreview()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "ScanFragment"

    const-string v1, "initCameraAndStartPreview"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->isResume:Z

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etao/kakalib/CaptureCodeFragment$4;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/CaptureCodeFragment$4;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private initSoundPool()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 411
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->mSoundPool:Landroid/media/SoundPool;

    .line 412
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 413
    const-string v3, "kakalib_scan"

    const/high16 v4, 0x7f05

    .line 412
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getRawIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 414
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "buttonQRDecodeGetPhotoFromAlbum"

    .line 184
    const v4, 0x7f0a0009

    .line 182
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

    iget-object v3, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "barCodeScanView"

    const v4, 0x7f0a0005

    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 188
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    iput-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    .line 190
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->setVisibility(I)V

    .line 193
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "imageViewLock"

    const v4, 0x7f0a0006

    .line 192
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/views/CameraLocateView;

    iput-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageViewLock:Lcom/etao/kakalib/views/CameraLocateView;

    .line 194
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageViewLock:Lcom/etao/kakalib/views/CameraLocateView;

    iget-object v3, p0, Lcom/etao/kakalib/CaptureCodeFragment;->barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/CameraLocateView;->setBoxView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 197
    const-string v3, "android.hardware.camera.flash"

    .line 196
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, hasFlash:Z
    if-nez v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "imageButtonScanTorch"

    const v4, 0x7f0a0007

    .line 202
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    .line 204
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    .line 206
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "kakalib_scan_flashlight_normal"

    .line 207
    const v5, 0x7f02004a

    .line 205
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 208
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 211
    const-string v3, "imageButtonInfo"

    const v4, 0x7f0a0008

    .line 210
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, helpButton:Landroid/view/View;
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method private playSound()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 417
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 418
    return-void
.end method

.method private requestOneFramePreviewCallback()Z
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->inScanning:Z

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/camera/CameraManager;->updatePreviewDisplayHolder(Landroid/view/SurfaceHolder;)V

    .line 380
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/camera/CameraManager;->requestPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v1, 0x1

    .line 386
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sdkGlobalInit()V
    .locals 2

    .prologue
    .line 552
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->isReleaseMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/etao/kakalib/util/KakaLibLog;->setLogSwitcher(Z)V

    .line 554
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->init(Landroid/content/Context;)V

    .line 555
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etao/kakalib/CaptureCodeFragment$7;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/CaptureCodeFragment$7;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 572
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 573
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stopReceptFramePreviewCallback()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/CaptureCodeFragment;->setInScanning(Z)V

    .line 391
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->dismissScanViewAnim()V

    .line 392
    return-void
.end method

.method private torchButtonClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 277
    .local v0, newTorchSetting:Ljava/lang/Boolean;
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/etao/kakalib/CaptureCodeFragment$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/etao/kakalib/CaptureCodeFragment$3;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;Ljava/lang/Boolean;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 309
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 310
    return-void

    .line 276
    .end local v0           #newTorchSetting:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decodeQRFromAlbum()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->stopCameraFrame()Z

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, getAlbum:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/CaptureCodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    return-void
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public isInScanning()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->inScanning:Z

    return v0
.end method

.method public lockTargetArea(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 421
    const-string v1, "ScanFragment"

    const-string v2, "lockTargetArea start"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->width:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->height:I

    if-eqz v1, :cond_0

    .line 423
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 424
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->x:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 425
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->x:I

    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 426
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->y:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 427
    iget v1, p1, Lcom/etao/kaka/decode/DecodeResult;->y:I

    iget v2, p1, Lcom/etao/kaka/decode/DecodeResult;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 428
    const-string v1, "ScanFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lockTargetArea to rect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageViewLock:Lcom/etao/kakalib/views/CameraLocateView;

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/CameraManager;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/views/CameraLocateView;->setCameraResolution(Landroid/graphics/Point;)V

    .line 430
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageViewLock:Lcom/etao/kakalib/views/CameraLocateView;

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/views/CameraLocateView;->setRects(Landroid/graphics/Rect;)V

    .line 431
    const-string v1, "ScanFragment"

    const-string v2, "lockTargetArea end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 164
    if-ne p1, v2, :cond_0

    .line 165
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 166
    invoke-direct {p0, p3}, Lcom/etao/kakalib/CaptureCodeFragment;->getImagePathFromActivityResultIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/KakaLibScanController;->performDecodeDecode(Ljava/lang/String;)V

    .line 176
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0, v2}, Lcom/etao/kakalib/CaptureCodeFragment;->setInScanning(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "kakalib_no_image_obtain"

    const v4, 0x7f07001b

    .line 173
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/ToastUtil;->toastShortMsg(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->sdkGlobalInit()V

    .line 82
    new-instance v0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-direct {v0, v1, v2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    iput-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->viewHelper:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;

    .line 83
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->initSoundPool()V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/CaptureCodeFragment;->setInScanning(Z)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 89
    const-string v1, "ScanFragment"

    const-string v2, "&&&&&&onCreateView"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 91
    const-string v2, "kakalib_capture_fragment"

    const v3, 0x7f030003

    .line 90
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, layoutId:I
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->rootView:Landroid/view/View;

    .line 93
    const-string v1, "ScanFragment"

    const-string v2, "&&&&&&onCreateView inflate end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/etao/kakalib/CaptureCodeFragment;->initViews(Landroid/view/View;)V

    .line 95
    const-string v1, "ScanFragment"

    const-string v2, "&&&&&&onCreateView initViews end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->isResume:Z

    .line 143
    const-string v1, "ScanFragment"

    const-string v2, "------onPause"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 145
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->dismissScanViewAnim()V

    .line 146
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->closeCameraDriver()V

    .line 147
    const-string v1, "ScanFragment"

    const-string v2, "------cameraManager.closeDriver end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-boolean v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 150
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 152
    .end local v0           #surfaceHolder:Landroid/view/SurfaceHolder;
    :cond_0
    const-string v1, "ScanFragment"

    const-string v2, "------onPause end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->isResume:Z

    .line 108
    const-string v1, "ScanFragment"

    const-string v2, "&&&&&&Resume"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->showOpenCameraDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 110
    const-string v1, "ScanFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&&&&showOpenCameraDialog end,hasSurface"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etao/kakalib/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    .line 112
    iget-boolean v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->initCameraAndStartPreview()V

    .line 126
    :goto_0
    const-string v1, "ScanFragment"

    const-string v2, "&&&&&&Resume end"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 120
    :cond_0
    const-string v1, "ScanFragment"

    const-string v2, "------addCallback"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->addSurfaceView()V

    .line 122
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 123
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 124
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 101
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "ScanFragment"

    const-string v1, "------onStop"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->dismissOpenCameraDialogWithOutAnim(Landroid/support/v4/app/FragmentManager;)V

    .line 160
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 161
    return-void
.end method

.method public playLockAnim(Lcom/etao/kaka/decode/DecodeResult;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/etao/kakalib/CaptureCodeFragment;->lockTargetArea(Lcom/etao/kaka/decode/DecodeResult;)V

    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public playScanSuccessSound()Z
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->playSound()V

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public requestCameraFrame()Z
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->requestOneFramePreviewCallback()Z

    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public restartPreviewMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/CaptureCodeFragment;->setInScanning(Z)V

    .line 473
    return v0
.end method

.method public restartPreviewModeAndRequestOneFrame()Z
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->restartPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/CaptureCodeFragment$6;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/CaptureCodeFragment$6;-><init>(Lcom/etao/kakalib/CaptureCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->requestOneFramePreviewCallback()Z

    move-result v0

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGetImageFromAlbumButtonVisibility(Z)V
    .locals 2
    .parameter "needShow"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 541
    if-eqz p1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->buttonQRDecodeGetPhotoFromAlbum:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInScanning(Z)V
    .locals 0
    .parameter "inScanning"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->inScanning:Z

    .line 71
    return-void
.end method

.method public setScanController(Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "scanController"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 75
    return-void
.end method

.method public setTorchButtonShow(Z)V
    .locals 2
    .parameter "needShow"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 531
    if-eqz p1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopCameraFrame()Z
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/etao/kakalib/CaptureCodeFragment;->stopReceptFramePreviewCallback()V

    .line 503
    const/4 v0, 0x0

    return v0
.end method
