.class public Lcom/taobao/tao/imagepool/utility/TBDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TBDrawable.java"


# instance fields
.field private m_ih:Lcom/taobao/tao/imagepool/ImageHandler;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bp"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bitmapSize()I
    .locals 4

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, size:I
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, bp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 89
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    :cond_1
    move v2, v1

    .line 89
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 35
    :try_start_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getImageHandler()Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/tao/imagepool/utility/TBDrawable;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    return-object v0
.end method

.method public isRecycled()Z
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, bp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public recycle()Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, bp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V
    .locals 0
    .parameter "ih"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/taobao/tao/imagepool/utility/TBDrawable;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 97
    return-void
.end method
