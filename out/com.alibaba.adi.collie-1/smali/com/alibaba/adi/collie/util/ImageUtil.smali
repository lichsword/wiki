.class public Lcom/alibaba/adi/collie/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;,
        Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field public static final QUALITY_GOOD:I = 0x5a

.field public static final QUALITY_OK:I = 0x3c

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/adi/collie/util/ImageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/ImageUtil;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 176
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 177
    .local v0, height:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 178
    .local v3, width:I
    const/4 v2, 0x1

    .line 180
    .local v2, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 184
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 185
    .local v1, heightRatio:I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 191
    .local v4, widthRatio:I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 194
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_2
    move v2, v4

    .line 191
    goto :goto_0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 153
    const-string v15, "msg"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "ruibo: createScaledBitmap "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 155
    .local v14, srcWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 156
    .local v13, srcHeight:I
    move/from16 v0, p1

    int-to-float v15, v0

    int-to-float v0, v14

    move/from16 v16, v0

    div-float v9, v15, v16

    .line 157
    .local v9, scaleX:F
    move/from16 v0, p2

    int-to-float v15, v0

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 158
    .local v10, scaleY:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 159
    .local v8, scale:F
    int-to-float v15, v14

    mul-float v12, v8, v15

    .line 160
    .local v12, scaledWidth:F
    int-to-float v15, v13

    mul-float v11, v8, v15

    .line 161
    .local v11, scaledHeight:F
    move/from16 v0, p1

    int-to-float v15, v0

    sub-float/2addr v15, v12

    const/high16 v16, 0x4000

    div-float v3, v15, v16

    .line 162
    .local v3, dx:F
    move/from16 v0, p2

    int-to-float v15, v0

    sub-float/2addr v15, v11

    const/high16 v16, 0x4000

    div-float v4, v15, v16

    .line 163
    .local v4, dy:F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 164
    .local v7, ret:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 167
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 168
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 171
    return-object v7
.end method

.method public static decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "am"
    .parameter "assetFile"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    .line 126
    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 129
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v2, v4, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-static {p4, p2, p3}, Lcom/alibaba/adi/collie/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    .line 133
    goto :goto_0

    .line 146
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 147
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    .line 148
    goto :goto_0
.end method

.method public static decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "options"

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    invoke-static {p0, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 115
    invoke-static {p3, p1, p2}, Lcom/alibaba/adi/collie/util/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    invoke-static {p0, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "saveFile"

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0}, Lcom/alibaba/adi/collie/util/ImageUtil;->downloadImage(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static downloadImage(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"
    .parameter "saveFile"
    .parameter "compressFormat"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 54
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 56
    :cond_1
    new-instance v2, Lcom/alibaba/adi/collie/util/ImageUtil$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/util/ImageUtil$1;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, connectorHelper:Landroid/taobao/apirequest/ConnectorHelper;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 78
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, retObj:Ljava/lang/Object;
    if-eqz v4, :cond_3

    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    move-object v1, v4

    .line 80
    check-cast v1, Landroid/graphics/Bitmap;

    .line 82
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    const/16 v7, 0x5a

    .line 83
    invoke-static {v1, v5, v6, v7, p2}, Lcom/alibaba/adi/collie/util/ImageUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object v1

    .line 88
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static gaussianBlur(Landroid/graphics/Bitmap;II)V
    .locals 16
    .parameter "bitmap"
    .parameter "radius"
    .parameter "darkLevel"

    .prologue
    .line 368
    new-instance v5, Lcom/alibaba/adi/collie/util/PerfUtil;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "gaussian blur: radius = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>(Ljava/lang/String;)V

    .line 369
    .local v5, perf:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 370
    .local v9, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 371
    .local v2, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-static {v9, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 372
    .local v7, tmp:Landroid/graphics/Bitmap;
    new-instance v8, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;

    move/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;-><init>(I)V

    .line 373
    .local v8, total:Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;
    const-string v12, "prepare done"

    invoke-virtual {v5, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 376
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    if-lt v11, v2, :cond_0

    .line 391
    const-string v12, "blur horizontal complete"

    invoke-virtual {v5, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 393
    const/4 v10, 0x0

    .local v10, x:I
    :goto_1
    if-lt v10, v9, :cond_5

    .line 408
    const-string v12, "gaussian blur complete"

    invoke-virtual {v5, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 409
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v1, canvas:Landroid/graphics/Canvas;
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0xff

    div-int/lit8 v12, v12, 0x64

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 411
    const-string v12, "dark complete"

    invoke-virtual {v5, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 413
    return-void

    .line 377
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v10           #x:I
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->reset()V

    .line 378
    move/from16 v0, p1

    neg-int v3, v0

    .local v3, kx:I
    :goto_2
    move/from16 v0, p1

    if-le v3, v0, :cond_1

    .line 382
    const/4 v12, 0x0

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->toColor()I

    move-result v13

    invoke-virtual {v7, v12, v11, v13}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 383
    const/4 v10, 0x1

    .restart local v10       #x:I
    :goto_3
    if-lt v10, v9, :cond_3

    .line 376
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 379
    .end local v10           #x:I
    :cond_1
    if-gez v3, :cond_2

    const/4 v6, 0x0

    .line 380
    .local v6, t:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->add(I)V

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v6           #t:I
    :cond_2
    move v6, v3

    .line 379
    goto :goto_4

    .line 384
    .restart local v10       #x:I
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->remove()V

    .line 385
    add-int v6, v10, p1

    .line 386
    .restart local v6       #t:I
    if-lt v6, v9, :cond_4

    add-int/lit8 v6, v9, -0x1

    .line 387
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->add(I)V

    .line 388
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->toColor()I

    move-result v12

    invoke-virtual {v7, v10, v11, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 383
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 394
    .end local v3           #kx:I
    .end local v6           #t:I
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->reset()V

    .line 395
    move/from16 v0, p1

    neg-int v4, v0

    .local v4, ky:I
    :goto_5
    move/from16 v0, p1

    if-le v4, v0, :cond_6

    .line 399
    const/4 v12, 0x0

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->toColor()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 400
    const/4 v11, 0x1

    :goto_6
    if-lt v11, v2, :cond_8

    .line 393
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 396
    :cond_6
    if-gez v4, :cond_7

    const/4 v6, 0x0

    .line 397
    .restart local v6       #t:I
    :goto_7
    invoke-virtual {v7, v10, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->add(I)V

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v6           #t:I
    :cond_7
    move v6, v4

    .line 396
    goto :goto_7

    .line 401
    :cond_8
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->remove()V

    .line 402
    add-int v6, v11, p1

    .line 403
    .restart local v6       #t:I
    if-lt v6, v2, :cond_9

    add-int/lit8 v6, v2, -0x1

    .line 404
    :cond_9
    invoke-virtual {v7, v10, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->add(I)V

    .line 405
    invoke-virtual {v8}, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;->toColor()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 400
    add-int/lit8 v11, v11, 0x1

    goto :goto_6
.end method

.method public static optimizedBoxBlur(Landroid/graphics/Bitmap;II)V
    .locals 13
    .parameter "bitmap"
    .parameter "radius"
    .parameter "darkLevel"

    .prologue
    const/4 v11, 0x0

    .line 276
    new-instance v4, Lcom/alibaba/adi/collie/util/PerfUtil;

    const-string v12, "optimizedBoxBlur"

    invoke-direct {v4, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>(Ljava/lang/String;)V

    .line 277
    .local v4, perf:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 278
    .local v8, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 279
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-static {v8, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 280
    .local v6, tmp:Landroid/graphics/Bitmap;
    new-instance v7, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;

    invoke-direct {v7}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;-><init>()V

    .line 283
    .local v7, total:Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    if-lt v10, v1, :cond_0

    .line 300
    const-string v12, "blur horizontal complete"

    invoke-virtual {v4, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 302
    const/4 v9, 0x0

    .local v9, x:I
    :goto_1
    if-lt v9, v8, :cond_6

    .line 319
    const-string v12, "blur vertical complete"

    invoke-virtual {v4, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 321
    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    const-string v12, "blur complete"

    invoke-virtual {v4, v12}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 323
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v0, canvas:Landroid/graphics/Canvas;
    mul-int/lit16 v12, p2, 0xff

    div-int/lit8 v12, v12, 0x64

    invoke-virtual {v0, v12, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 325
    const-string v11, "dark complete"

    invoke-virtual {v4, v11}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 327
    return-void

    .line 284
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v9           #x:I
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->reset()V

    .line 285
    neg-int v2, p1

    .local v2, kx:I
    :goto_2
    if-le v2, p1, :cond_1

    .line 289
    mul-int/lit8 v12, p1, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->toDivInt(I)I

    move-result v12

    invoke-virtual {v6, v11, v10, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 290
    const/4 v9, 0x1

    .restart local v9       #x:I
    :goto_3
    if-lt v9, v8, :cond_3

    .line 283
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 286
    .end local v9           #x:I
    :cond_1
    if-gez v2, :cond_2

    move v5, v11

    .line 287
    .local v5, t:I
    :goto_4
    invoke-virtual {p0, v5, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->plus(I)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v5           #t:I
    :cond_2
    move v5, v2

    .line 286
    goto :goto_4

    .line 291
    .restart local v9       #x:I
    :cond_3
    sub-int v12, v9, p1

    add-int/lit8 v5, v12, -0x1

    .line 292
    .restart local v5       #t:I
    if-gez v5, :cond_4

    move v5, v11

    .line 293
    :cond_4
    invoke-virtual {p0, v5, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->minus(I)V

    .line 294
    add-int v5, v9, p1

    .line 295
    if-lt v5, v8, :cond_5

    add-int/lit8 v5, v8, -0x1

    .line 296
    :cond_5
    invoke-virtual {p0, v5, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->plus(I)V

    .line 297
    mul-int/lit8 v12, p1, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->toDivInt(I)I

    move-result v12

    invoke-virtual {v6, v9, v10, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 303
    .end local v2           #kx:I
    .end local v5           #t:I
    :cond_6
    invoke-virtual {v7}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->reset()V

    .line 304
    neg-int v3, p1

    .local v3, ky:I
    :goto_5
    if-le v3, p1, :cond_7

    .line 308
    mul-int/lit8 v12, p1, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->toDivInt(I)I

    move-result v12

    invoke-virtual {p0, v9, v11, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 309
    const/4 v10, 0x1

    :goto_6
    if-lt v10, v1, :cond_9

    .line 302
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 305
    :cond_7
    if-gez v3, :cond_8

    move v5, v11

    .line 306
    .restart local v5       #t:I
    :goto_7
    invoke-virtual {v6, v9, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->plus(I)V

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v5           #t:I
    :cond_8
    move v5, v3

    .line 305
    goto :goto_7

    .line 310
    :cond_9
    sub-int v12, v10, p1

    add-int/lit8 v5, v12, -0x1

    .line 311
    .restart local v5       #t:I
    if-gez v5, :cond_a

    move v5, v11

    .line 312
    :cond_a
    invoke-virtual {v6, v9, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->minus(I)V

    .line 313
    add-int v5, v10, p1

    .line 314
    if-lt v5, v1, :cond_b

    add-int/lit8 v5, v1, -0x1

    .line 315
    :cond_b
    invoke-virtual {v6, v9, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->plus(I)V

    .line 316
    mul-int/lit8 v12, p1, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Lcom/alibaba/adi/collie/util/ImageUtil$MyPixel;->toDivInt(I)I

    move-result v12

    invoke-virtual {p0, v9, v10, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 309
    add-int/lit8 v10, v10, 0x1

    goto :goto_6
.end method

.method public static optionDefault()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method public static optionSave()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 100
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 101
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 102
    return-object v0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    goto :goto_0
.end method

.method public static saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "bmp"
    .parameter "dir"
    .parameter "fileName"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/adi/collie/util/ImageUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 10
    .parameter "bmp"
    .parameter "dir"
    .parameter "fileName"
    .parameter "quality"
    .parameter "compressFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 228
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 230
    :cond_1
    if-nez p4, :cond_2

    .line 231
    sget-object p4, Lcom/alibaba/adi/collie/util/ImageUtil;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 234
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v6, saveFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, path:Ljava/lang/String;
    const-string v7, "Adi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "saving cropped bitmap file to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, fOut:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 239
    .local v0, bfOut:Ljava/io/BufferedOutputStream;
    if-gez p3, :cond_3

    .line 240
    const/16 p3, 0x5a

    .line 244
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v3           #fOut:Ljava/io/OutputStream;
    .local v4, fOut:Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 246
    .end local v0           #bfOut:Ljava/io/BufferedOutputStream;
    .local v1, bfOut:Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {p0, p4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 257
    if-eqz v1, :cond_4

    .line 258
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 261
    :cond_4
    return-object v5

    .line 248
    .end local v1           #bfOut:Ljava/io/BufferedOutputStream;
    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v0       #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 250
    const-string v7, "Adi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unable to open file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 257
    :goto_1
    if-eqz v0, :cond_5

    .line 258
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 260
    :cond_5
    throw v7

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    const-string v7, "Adi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed to save image to file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_1

    .end local v0           #bfOut:Ljava/io/BufferedOutputStream;
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v1       #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v0       #bfOut:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_1

    .line 252
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_2

    .end local v0           #bfOut:Ljava/io/BufferedOutputStream;
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v1       #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v0       #bfOut:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_2

    .line 248
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_0

    .end local v0           #bfOut:Ljava/io/BufferedOutputStream;
    .end local v3           #fOut:Ljava/io/OutputStream;
    .restart local v1       #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v4       #fOut:Ljava/io/OutputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #bfOut:Ljava/io/BufferedOutputStream;
    .restart local v0       #bfOut:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static screenShot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "srcView"

    .prologue
    const/4 v5, 0x0

    .line 488
    if-nez p0, :cond_0

    move-object v1, v5

    .line 505
    :goto_0
    return-object v1

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 493
    .local v4, srcWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 494
    .local v3, srcHeight:I
    const/4 v1, 0x0

    .line 496
    .local v1, srcBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 502
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 503
    .local v2, srcCanvas:Landroid/graphics/Canvas;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 504
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 497
    .end local v2           #srcCanvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v5

    .line 498
    goto :goto_0

    .line 499
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v5

    .line 500
    goto :goto_0
.end method
