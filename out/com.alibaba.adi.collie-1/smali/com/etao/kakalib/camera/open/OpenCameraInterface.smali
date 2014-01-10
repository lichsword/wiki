.class public Lcom/etao/kakalib/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->stop:Z

    .line 40
    return-void
.end method


# virtual methods
.method public isStop()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->stop:Z

    return v0
.end method

.method public open()Landroid/hardware/Camera;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    iget-boolean v5, p0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->stop:Z

    if-eqz v5, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    .local v0, camera:Landroid/hardware/Camera;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_3

    .line 53
    const/4 v4, 0x0

    .line 55
    .local v4, numCameras:I
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 59
    :goto_1
    const/4 v3, 0x0

    .line 60
    .local v3, index:I
    :goto_2
    if-lt v3, v4, :cond_4

    .line 69
    :cond_2
    if-ge v3, v4, :cond_5

    .line 70
    sget-object v5, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Opening camera #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 77
    .end local v3           #index:I
    .end local v4           #numCameras:I
    :cond_3
    :goto_3
    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 56
    .restart local v4       #numCameras:I
    :catch_0
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #index:I
    :cond_4
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 63
    .local v1, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 64
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v5, :cond_2

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 73
    .end local v1           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :cond_5
    sget-object v5, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    const-string v6, "No camera facing back; returning camera #0"

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_3
.end method

.method public open(II)Landroid/hardware/Camera;
    .locals 10
    .parameter "retryStep"
    .parameter "maxRetryTime"

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 92
    .local v3, time:J
    const/4 v1, 0x0

    .line 93
    .local v1, count:I
    const/4 v0, 0x0

    .line 94
    .local v0, camera:Landroid/hardware/Camera;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    int-to-long v8, p2

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 114
    :cond_0
    :goto_1
    return-object v5

    .line 95
    :cond_1
    iget-boolean v6, p0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->stop:Z

    if-nez v6, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 102
    :goto_2
    if-eqz v0, :cond_2

    .line 103
    sget-object v5, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5c1d\u8bd5\u4e86"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u6b21\uff0c\u6253\u5f00\u4e86\u6444\u50cf\u5934"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 104
    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 108
    int-to-long v6, p1

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_3
    sget-object v6, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5c1d\u8bd5\u4e86"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6b21\uff0c\u6ca1\u6709\u6253\u5f00\u6444\u50cf\u5934"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public setStop(Z)V
    .locals 0
    .parameter "isstop"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/etao/kakalib/camera/open/OpenCameraInterface;->stop:Z

    .line 36
    return-void
.end method
