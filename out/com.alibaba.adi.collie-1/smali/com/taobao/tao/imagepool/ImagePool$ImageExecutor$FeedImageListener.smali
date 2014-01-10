.class Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedImageListener"
.end annotation


# instance fields
.field m_group:Lcom/taobao/tao/imagepool/ImageGroup;

.field m_index:I

.field final synthetic this$1:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 0
    .parameter
    .parameter "ih"
    .parameter "ig"
    .parameter "index"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;->this$1:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p3, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;->m_group:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 280
    iput p4, p0, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor$FeedImageListener;->m_index:I

    .line 282
    return-void
.end method
