.class public Lcom/taobao/tao/imagepool/utility/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2BytesJpeg(Landroid/graphics/Bitmap;)[B
    .locals 6
    .parameter "bm"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, a:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 70
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :cond_1
    :goto_1
    return-object v0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, v:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v3           #v:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 81
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static Bitmap2BytesPng(Landroid/graphics/Bitmap;)[B
    .locals 6
    .parameter "bm"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, a:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 93
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :cond_1
    :goto_1
    return-object v0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, v:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v3           #v:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 104
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "b"

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 36
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 38
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 39
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    throw v3

    .line 48
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static URI2Bimap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 61
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static bitmapToFixedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p0, :cond_0

    .line 176
    const/4 v7, 0x0

    .line 191
    :goto_0
    return-object v7

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 180
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 183
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 184
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 186
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 187
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 190
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 191
    .local v7, newbm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static bitmapToScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v7, 0x0

    .line 170
    :goto_0
    return-object v7

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 159
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 162
    .local v4, height:I
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 163
    .local v9, scaleWidth:F
    int-to-float v0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 165
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 169
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 170
    .local v7, newbm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    return-object v0

    .line 140
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getPercentImage(Landroid/graphics/drawable/Drawable;IIIFI)Landroid/graphics/drawable/Drawable;
    .locals 19
    .parameter "bgDrawable"
    .parameter "fontSize"
    .parameter "backColor"
    .parameter "foreColor"
    .parameter "density"
    .parameter "percent"

    .prologue
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, url:Ljava/lang/String;
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/taobao/tao/imagepool/ImagePool;->getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v12

    .line 216
    .local v12, handler:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v12, :cond_0

    .line 217
    invoke-virtual {v12}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 266
    :goto_0
    return-object v2

    .line 219
    :cond_0
    move-object/from16 v8, p0

    .line 220
    .local v8, d:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 221
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 224
    .local v18, width:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 225
    .local v13, height:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 226
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v1, canvas:Landroid/graphics/Canvas;
    mul-int v2, v13, p5

    div-int/lit8 v11, v2, 0x64

    .line 229
    .local v11, fill:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 231
    .local v6, p:Landroid/graphics/Paint;
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/4 v2, 0x0

    sub-int v3, v13, v11

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    const v2, -0x666667

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, str:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v14, v2

    .line 242
    .local v14, offset:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v3, v18, 0x2

    sub-int/2addr v3, v14

    int-to-float v3, v3

    int-to-float v4, v13

    const/high16 v5, 0x4140

    mul-float v5, v5, p4

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 245
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    invoke-static {v7}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 250
    .local v9, dest:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0, v3, v4}, Lcom/taobao/tao/imagepool/ImagePool;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/util/concurrent/Future;

    move-result-object v15

    .line 252
    .local v15, path:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v15}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :goto_1
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/taobao/tao/imagepool/ImagePool;->getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v12

    .line 261
    if-eqz v12, :cond_2

    .line 262
    invoke-virtual {v12}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    const/high16 v3, 0x4320

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->setTargetDensity(I)V

    .line 263
    invoke-virtual {v12}, Lcom/taobao/tao/imagepool/ImageHandler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    .line 253
    :catch_0
    move-exception v10

    .line 255
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 256
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v10

    .line 258
    .local v10, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v10}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v10           #e:Ljava/util/concurrent/ExecutionException;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 111
    const/high16 v0, 0x40c0

    invoke-static {p0, v0}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "roundPx"

    .prologue
    const/4 v9, 0x0

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 135
    :goto_0
    return-object v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 122
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 128
    .local v5, rectF:Landroid/graphics/RectF;
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static isJpeg([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 196
    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, -0x28

    if-ne v2, v3, :cond_0

    .line 199
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPng([B)Z
    .locals 5
    .parameter "data"

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 205
    aget-byte v2, p0, v1

    const/16 v3, -0x77

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    .line 209
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
