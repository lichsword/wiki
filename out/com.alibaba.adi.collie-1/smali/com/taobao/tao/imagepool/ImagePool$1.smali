.class Lcom/taobao/tao/imagepool/ImagePool$1;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/imagepool/ImagePool;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImagePool;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cacheType:I

.field final synthetic val$save:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImagePool;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$cacheType:I

    iput-object p4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$save:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImagePool$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2076
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$url:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$cacheType:I

    invoke-virtual {v4, v5, v6}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v1

    .line 2078
    .local v1, handler:Lcom/taobao/tao/imagepool/ImageHandler;
    new-instance v3, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2079
    .local v3, td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    if-eqz v3, :cond_0

    .line 2081
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v2

    .line 2082
    .local v2, res:Z
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
    invoke-static {v4}, Lcom/taobao/tao/imagepool/ImagePool;->access$200(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->add(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2084
    if-eqz v2, :cond_0

    .line 2086
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v4, v4, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v5, v4, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 2087
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v4, v4, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v5, v4, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v3}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 2092
    .end local v2           #res:Z
    :cond_0
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v4, v4, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$save:Z

    if-eqz v4, :cond_1

    .line 2093
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->Bitmap2BytesJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 2094
    .local v0, data:[B
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v4, v4, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$url:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$cacheType:I

    invoke-virtual {v4, v5, v0, v6}, Lcom/taobao/tao/imagepool/ImageCache;->saveData(Ljava/lang/String;[BI)Z

    .line 2095
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$url:Ljava/lang/String;

    iget v6, p0, Lcom/taobao/tao/imagepool/ImagePool$1;->val$cacheType:I

    invoke-virtual {v4, v5, v6}, Lcom/taobao/tao/imagepool/ImagePool;->URLtoPersistPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2098
    .end local v0           #data:[B
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
