.class public final Lcom/etao/kakalib/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x21c

.field private static final MAX_FRAME_WIDTH:I = 0x3c0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

.field private callbackBuffers:[B

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/etao/kakalib/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/etao/kakalib/camera/CameraManager;->context:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/etao/kakalib/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    .line 69
    new-instance v0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    invoke-direct {v0}, Lcom/etao/kakalib/camera/open/OpenCameraInterface;-><init>()V

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/camera/CameraManager;->stop:Z

    .line 71
    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 1
    .parameter "resolution"
    .parameter "hardMin"
    .parameter "hardMax"

    .prologue
    .line 310
    div-int/lit8 v0, p0, 0x2

    .line 311
    .local v0, dim:I
    if-ge v0, p1, :cond_0

    .line 317
    .end local p1
    :goto_0
    return p1

    .line 314
    .restart local p1
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 315
    goto :goto_0

    :cond_1
    move p1, v0

    .line 317
    goto :goto_0
.end method

.method private declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 183
    .local v0, theCamera:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z

    .line 186
    new-instance v1, Lcom/etao/kakalib/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/etao/kakalib/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/etao/kakalib/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    .end local v0           #theCamera:Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized closeDriver()V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->setStop(Z)V

    .line 159
    sget-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeDriver openCameraInterface"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/etao/kakalib/camera/CameraManager;->openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    invoke-virtual {v2}, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->isStop()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_1
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 290
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 291
    .local v2, screenResolution:Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 296
    iget v5, v2, Landroid/graphics/Point;->x:I

    const/16 v6, 0xf0

    .line 297
    const/16 v7, 0x3c0

    .line 296
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v4

    .line 298
    .local v4, width:I
    iget v5, v2, Landroid/graphics/Point;->y:I

    const/16 v6, 0xf0

    .line 299
    const/16 v7, 0x21c

    .line 298
    invoke-static {v5, v6, v7}, Lcom/etao/kakalib/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v0

    .line 301
    .local v0, height:I
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 302
    .local v1, leftOffset:I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 303
    .local v3, topOffset:I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 304
    sget-object v5, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calculated framing rect: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0           #height:I
    .end local v1           #leftOffset:I
    .end local v2           #screenResolution:Landroid/graphics/Point;
    .end local v3           #topOffset:I
    .end local v4           #width:I
    :cond_2
    iget-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/etao/kakalib/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 338
    .local v1, framingRect:Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 354
    .end local v1           #framingRect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 341
    .restart local v1       #framingRect:Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 342
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    .line 343
    .local v0, cameraResolution:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 344
    .local v3, screenResolution:Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 348
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 349
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 350
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 351
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 352
    iput-object v2, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 354
    .end local v0           #cameraResolution:Landroid/graphics/Point;
    .end local v1           #framingRect:Landroid/graphics/Rect;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #screenResolution:Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 17
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 82
    .local v9, time:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 83
    .local v8, theCamera:Landroid/hardware/Camera;
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/etao/kakalib/camera/CameraManager;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 85
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/etao/kakalib/camera/CameraManager;->openCameraInterface:Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    const/16 v12, 0x1f4

    const/16 v13, 0x1770

    invoke-virtual {v11, v12, v13}, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->open(II)Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 89
    :goto_0
    if-nez v8, :cond_0

    .line 90
    :try_start_2
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v8           #theCamera:Landroid/hardware/Camera;
    .end local v9           #time:J
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 86
    .restart local v8       #theCamera:Landroid/hardware/Camera;
    .restart local v9       #time:J
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6253\u5f00\u6444\u50cf\u5934\u5931\u8d25"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/etao/kakalib/camera/CameraManager;->stop:Z

    if-eqz v11, :cond_3

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/etao/kakalib/camera/CameraManager;->closeDriver()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 98
    :cond_3
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 99
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "---- open use time "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 101
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/etao/kakalib/camera/CameraManager;->initialized:Z

    if-nez v11, :cond_4

    .line 102
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/etao/kakalib/camera/CameraManager;->initialized:Z

    .line 103
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v11, v8}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 104
    move-object/from16 v0, p0

    iget v11, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v11, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget v11, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/etao/kakalib/camera/CameraManager;->setManualFramingRect(II)V

    .line 106
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectWidth:I

    .line 107
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectHeight:I

    .line 110
    :cond_4
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "---- initFromCameraParameters use time "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 113
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 114
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v3, :cond_6

    const/4 v4, 0x0

    .line 118
    .local v4, parametersFlattened:Ljava/lang/String;
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 138
    :cond_5
    :goto_3
    :try_start_6
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "---- setDesiredCameraParameters use time "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 138
    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 141
    .local v5, previewSize:Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_2

    .line 144
    iget v11, v5, Landroid/hardware/Camera$Size;->height:I

    iget v12, v5, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v11, v12

    int-to-double v11, v11

    .line 145
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v13

    invoke-static {v13}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v13

    int-to-double v13, v13

    const-wide/high16 v15, 0x4020

    .line 144
    div-double/2addr v13, v15

    mul-double/2addr v11, v13

    double-to-int v1, v11

    .line 146
    .local v1, dataBufferSize:I
    new-array v11, v1, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/etao/kakalib/camera/CameraManager;->callbackBuffers:[B

    goto/16 :goto_1

    .line 114
    .end local v1           #dataBufferSize:I
    .end local v4           #parametersFlattened:Ljava/lang/String;
    .end local v5           #previewSize:Landroid/hardware/Camera$Size;
    :cond_6
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 119
    .restart local v4       #parametersFlattened:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 121
    .local v6, re:Ljava/lang/RuntimeException;
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 122
    const-string v12, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    .line 121
    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Resetting to saved camera params: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz v4, :cond_5

    .line 126
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    :try_start_7
    invoke-virtual {v8, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 131
    :catch_2
    move-exception v7

    .line 133
    .local v7, re2:Ljava/lang/RuntimeException;
    :try_start_8
    sget-object v11, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 134
    const-string v12, "Camera rejected even safe-mode parameters! No configuration"

    .line 133
    invoke-static {v11, v12}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 4
    .parameter "previewCallback"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 265
    .local v0, theCamera:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 266
    if-eqz p1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/etao/kakalib/camera/CameraManager;->callbackBuffers:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 272
    :goto_0
    sget-object v1, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPreviewCallbackWithBuffer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    monitor-exit p0

    return-void

    .line 269
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    .end local v0           #theCamera:Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/etao/kakalib/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 367
    .local v1, screenResolution:Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 368
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 370
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 371
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 373
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 374
    .local v0, leftOffset:I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 375
    .local v2, topOffset:I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 376
    sget-object v3, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calculated manual framing rect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/etao/kakalib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v0           #leftOffset:I
    .end local v1           #screenResolution:Landroid/graphics/Point;
    .end local v2           #topOffset:I
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectWidth:I

    .line 380
    iput p2, p0, Lcom/etao/kakalib/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 2
    .parameter "newSetting"

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/AutoFocusManager;->stop()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->configManager:Lcom/etao/kakalib/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 247
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreviewRetry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/etao/kakalib/camera/CameraManager;->startPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    iget-boolean v1, p0, Lcom/etao/kakalib/camera/CameraManager;->stop:Z

    if-nez v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/etao/kakalib/camera/CameraManager;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/etao/kakalib/camera/AutoFocusManager;->stop()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->autoFocusManager:Lcom/etao/kakalib/camera/AutoFocusManager;

    .line 208
    sget-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "autoFocusManager stop"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 215
    sget-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "camera stoppreview"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_1
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    sget-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "autoFocusManager is null"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_1
    :try_start_2
    sget-object v0, Lcom/etao/kakalib/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "camera is null or is not previewing"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/camera/CameraManager;->previewing:Z

    .line 233
    invoke-virtual {p0}, Lcom/etao/kakalib/camera/CameraManager;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePreviewDisplayHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 176
    :cond_0
    return-void
.end method
