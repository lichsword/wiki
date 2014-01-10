.class final Lcom/etao/kakalib/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final MAX_PICTURE_PIXELS:I = 0x5dc00

.field private static final MAX_PREVIEW_PIXELS:I = 0xfa000

.field private static final MIN_PICTURE_PIXELS:I = 0x4b000

.field private static final MIN_PREVIEW_PIXELS:I = 0x24b80

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraPicturePointResolution:Landroid/graphics/Point;

.field private cameraPreviewPointResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 6
    .parameter "parameters"
    .parameter "newSetting"
    .parameter "safeMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    if-eqz p2, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 271
    const-string v3, "torch"

    aput-object v3, v2, v4

    const-string v3, "on"

    aput-object v3, v2, v5

    .line 270
    invoke-static {v1, v2}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, flashMode:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void

    .line 273
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    .line 274
    const-string v3, "off"

    aput-object v3, v2, v4

    .line 273
    invoke-static {v1, v2}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #flashMode:Ljava/lang/String;
    goto :goto_0
.end method

.method private findBestPictureSizeValue(Landroid/hardware/Camera$Parameters;)Landroid/graphics/Point;
    .locals 6
    .parameter "parameters"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    const/16 v0, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const v4, 0x4b000

    .line 311
    const v5, 0x5dc00

    move-object v0, p0

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .parameter "parameters"
    .parameter "screenResolution"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    const v4, 0x24b80

    .line 305
    const v5, 0xfa000

    move-object v0, p0

    move-object v3, p2

    .line 303
    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;
    .locals 21
    .parameter
    .parameter "defaultSize"
    .parameter "screenResolution"
    .parameter "minSize"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            "Landroid/graphics/Point;",
            "II)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v12, p1

    .line 318
    .local v12, rawSupportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v12, :cond_0

    .line 319
    const-string v18, "CameraConfiguration"

    const-string v19, "Device returned no supported preview sizes; using default"

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 384
    :goto_0
    return-object v5

    .line 324
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v16, sortedSupportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v18, Lcom/etao/kakalib/camera/CameraConfigurationManager$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/etao/kakalib/camera/CameraConfigurationManager$1;-><init>(Lcom/etao/kakalib/camera/CameraConfigurationManager;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v11, previewSizesString:Ljava/lang/StringBuilder;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 347
    const-string v18, "CameraConfiguration"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Supported preview sizes: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, bestSize:Landroid/graphics/Point;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 353
    .local v15, screenAspectRatio:F
    const/high16 v4, 0x7f80

    .line 354
    .local v4, diff:F
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_4

    .line 378
    if-nez v3, :cond_2

    .line 379
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #bestSize:Landroid/graphics/Point;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 380
    .restart local v3       #bestSize:Landroid/graphics/Point;
    const-string v18, "CameraConfiguration"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "No suitable preview sizes, using default: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    const-string v18, "CameraConfiguration"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Found best approximate preview size: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    .line 384
    goto/16 :goto_0

    .line 343
    .end local v3           #bestSize:Landroid/graphics/Point;
    .end local v4           #diff:F
    .end local v15           #screenAspectRatio:F
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 344
    .local v17, supportedPreviewSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x78

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 345
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 354
    .end local v17           #supportedPreviewSize:Landroid/hardware/Camera$Size;
    .restart local v3       #bestSize:Landroid/graphics/Point;
    .restart local v4       #diff:F
    .restart local v15       #screenAspectRatio:F
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 355
    .restart local v17       #supportedPreviewSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .line 356
    .local v14, realWidth:I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 357
    .local v13, realHeight:I
    mul-int v10, v14, v13

    .line 358
    .local v10, pixels:I
    move/from16 v0, p4

    if-lt v10, v0, :cond_1

    move/from16 v0, p5

    if-gt v10, v0, :cond_1

    .line 361
    if-ge v14, v13, :cond_5

    const/4 v6, 0x1

    .line 362
    .local v6, isCandidatePortrait:Z
    :goto_3
    if-eqz v6, :cond_6

    move v8, v13

    .line 363
    .local v8, maybeFlippedWidth:I
    :goto_4
    if-eqz v6, :cond_7

    move v7, v14

    .line 364
    .local v7, maybeFlippedHeight:I
    :goto_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v8, v0, :cond_8

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_8

    .line 365
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 366
    .local v5, exactPoint:Landroid/graphics/Point;
    const-string v18, "CameraConfiguration"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Found preview size exactly matching screen size: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 366
    invoke-static/range {v18 .. v19}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .end local v5           #exactPoint:Landroid/graphics/Point;
    .end local v6           #isCandidatePortrait:Z
    .end local v7           #maybeFlippedHeight:I
    .end local v8           #maybeFlippedWidth:I
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .restart local v6       #isCandidatePortrait:Z
    :cond_6
    move v8, v14

    .line 362
    goto :goto_4

    .restart local v8       #maybeFlippedWidth:I
    :cond_7
    move v7, v13

    .line 363
    goto :goto_5

    .line 370
    .restart local v7       #maybeFlippedHeight:I
    :cond_8
    int-to-float v0, v8

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v2, v19, v20

    .line 371
    .local v2, aspectRatio:F
    sub-float v19, v2, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 372
    .local v9, newDiff:F
    cmpg-float v19, v9, v4

    if-gez v19, :cond_1

    .line 373
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #bestSize:Landroid/graphics/Point;
    invoke-direct {v3, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 374
    .restart local v3       #bestSize:Landroid/graphics/Point;
    move v4, v9

    goto/16 :goto_2
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "desiredValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, supportedValues:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Supported values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 392
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 399
    :cond_0
    :goto_1
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Settable value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-object v1

    .line 392
    :cond_1
    aget-object v0, p1, v2

    .line 393
    .local v0, desiredValue:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    move-object v1, v0

    .line 395
    goto :goto_1

    .line 392
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getBestSupportImageFormat(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .parameter "parameters"

    .prologue
    const/16 v1, 0x100

    const/16 v3, 0x11

    const/4 v2, 0x4

    .line 124
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :goto_0
    return v1

    .line 127
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V
    .locals 3
    .parameter "parameters"
    .parameter "prefs"
    .parameter "safeMode"

    .prologue
    .line 263
    invoke-static {p2}, Lcom/etao/kakalib/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/etao/kakalib/camera/FrontLightMode;

    move-result-object v1

    sget-object v2, Lcom/etao/kakalib/camera/FrontLightMode;->ON:Lcom/etao/kakalib/camera/FrontLightMode;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 264
    .local v0, currentSetting:Z
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 265
    return-void

    .line 263
    .end local v0           #currentSetting:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCameraPreviewSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getTorchState(Landroid/hardware/Camera;)Z
    .locals 4
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 241
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, flashMode:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 244
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "torch"

    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    const/4 v2, 0x1

    .line 248
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    return v2
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 13
    .parameter "camera"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v12, 0x500

    const/16 v11, 0x2d0

    .line 77
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 78
    .local v5, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 79
    .local v2, manager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 81
    .local v0, display:Landroid/view/Display;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-lt v8, v9, :cond_2

    .line 82
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 83
    .local v4, outSize:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 85
    .local v7, width:I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 95
    .end local v4           #outSize:Landroid/graphics/Point;
    .local v1, height:I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 97
    const-string v8, "CameraConfiguration"

    const-string v9, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move v6, v7

    .line 99
    .local v6, temp:I
    move v7, v1

    .line 100
    move v1, v6

    .line 102
    .end local v6           #temp:I
    :cond_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 104
    const-string v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Screen resolution: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v5, v8}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    .line 107
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 108
    .local v3, model:Ljava/lang/String;
    const-string v8, "HTC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "One"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    .line 119
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findBestPictureSizeValue(Landroid/hardware/Camera$Parameters;)Landroid/graphics/Point;

    move-result-object v8

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    .line 120
    const-string v8, "CameraConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Camera resolution: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 87
    .end local v1           #height:I
    .end local v3           #model:Ljava/lang/String;
    .end local v7           #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 88
    .restart local v7       #width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1       #height:I
    goto :goto_0

    .line 110
    .restart local v3       #model:Ljava/lang/String;
    :cond_3
    const-string v8, "GT-N7100"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    goto :goto_1

    .line 112
    :cond_4
    const-string v8, "GT-I9300"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 113
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    goto :goto_1

    .line 115
    :cond_5
    const-string v8, "u8800"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 116
    new-instance v8, Landroid/graphics/Point;

    const/16 v9, 0x1e0

    invoke-direct {v8, v11, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    goto :goto_1
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 13
    .parameter "camera"
    .parameter "safeMode"

    .prologue
    const/16 v12, 0x5a

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 138
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_0

    .line 140
    const-string v6, "CameraConfiguration"

    .line 141
    const-string v7, "Device error: no camera parameters are available. Proceeding without configuration."

    .line 140
    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Initial camera parameters: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 152
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v4, v5, p2}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, focusMode:Ljava/lang/String;
    const-string v6, "preferences_auto_focus"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    if-nez p2, :cond_1

    const-string v6, "preferences_disable_continuous_focus"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 157
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/String;

    .line 158
    const-string v8, "auto"

    aput-object v8, v7, v9

    .line 157
    invoke-static {v6, v7}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    if-nez v2, :cond_3

    .line 171
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    .line 172
    const-string v8, "macro"

    aput-object v8, v7, v9

    const-string v8, "edof"

    aput-object v8, v7, v10

    .line 171
    invoke-static {v6, v7}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_3
    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 179
    :cond_4
    const-string v6, "preferences_invert_scan"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/String;

    .line 181
    const-string v8, "negative"

    aput-object v8, v7, v9

    .line 180
    invoke-static {v6, v7}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, colorMode:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 187
    .end local v0           #colorMode:Ljava/lang/String;
    :cond_5
    const/16 v6, 0x5a

    :try_start_0
    invoke-virtual {p1, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_2
    invoke-direct {p0, v4}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->getBestSupportImageFormat(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    .line 199
    .local v3, mPictureFmt:I
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 201
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "HTC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "801e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 202
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "One"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 203
    const/16 v6, 0x1e

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 219
    :cond_6
    :goto_3
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 220
    iget-object v6, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 221
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u9884\u89c8\u5927\u5c0f:wXh="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 222
    iget-object v8, p0, Lcom/etao/kakalib/camera/CameraConfigurationManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v6, 0x100

    if-ne v3, v6, :cond_7

    .line 224
    invoke-virtual {v4, v12}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 227
    :cond_7
    invoke-virtual {p1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 160
    .end local v3           #mPictureFmt:I
    :cond_8
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 161
    const-string v8, "auto"

    aput-object v8, v7, v9

    const-string v8, "continuous-picture"

    aput-object v8, v7, v10

    .line 164
    const-string v8, "continuous-video"

    aput-object v8, v7, v11

    .line 160
    invoke-static {v6, v7}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u65b9\u6cd5\u9519\u8bef"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #mPictureFmt:I
    :cond_9
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "GT-N7100"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 213
    const-string v6, "ly"

    const-string v7, "7100------------------------"

    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 214
    :cond_a
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "GT-I9300"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 215
    const/16 v6, 0x14

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 216
    const-string v6, "ly"

    const-string v7, "9300------------------------"

    invoke-static {v6, v7}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 2
    .parameter "camera"
    .parameter "newSetting"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 253
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/etao/kakalib/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 255
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0
.end method
