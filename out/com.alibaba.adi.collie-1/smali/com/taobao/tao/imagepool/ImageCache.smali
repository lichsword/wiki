.class public Lcom/taobao/tao/imagepool/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field public static final CACHE_CATEGORY_MRU:I = 0x2

.field public static final CACHE_CATEGORY_NONE:I = 0x0

.field public static final CACHE_CATEGORY_NOREPLACE_PERSIST:I = 0x3

.field public static final CACHE_CATEGORY_PERSIST:I = 0x1

.field public static final CACHE_CATEGORY_PERSIST_AUTOREPLACE:I = 0x4


# instance fields
.field private MRU_CACHE_FOLDER_NAME:Ljava/lang/String;

.field private NOREPLACE_PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

.field private PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

.field private TEMP_CACHE_FILE_NAME:Ljava/lang/String;

.field private m_bInit:Z

.field private m_cache_MRU:Landroid/taobao/filecache/FileDir;

.field private m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

.field private m_cache_persist:Landroid/taobao/filecache/FileDir;

.field private m_context:Landroid/content/Context;

.field private m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

.field private m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "tempImage.dat"

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->TEMP_CACHE_FILE_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "mru_images"

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->MRU_CACHE_FOLDER_NAME:Ljava/lang/String;

    .line 56
    const-string v0, "persist_images"

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    .line 57
    const-string v0, "nr_persist_images"

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->NOREPLACE_PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_bInit:Z

    .line 152
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    .line 153
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageCache;->_asyncInit()V

    .line 154
    return-void
.end method

.method private URLtoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "URL"

    .prologue
    .line 418
    if-nez p1, :cond_1

    .line 419
    const/4 p1, 0x0

    .line 425
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 421
    .restart local p1
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 422
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0
.end method

.method private _Init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_bInit:Z

    .line 106
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->TEMP_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/taobao/filecache/FileCache;->getTmpCacheInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/HighSpeedTmpCache;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v0}, Landroid/taobao/filecache/HighSpeedTmpCache;->init()Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->MRU_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0, v2, v2}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0, v2, v2}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 132
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/taobao/filecache/FileDir;->setCapacity(I)V

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-nez v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->NOREPLACE_PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0, v2, v2}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 146
    :cond_7
    return-void
.end method

.method private _asyncInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->TEMP_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/taobao/filecache/FileCache;->getTmpCacheInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/HighSpeedTmpCache;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    .line 71
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->MRU_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    .line 72
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    .line 73
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->NOREPLACE_PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/taobao/filecache/FileCache;->getFileDirInstance(Ljava/lang/String;Z)Landroid/taobao/filecache/FileDir;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    .line 75
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v3}, Landroid/taobao/filecache/FileDir;->enableNoSpaceClear(Z)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v3}, Landroid/taobao/filecache/FileDir;->enableNoSpaceClear(Z)V

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/tao/imagepool/ImageCache$1StartWorker;

    invoke-direct {v1, p0}, Lcom/taobao/tao/imagepool/ImageCache$1StartWorker;-><init>(Lcom/taobao/tao/imagepool/ImageCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/tao/imagepool/ImageCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImageCache;->_Init()V

    return-void
.end method


# virtual methods
.method URLtoPersistPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "URL"
    .parameter "cache_type"

    .prologue
    .line 435
    const-string v0, ""

    .line 436
    .local v0, fullpath:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 458
    :cond_0
    :goto_0
    return-object v0

    .line 438
    :pswitch_0
    const-string v1, "TaoSdk.ImgPool"

    const-string v2, "not support for CACHE_CATEGORY_NONE"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :pswitch_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :pswitch_2
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :pswitch_3
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public clearCache(I)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v0}, Landroid/taobao/filecache/HighSpeedTmpCache;->clear()Z

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileDir;->clear()Z

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileDir;->clear()Z

    goto :goto_0

    .line 398
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v0}, Landroid/taobao/filecache/FileDir;->clear()Z

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public deleteFile(Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, name:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v2, v2}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 348
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v0}, Landroid/taobao/filecache/FileDir;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v2, v2}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 355
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v1, v0}, Landroid/taobao/filecache/FileDir;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v1}, Landroid/taobao/filecache/HighSpeedTmpCache;->init()Z

    .line 363
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v1, v0}, Landroid/taobao/filecache/HighSpeedTmpCache;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawalbe(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .locals 7
    .parameter "url"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-boolean v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_bInit:Z

    if-nez v4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v3

    .line 191
    :cond_1
    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 196
    .local v0, bs:[B
    packed-switch p2, :pswitch_data_0

    .line 256
    :cond_2
    :goto_1
    invoke-static {v0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_createTBDrawable([BLjava/lang/String;)Lcom/taobao/tao/imagepool/utility/TBDrawable;

    move-result-object v3

    .line 257
    .local v3, ret:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 260
    const-string v4, "TaoSdk.ImgPool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!delete file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bs len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/imagepool/ImageCache;->deleteFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 198
    .end local v3           #ret:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :pswitch_0
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v4}, Landroid/taobao/filecache/HighSpeedTmpCache;->init()Z

    .line 200
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v4, :cond_3

    .line 202
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v5, v2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/taobao/filecache/HighSpeedTmpCache;->filtrFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, files:[Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v4, v2, v1}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideStoragePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .end local v1           #files:[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v4, v2}, Landroid/taobao/filecache/HighSpeedTmpCache;->read(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 213
    :pswitch_1
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v3, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 218
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v4, :cond_4

    .line 220
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v5, v2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/taobao/filecache/FileDir;->filtrFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #files:[Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v4, v2, v1}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideStoragePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .end local v1           #files:[Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v2}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 229
    :pswitch_2
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v3, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 233
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v4, :cond_5

    .line 235
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v5, v2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/taobao/filecache/FileDir;->filtrFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1       #files:[Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v4, v2, v1}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideStoragePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .end local v1           #files:[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v2}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 244
    :pswitch_3
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v4, :cond_2

    .line 245
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v3, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 246
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v4, :cond_6

    .line 248
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v5, v2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/taobao/filecache/FileDir;->filtrFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1       #files:[Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v4, v2, v1}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideStoragePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .end local v1           #files:[Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v4, v2}, Landroid/taobao/filecache/FileDir;->read(Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->TEMP_CACHE_FILE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-virtual {v2}, Landroid/taobao/filecache/HighSpeedTmpCache;->isInSdcard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/filecache/FileCache;->releaseTmpCache(Ljava/lang/String;Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->isInSdcard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/filecache/FileCache;->releaseFileDir(Ljava/lang/String;Z)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->MRU_CACHE_FOLDER_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->isInSdcard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/filecache/FileCache;->releaseFileDir(Ljava/lang/String;Z)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/filecache/FileCache;->getInsatance(Landroid/app/Application;)Landroid/taobao/filecache/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImageCache;->NOREPLACE_PERSIST_CACHE_FOLDER_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->isInSdcard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/filecache/FileCache;->releaseFileDir(Ljava/lang/String;Z)V

    .line 176
    :cond_3
    return-void
.end method

.method public saveData(Ljava/lang/String;[BI)Z
    .locals 4
    .parameter "url"
    .parameter "data"
    .parameter "saveType"

    .prologue
    const/4 v3, 0x0

    .line 287
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 288
    :cond_0
    const/4 v1, 0x1

    .line 333
    :cond_1
    :goto_0
    return v1

    .line 289
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 292
    .local v1, ret:Z
    if-eqz p2, :cond_1

    .line 293
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_fileCache:Landroid/taobao/filecache/HighSpeedTmpCache;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/taobao/filecache/HighSpeedTmpCache;->append(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v1

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2, v3, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 304
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->hidenMediaFile()V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2, v3, v3}, Landroid/taobao/filecache/FileDir;->init(Ljava/util/Comparator;Landroid/taobao/filecache/FileInfoCreator;)Z

    .line 315
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_noreplace_persist:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->hidenMediaFile()V

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/taobao/filecache/FileDir;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 325
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_cache_MRU:Landroid/taobao/filecache/FileDir;

    invoke-virtual {v2}, Landroid/taobao/filecache/FileDir;->hidenMediaFile()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setImageQualityStrategy(Lcom/taobao/tao/imagepool/IImageQualityStrategy;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageCache;->m_strategy:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    .line 409
    return-void
.end method
