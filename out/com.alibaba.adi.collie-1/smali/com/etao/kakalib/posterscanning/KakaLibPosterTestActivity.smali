.class public Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "KakaLibPosterTestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private cameraManager:Lcom/etao/kakalib/camera/CameraManager;

.field private hasSurface:Z

.field private previewView:Landroid/view/SurfaceView;

.field surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field theCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 148
    new-instance v0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)V

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z

    return v0
.end method

.method static synthetic access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z

    return-void
.end method

.method static synthetic access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->initCameraAndStartPreview(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)Lcom/etao/kakalib/camera/CameraManager;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    return-object v0
.end method

.method private closeCameraDriver()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->stopPreview()V

    .line 119
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraManager;->closeDriver()V

    .line 121
    :cond_0
    return-void
.end method

.method private initCameraAndStartPreview(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    if-nez v2, :cond_1

    .line 128
    new-instance v2, Lcom/etao/kakalib/camera/CameraManager;

    invoke-direct {v2, p0}, Lcom/etao/kakalib/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/etao/kakalib/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/CameraManager;->startPreviewRetry()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    .line 136
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MainActivity"

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    const/16 v1, 0x13

    if-ne p2, v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v1}, Lcom/etao/kakalib/camera/CameraManager;->startPreviewRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v0, "kakalib_poster_demo_activity"

    .line 30
    const v1, 0x7f030012

    .line 29
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->setContentView(I)V

    .line 32
    const-string v0, "preview_view"

    const v1, 0x7f0a004e

    .line 31
    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->previewView:Landroid/view/SurfaceView;

    .line 34
    const-string v0, "buttonPosterScan"

    const v1, 0x7f0a004f

    invoke-static {p0, v0, v1}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 94
    new-instance v1, Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etao/kakalib/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;

    .line 95
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->previewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 96
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    iget-boolean v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->initCameraAndStartPreview(Landroid/view/SurfaceHolder;)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 103
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 113
    invoke-direct {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->closeCameraDriver()V

    .line 114
    return-void
.end method
