.class Lcom/taobao/tao/imagepool/ImageDownloader$1;
.super Landroid/taobao/util/SafeHandler;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/imagepool/ImageDownloader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImageDownloader;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImageDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    invoke-direct {p0}, Landroid/taobao/util/SafeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$000(Lcom/taobao/tao/imagepool/ImageDownloader;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #calls: Lcom/taobao/tao/imagepool/ImageDownloader;->doDownload()Z
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$100(Lcom/taobao/tao/imagepool/ImageDownloader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #setter for: Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I
    invoke-static {v0, v2}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$002(Lcom/taobao/tao/imagepool/ImageDownloader;I)I

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$200(Lcom/taobao/tao/imagepool/ImageDownloader;)Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$200(Lcom/taobao/tao/imagepool/ImageDownloader;)Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    move-result-object v0

    const/16 v1, 0x3fa

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$300(Lcom/taobao/tao/imagepool/ImageDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    .line 356
    :cond_2
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the download is already stoped url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$300(Lcom/taobao/tao/imagepool/ImageDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #setter for: Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I
    invoke-static {v0, v2}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$002(Lcom/taobao/tao/imagepool/ImageDownloader;I)I

    .line 361
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader$1;->this$0:Lcom/taobao/tao/imagepool/ImageDownloader;

    #getter for: Lcom/taobao/tao/imagepool/ImageDownloader;->httpLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->access$400(Lcom/taobao/tao/imagepool/ImageDownloader;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x3f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
