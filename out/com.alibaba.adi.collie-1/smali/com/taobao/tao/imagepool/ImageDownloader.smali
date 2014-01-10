.class public Lcom/taobao/tao/imagepool/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/IImageDownloader;
.implements Ljava/lang/Runnable;
.implements Landroid/taobao/apirequest/AsyncDataListener;


# static fields
.field private static final STATE_DOWNLOADING:I = 0x4

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PROCESS:I = 0x1

.field private static final STATE_USER_STOP:I = 0x3

.field private static sNo:I


# instance fields
.field private httpHandler:Landroid/os/Handler;

.field private httpLooper:Landroid/os/Looper;

.field private mCurThread:Ljava/lang/Thread;

.field private mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

.field private mState:I

.field private m_URL:Ljava/lang/String;

.field private m_b_suspendedReq:Z

.field private m_originURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/taobao/tao/imagepool/ImageDownloader;->sNo:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;Landroid/app/Application;)V
    .locals 5
    .parameter "receiver"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_b_suspendedReq:Z

    .line 252
    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpLooper:Landroid/os/Looper;

    .line 320
    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    .line 384
    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    .line 69
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image_download_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/tao/imagepool/ImageDownloader;->sNo:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/taobao/tao/imagepool/ImageDownloader;->sNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 74
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 75
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/tao/imagepool/ImageDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/taobao/tao/imagepool/ImageDownloader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/tao/imagepool/ImageDownloader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageDownloader;->doDownload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/tao/imagepool/ImageDownloader;)Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/tao/imagepool/ImageDownloader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/tao/imagepool/ImageDownloader;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private doDownload()Z
    .locals 4

    .prologue
    .line 280
    const/4 v1, 0x4

    iput v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 294
    :try_start_0
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/taobao/apirequest/ApiRequestMgr;->downloadImage(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const/4 v1, 0x0

    .line 314
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageDownloader::doDownload() exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    new-instance v1, Landroid/taobao/apirequest/ApiResult;

    const/16 v2, -0x2712

    invoke-direct {v1, v2}, Landroid/taobao/apirequest/ApiResult;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/taobao/tao/imagepool/ImageDownloader;->finishDownload(Landroid/taobao/apirequest/ApiResult;[B)Z

    .line 314
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private finishDownload(Landroid/taobao/apirequest/ApiResult;[B)Z
    .locals 7
    .parameter "res"
    .parameter "buffer"

    .prologue
    const/16 v6, 0x3f7

    const/4 v5, 0x1

    .line 396
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    if-nez v2, :cond_0

    .line 398
    const-string v2, "TaoSdk.ImgPool"

    const-string v3, "ImageDownloader::handleMessage() no default receiver set"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    if-eqz v2, :cond_1

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, originURI:Ljava/lang/String;
    const/4 v0, 0x0

    .line 408
    .local v0, curState:I
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_originURL:Ljava/lang/String;

    .line 410
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 415
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not in downloading state ImageDownloader::finishDownload() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    invoke-interface {v2, v6, p2, v1}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    .line 446
    .end local v0           #curState:I
    .end local v1           #originURI:Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 411
    .restart local v0       #curState:I
    .restart local v1       #originURI:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 424
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 426
    if-eqz p2, :cond_3

    array-length v2, p2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 427
    :cond_3
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download image failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget v2, p1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    sparse-switch v2, :sswitch_data_0

    .line 439
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    invoke-interface {v2, v6, p2, v1}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    goto :goto_0

    .line 436
    :sswitch_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    const/16 v3, 0x3fc

    invoke-interface {v2, v3, p2, v1}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    const/16 v3, 0x3f8

    invoke-interface {v2, v3, p2, v1}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    goto :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_0
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAvailableURL(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, bValid:Z
    if-nez p0, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 246
    :goto_0
    return v1

    .line 228
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_1
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_picPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    .line 234
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_picPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "a.tbcdn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "b.tbcdn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    :cond_2
    const-string v1, "ImageDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pic is not in cdn. url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v1, v0

    .line 246
    goto :goto_0

    .line 239
    :cond_4
    const-string v1, ".webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    const-string v1, "ImageDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url is error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageDownloader;->stop()V

    .line 158
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mCurThread:Ljava/lang/Thread;

    .line 171
    :cond_1
    return-void
.end method

.method public onDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 4
    .parameter "res"

    .prologue
    .line 462
    const/4 v1, -0x1

    iget v2, p1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    if-ne v1, v2, :cond_0

    .line 464
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!image download canceled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object v0, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    check-cast v0, [B

    .line 468
    .local v0, buffer:[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_2

    .line 469
    :cond_1
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!mState STATE_IDLE no data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/taobao/tao/imagepool/ImageDownloader;->finishDownload(Landroid/taobao/apirequest/ApiResult;[B)Z

    .line 475
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->onProgress(Ljava/lang/String;II)V

    .line 454
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 329
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpLooper:Landroid/os/Looper;

    .line 336
    new-instance v1, Lcom/taobao/tao/imagepool/ImageDownloader$1;

    invoke-direct {v1, p0}, Lcom/taobao/tao/imagepool/ImageDownloader$1;-><init>(Lcom/taobao/tao/imagepool/ImageDownloader;)V

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpHandler:Landroid/os/Handler;

    .line 367
    iget-boolean v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_b_suspendedReq:Z

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageDownloader;->startDownload()V

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_b_suspendedReq:Z

    .line 372
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final setURL(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "originURL"
    .parameter "dlURL"
    .parameter "cachePolicy"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/tao/imagepool/ImageDownloader;->stop()V

    .line 193
    monitor-enter p0

    .line 195
    :try_start_0
    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_originURL:Ljava/lang/String;

    .line 198
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDownload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 92
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImageDownloader;->isAvailableURL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mReceiver:Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;

    const/16 v2, 0x3f9

    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v3}, Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;->notify(I[BLjava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 99
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iput v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 105
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->httpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 110
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iput-boolean v2, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_b_suspendedReq:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->mState:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageDownloader;->m_URL:Ljava/lang/String;

    .line 141
    :cond_0
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
