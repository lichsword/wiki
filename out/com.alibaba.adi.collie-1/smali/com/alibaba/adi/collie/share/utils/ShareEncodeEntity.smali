.class public Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;
.super Ljava/lang/Object;
.source "ShareEncodeEntity.java"


# static fields
.field private static final DEFAULT_HEIGHT:I = 0xa0

.field private static final DEFAULT_WIDTH:I = 0xa0


# instance fields
.field private centerTwoDimensionCodeBitmap:Landroid/graphics/Bitmap;

.field private mContent:Ljava/lang/String;

.field private mHeight:I

.field private mImgPath:Ljava/lang/String;

.field private mWidth:I

.field private twoDimensionCodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "contents"

    .prologue
    const/16 v0, 0xa0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mContent:Ljava/lang/String;

    .line 58
    iput v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mWidth:I

    .line 59
    iput v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mHeight:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "contents"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mContent:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mWidth:I

    .line 79
    iput p3, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mHeight:I

    .line 80
    return-void
.end method

.method private convertToBitmap(Lcom/google/zxing/common/ByteMatrix;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitMatrix"

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v3

    .line 165
    .local v3, width:I
    invoke-virtual {p1}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v7

    .line 166
    .local v7, height:I
    invoke-virtual {p1}, Lcom/google/zxing/common/ByteMatrix;->getArray()[[B

    move-result-object v8

    .line 168
    .local v8, array:[[B
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 169
    .local v1, pixels:[I
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    if-lt v11, v7, :cond_0

    .line 181
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 182
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 184
    return-object v0

    .line 170
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v10, 0x0

    .local v10, x:I
    :goto_1
    if-lt v10, v3, :cond_1

    .line 169
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 171
    :cond_1
    aget-object v4, v8, v11

    aget-byte v4, v4, v10

    and-int/lit16 v9, v4, 0xff

    .line 174
    .local v9, grey:I
    mul-int v4, v11, v3

    add-int/2addr v4, v10

    const/high16 v5, -0x100

    const v6, 0x10101

    mul-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v1, v4

    .line 175
    mul-int v4, v11, v3

    add-int/2addr v4, v10

    aget v4, v1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 176
    mul-int v4, v11, v3

    add-int/2addr v4, v10

    aput v2, v1, v4

    .line 170
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "watermark"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 221
    if-nez p1, :cond_0

    move-object v2, v6

    .line 242
    :goto_0
    return-object v2

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 225
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 226
    .local v1, h:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 227
    .local v5, ww:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 229
    .local v4, wh:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    .local v2, newb:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v0, cv:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0, p2, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    const/16 v6, 0x1f

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private encode(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .parameter "contents"
    .parameter "width"
    .parameter "height"
    .parameter "imgPath"

    .prologue
    const/4 v8, 0x0

    .line 115
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 117
    .local v5, hints:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "GBK"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    .line 124
    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 125
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/ByteMatrix;

    move-result-object v6

    .line 127
    .local v6, bitMatrix:Lcom/google/zxing/common/ByteMatrix;
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->centerTwoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->convertToBitmap(Lcom/google/zxing/common/ByteMatrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->centerTwoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v6           #bitMatrix:Lcom/google/zxing/common/ByteMatrix;
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    move v0, v8

    .line 153
    :goto_1
    return v0

    .line 132
    .restart local v6       #bitMatrix:Lcom/google/zxing/common/ByteMatrix;
    :cond_0
    :try_start_1
    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->convertToBitmap(Lcom/google/zxing/common/ByteMatrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 136
    .end local v6           #bitMatrix:Lcom/google/zxing/common/ByteMatrix;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 145
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p4}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    const/4 v0, 0x1

    goto :goto_1

    .line 147
    :catch_1
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v0, v8

    .line 149
    goto :goto_1
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .parameter "bm"
    .parameter "imgPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, fOut:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1           #fOut:Ljava/io/FileOutputStream;
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 210
    return-void
.end method

.method private zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "destWidth"
    .parameter "destHeigth"

    .prologue
    const/4 v1, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 v7, 0x0

    .line 265
    :goto_0
    return-object v7

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 258
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 260
    .local v4, h:I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 261
    .local v9, scaleWidth:F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 262
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 264
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 265
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public execute()Z
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mContent:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mWidth:I

    iget v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mHeight:I

    iget-object v3, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mImgPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->encode(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTwoDimensionCodeBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->twoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCenterTwoDimensionCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "centerBitmp"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->centerTwoDimensionCodeBitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "imgPath"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->mImgPath:Ljava/lang/String;

    .line 84
    return-void
.end method
