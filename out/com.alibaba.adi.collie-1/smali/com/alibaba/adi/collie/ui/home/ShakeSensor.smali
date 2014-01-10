.class public Lcom/alibaba/adi/collie/ui/home/ShakeSensor;
.super Ljava/lang/Object;
.source "ShakeSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final MIN_SPEED:I = 0x3e8

.field private static final SHAKE_COUNT:I = 0x3

.field private static final SHAKE_DURATION:I = 0x3e8

.field private static final SHAKE_INTERVAL_TIME:I = 0x64

.field private static final SHAKE_TIMEOUT:I = 0x12c

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private final manager:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

.field private pause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mShakeCount:I

    .line 47
    iput v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastX:F

    .line 49
    iput v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastY:F

    .line 51
    iput v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastZ:F

    .line 53
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->pause:Z

    .line 56
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->context:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->manager:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mVibrator:Landroid/os/Vibrator;

    .line 60
    return-void
.end method

.method private makeDecision()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->postChange()V

    .line 166
    return-void
.end method

.method private postChange()V
    .locals 3

    .prologue
    .line 157
    const/4 v1, 0x1

    .line 158
    .local v1, isNeedChange:Z
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.adi.collie.ACTION_PPT_CHANG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->manager:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 137
    const/4 v2, 0x3

    .line 136
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    :cond_0
    return-void
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->manager:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 103
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "sensorEvent"

    .prologue
    .line 66
    iget-boolean v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->pause:Z

    if-eqz v6, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 71
    .local v5, values:[F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    .local v2, now:J
    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastForce:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 74
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mShakeCount:I

    .line 77
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 78
    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastTime:J

    sub-long v0, v2, v6

    .line 79
    .local v0, diff:J
    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v5, v7

    add-float/2addr v6, v7

    .line 80
    const/4 v7, 0x2

    aget v7, v5, v7

    .line 79
    add-float/2addr v6, v7

    .line 80
    iget v7, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastX:F

    .line 79
    sub-float/2addr v6, v7

    .line 80
    iget v7, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastY:F

    .line 79
    sub-float/2addr v6, v7

    .line 80
    iget v7, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastZ:F

    .line 79
    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 81
    long-to-float v7, v0

    .line 79
    div-float/2addr v6, v7

    .line 81
    const v7, 0x461c4000

    .line 79
    mul-float v4, v6, v7

    .line 82
    .local v4, speed:F
    sget-object v6, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "speed = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/high16 v6, 0x447a

    cmpl-float v6, v4, v6

    if-lez v6, :cond_4

    .line 84
    iget v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mShakeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mShakeCount:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    iget-wide v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastShake:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 85
    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastShake:J

    .line 86
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mShakeCount:I

    .line 87
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->makeDecision()V

    .line 88
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 90
    :cond_3
    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastForce:J

    .line 92
    :cond_4
    iput-wide v2, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastTime:J

    .line 93
    const/4 v6, 0x0

    aget v6, v5, v6

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastX:F

    .line 94
    const/4 v6, 0x1

    aget v6, v5, v6

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastY:F

    .line 95
    const/4 v6, 0x2

    aget v6, v5, v6

    iput v6, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->mLastZ:F

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->pause:Z

    .line 124
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->pause:Z

    .line 131
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->register()V

    .line 110
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->unregister()V

    .line 117
    return-void
.end method
