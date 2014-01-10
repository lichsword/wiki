.class Lcom/ut/share/a/d;
.super Ljava/lang/Object;
.source "ShareWeixinUtils.java"


# direct methods
.method static a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "path"
    .parameter "height"
    .parameter "width"
    .parameter "crop"

    .prologue
    .line 48
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    :try_start_0
    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 53
    .local v13, tmp:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 54
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v13, 0x0

    .line 58
    :cond_0
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 59
    .local v4, beY:D
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 60
    .local v2, beX:D
    if-eqz p3, :cond_4

    cmpl-double v14, v4, v2

    if-lez v14, :cond_3

    move-wide v14, v2

    :goto_0
    double-to-int v14, v14

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 62
    const/4 v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    :cond_1
    :goto_1
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v14, v15

    const v15, 0x2a3000

    if-le v14, v15, :cond_6

    .line 67
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 115
    .end local v2           #beX:D
    .end local v4           #beY:D
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 116
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const/4 v11, 0x0

    .line 119
    const/4 v6, 0x0

    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_2
    return-object v6

    .restart local v2       #beX:D
    .restart local v4       #beY:D
    .restart local v13       #tmp:Landroid/graphics/Bitmap;
    :cond_3
    move-wide v14, v4

    .line 60
    goto :goto_0

    :cond_4
    cmpg-double v14, v4, v2

    if-gez v14, :cond_5

    move-wide v14, v2

    goto :goto_0

    :cond_5
    move-wide v14, v4

    goto :goto_0

    .line 70
    :cond_6
    move/from16 v9, p1

    .line 71
    .local v9, newHeight:I
    move/from16 v10, p2

    .line 72
    .local v10, newWidth:I
    if-eqz p3, :cond_8

    .line 73
    cmpl-double v14, v4, v2

    if-lez v14, :cond_7

    .line 74
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 89
    :goto_3
    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 92
    .local v6, bm:Landroid/graphics/Bitmap;
    if-nez v6, :cond_a

    .line 93
    const/4 v6, 0x0

    goto :goto_2

    .line 77
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_7
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto :goto_3

    .line 81
    :cond_8
    cmpg-double v14, v4, v2

    if-gez v14, :cond_9

    .line 82
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    goto :goto_3

    .line 85
    :cond_9
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto :goto_3

    .line 96
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v14, 0x1

    invoke-static {v6, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 97
    .local v12, scale:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_b

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    move-object v6, v12

    .line 102
    :cond_b
    if-eqz p3, :cond_2

    .line 103
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v14, p2

    shr-int/lit8 v14, v14, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v15, p1

    shr-int/lit8 v15, v15, 0x1

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v14, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 105
    .local v7, cropped:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    move-object v6, v7

    goto/16 :goto_2
.end method

.method static ao(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 42
    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
