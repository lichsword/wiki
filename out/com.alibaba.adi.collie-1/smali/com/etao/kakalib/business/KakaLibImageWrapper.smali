.class public Lcom/etao/kakalib/business/KakaLibImageWrapper;
.super Ljava/lang/Object;
.source "KakaLibImageWrapper.java"


# instance fields
.field private bitmapData:Landroid/graphics/Bitmap;

.field private height:I

.field private imageFormat:I

.field private imagePath:Ljava/lang/String;

.field private rawData:[B

.field private width:I

.field private yuvImageData:Landroid/graphics/YuvImage;

.field private yuvImageDataFromRawBytes:Landroid/graphics/YuvImage;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->bitmapData:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "imagePath"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imagePath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0
    .parameter "rawData"
    .parameter "width"
    .parameter "height"
    .parameter "imageFormat"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->rawData:[B

    .line 22
    iput p2, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->width:I

    .line 23
    iput p3, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->height:I

    .line 24
    iput p4, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imageFormat:I

    .line 25
    return-void
.end method


# virtual methods
.method public getBitmapData()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->bitmapData:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->height:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imageFormat:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->rawData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->width:I

    return v0
.end method

.method public getYuvImageData()Landroid/graphics/YuvImage;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->yuvImageData:Landroid/graphics/YuvImage;

    return-object v0
.end method

.method public getYuvImageFromByteDatas()Landroid/graphics/YuvImage;
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->yuvImageDataFromRawBytes:Landroid/graphics/YuvImage;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->rawData:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imageFormat:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->height:I

    if-lez v0, :cond_0

    .line 70
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->rawData:[B

    iget v2, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imageFormat:I

    .line 71
    iget v3, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->width:I

    .line 72
    iget v4, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->height:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 70
    iput-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->yuvImageDataFromRawBytes:Landroid/graphics/YuvImage;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->yuvImageDataFromRawBytes:Landroid/graphics/YuvImage;

    return-object v0
.end method

.method public setBitmapData(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmapData"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->bitmapData:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 56
    iput p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->height:I

    .line 57
    return-void
.end method

.method public setImageFormat(I)V
    .locals 0
    .parameter "imageFormat"

    .prologue
    .line 64
    iput p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imageFormat:I

    .line 65
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "imagePath"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->imagePath:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRawData([B)V
    .locals 0
    .parameter "rawData"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->rawData:[B

    .line 41
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 48
    iput p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->width:I

    .line 49
    return-void
.end method

.method public setYuvImageData(Landroid/graphics/YuvImage;)V
    .locals 0
    .parameter "yuvImageData"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etao/kakalib/business/KakaLibImageWrapper;->yuvImageData:Landroid/graphics/YuvImage;

    .line 80
    return-void
.end method
