.class public Lcom/alibaba/adi/collie/util/FlashLight;
.super Ljava/lang/Object;
.source "FlashLight.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "FlashLight"

.field private static sInstance:Lcom/alibaba/adi/collie/util/FlashLight;


# instance fields
.field private mActive:Z

.field private mCamera:Landroid/hardware/Camera;

.field private final mContext:Landroid/content/Context;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPreview:Landroid/view/SurfaceView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/adi/collie/util/FlashLight;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/adi/collie/util/FlashLight;->$assertionsDisabled:Z

    .line 26
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mActive:Z

    .line 35
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mContext:Landroid/content/Context;

    .line 36
    sget-boolean v0, Lcom/alibaba/adi/collie/util/FlashLight;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;

    .line 41
    iget-object v6, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 42
    const/16 v3, 0x7d3

    .line 43
    const/16 v4, 0x38

    .line 46
    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 41
    invoke-interface {v6, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/util/FlashLight;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/adi/collie/util/FlashLight;->sInstance:Lcom/alibaba/adi/collie/util/FlashLight;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/alibaba/adi/collie/util/FlashLight;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/util/FlashLight;->sInstance:Lcom/alibaba/adi/collie/util/FlashLight;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alibaba/adi/collie/util/FlashLight;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/FlashLight;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/FlashLight;->sInstance:Lcom/alibaba/adi/collie/util/FlashLight;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/util/FlashLight;->sInstance:Lcom/alibaba/adi/collie/util/FlashLight;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 136
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 145
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/RuntimeException;
    iput-object v5, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    .line 139
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0196

    .line 140
    const/4 v4, 0x0

    .line 139
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, exception:Ljava/io/IOException;
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 148
    iput-object v5, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    goto :goto_1
.end method

.method private releaseCamera()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v2, "FlashLight"

    const-string v3, "close"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mActive:Z

    .line 96
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 101
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 103
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->releaseCamera()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->close()V

    .line 118
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mPreview:Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized isActive()Z
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()V
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    const-string v2, "FlashLight"

    const-string v3, "open"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mActive:Z

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->close()V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->initCamera()V

    .line 74
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 80
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 81
    .local v1, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :goto_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mActive:Z

    .line 88
    const-string v2, "Flashlight"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "surfaceHolder"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 172
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    .line 166
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->initCamera()V

    .line 164
    monitor-exit p0

    .line 168
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/FlashLight;->releaseCamera()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/FlashLight;->mHolder:Landroid/view/SurfaceHolder;

    .line 176
    monitor-exit p0

    .line 180
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
