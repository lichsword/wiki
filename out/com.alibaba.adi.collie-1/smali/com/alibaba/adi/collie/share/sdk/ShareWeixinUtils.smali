.class public Lcom/alibaba/adi/collie/share/sdk/ShareWeixinUtils;
.super Ljava/lang/Object;
.source "ShareWeixinUtils.java"


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000

.field public static final Type_NONE:I = 0x1

.field public static final Type_Session:I = 0x1

.field public static final Type_Timeline:I = 0x2

.field public static final Type_Unknown:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
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

    if-gt v14, v15, :cond_6

    .line 70
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
    :goto_2
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

    .line 123
    .end local v2           #beX:D
    .end local v4           #beY:D
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v9           #newHeight:I
    .end local v10           #newWidth:I
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    :goto_3
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

    .line 67
    :cond_6
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 119
    .end local v2           #beX:D
    .end local v4           #beY:D
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 120
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const/4 v11, 0x0

    .line 123
    const/4 v6, 0x0

    goto :goto_3

    .line 77
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #beX:D
    .restart local v4       #beY:D
    .restart local v9       #newHeight:I
    .restart local v10       #newWidth:I
    .restart local v13       #tmp:Landroid/graphics/Bitmap;
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

    .line 79
    goto :goto_2

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

    .line 83
    goto :goto_2

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

    goto :goto_2

    .line 96
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v14, 0x1

    invoke-static {v6, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 97
    .local v12, scale:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_c

    .line 98
    if-eq v6, v12, :cond_b

    .line 99
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_b
    move-object v6, v12

    .line 104
    :cond_c
    if-eqz p3, :cond_2

    .line 105
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v14, p2

    shr-int/lit8 v14, v14, 0x1

    .line 106
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v15, p1

    shr-int/lit8 v15, v15, 0x1

    .line 105
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v14, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 107
    .local v7, cropped:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 111
    if-eq v6, v7, :cond_d

    .line 112
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_d
    move-object v6, v7

    goto/16 :goto_3
.end method


# virtual methods
.method public isSupportType(Ljava/lang/String;)I
    .locals 8
    .parameter "version"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_2

    :cond_0
    move v4, v6

    .line 37
    :cond_1
    :goto_0
    return v4

    .line 21
    :cond_2
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, codeArray:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v7, v0

    if-ge v7, v5, :cond_4

    :cond_3
    move v4, v6

    .line 23
    goto :goto_0

    .line 26
    :cond_4
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    .local v2, mainCode:I
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 28
    .local v3, minCode:I
    const/4 v6, 0x4

    if-lt v2, v6, :cond_1

    .line 31
    if-lt v3, v5, :cond_1

    move v4, v5

    .line 34
    goto :goto_0

    .line 36
    .end local v2           #mainCode:I
    .end local v3           #minCode:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v4, v6

    .line 37
    goto :goto_0
.end method
