.class Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapStatics"
.end annotation


# instance fields
.field createNum:I

.field createSize:I

.field destroyNum:I

.field destroySize:I

.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImagePool;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImagePool;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 98
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    .line 99
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 100
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    return-void
.end method


# virtual methods
.method report(Ljava/lang/String;)V
    .locals 4
    .parameter "desc"

    .prologue
    .line 105
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bitmap stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  created:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroyNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bitmap stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  created size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , destroySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " memory occupied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    iget v3, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->destroySize:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
