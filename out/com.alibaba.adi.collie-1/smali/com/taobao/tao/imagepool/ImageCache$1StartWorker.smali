.class Lcom/taobao/tao/imagepool/ImageCache$1StartWorker;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/imagepool/ImageCache;->_asyncInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImageCache;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImageCache;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageCache$1StartWorker;->this$0:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache$1StartWorker;->this$0:Lcom/taobao/tao/imagepool/ImageCache;

    #calls: Lcom/taobao/tao/imagepool/ImageCache;->_Init()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImageCache;->access$000(Lcom/taobao/tao/imagepool/ImageCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
