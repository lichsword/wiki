.class public Lcom/ut/share/component/ShareProcessor;
.super Ljava/lang/Object;
.source "ShareProcessor.java"


# static fields
.field private static final RECEIVE_WRAP_LINK_FLAG:I


# instance fields
.field private laiwangAppID:Ljava/lang/String;

.field private laiwangScretID:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mDisablePlatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareDialog:Landroid/app/ProgressDialog;

.field private mReceiveShortUrlHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mShareData:Lcom/ut/share/data/ShareData;

.field private final platform2ShareData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ut/share/SharePlatform;",
            "Lcom/ut/share/data/ShareData;",
            ">;"
        }
    .end annotation
.end field

.field private wangxinAppID:Ljava/lang/String;

.field private weixinAppID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "receiveWrapLinkFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/ut/share/component/ShareProcessor;->RECEIVE_WRAP_LINK_FLAG:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/data/ShareData;)V
    .locals 1
    .parameter "context"
    .parameter "data"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mDisablePlatforms:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/share/component/ShareProcessor;->platform2ShareData:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/ut/share/component/ShareProcessor$2;

    invoke-direct {v0, p0}, Lcom/ut/share/component/ShareProcessor$2;-><init>(Lcom/ut/share/component/ShareProcessor;)V

    iput-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mReceiveShortUrlHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    .line 56
    iput-object p2, p0, Lcom/ut/share/component/ShareProcessor;->mShareData:Lcom/ut/share/data/ShareData;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ut/share/component/ShareProcessor;->shareStep1(Lcom/ut/share/data/ShareAppInfo;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/ut/share/component/ShareProcessor;->RECEIVE_WRAP_LINK_FLAG:I

    return v0
.end method

.method static synthetic access$200(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ut/share/component/ShareProcessor;->shareStep2(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ut/share/component/ShareProcessor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mReceiveShortUrlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ut/share/component/ShareProcessor;->gotoShare(Lcom/ut/share/data/ShareAppInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ut/share/component/ShareProcessor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ut/share/component/ShareProcessor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/ut/share/component/ShareProcessor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ut/share/component/ShareProcessor;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private genPicFilePath(Landroid/graphics/Bitmap;Lcom/ut/share/data/ShareData;)V
    .locals 4
    .parameter "pic"
    .parameter "shareData"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "taobao"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "share_pic_tmp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, localPath:Ljava/lang/String;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, v0, v1}, Lcom/ut/share/utils/ShareUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ut/share/data/ShareData;->setPicUri(Landroid/net/Uri;)V

    .line 266
    .end local v0           #localPath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private generateQRCode(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    .locals 4
    .parameter "info"
    .parameter "shareData"

    .prologue
    .line 242
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "taobao"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "qrcode_pic_tmp.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, savePath:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/ut/share/data/ShareData;->getEncodeEntity()Lcom/ut/share/utils/a;

    move-result-object v1

    new-instance v2, Lcom/ut/share/component/ShareProcessor$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/ut/share/component/ShareProcessor$4;-><init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareData;Ljava/lang/String;Lcom/ut/share/data/ShareAppInfo;)V

    invoke-static {v0, v1, v2}, Lcom/ut/share/utils/ShareUtils;->generateQRCode(Ljava/lang/String;Lcom/ut/share/utils/a;Lcom/ut/share/utils/ShareUtils$a;)V

    .line 256
    .end local v0           #savePath:Ljava/lang/String;
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/ut/share/component/ShareProcessor;->gotoShare(Lcom/ut/share/data/ShareAppInfo;)V

    goto :goto_0
.end method

.method private gotoShare(Lcom/ut/share/data/ShareAppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ut/share/component/ShareProcessor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/ut/share/component/ShareProcessor$5;

    invoke-direct {v1, p0, p1}, Lcom/ut/share/component/ShareProcessor$5;-><init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shareStep1(Lcom/ut/share/data/ShareAppInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor;->platform2ShareData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/share/data/ShareData;

    .line 164
    .local v0, shareData:Lcom/ut/share/data/ShareData;
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mShareData:Lcom/ut/share/data/ShareData;

    .line 169
    :cond_0
    const/16 v1, 0x138a

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/share/SharePlatform;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/ut/share/component/ShareProcessor;->wrapLink(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V

    .line 173
    return-void
.end method

.method private shareStep2(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    .locals 1
    .parameter "info"
    .parameter "shareData"

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ut/share/executor/Executor;->setData(Lcom/ut/share/data/ShareData;)V

    .line 212
    invoke-virtual {p1}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/share/executor/Executor;->isDirectly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/share/executor/Executor;->share()Z

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/ut/share/component/ShareProcessor;->showDialog()V

    .line 220
    invoke-virtual {p2}, Lcom/ut/share/data/ShareData;->getEncodeEntity()Lcom/ut/share/utils/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/ut/share/component/ShareProcessor;->generateQRCode(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p2}, Lcom/ut/share/data/ShareData;->getPic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ut/share/component/ShareProcessor;->genPicFilePath(Landroid/graphics/Bitmap;Lcom/ut/share/data/ShareData;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/ut/share/component/ShareProcessor;->gotoShare(Lcom/ut/share/data/ShareAppInfo;)V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v2, "\u6b63\u5728\u63d0\u4ea4\u54e6\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u4e00\u4e0b\u5427~"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    .line 236
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 237
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mPrepareDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 239
    :cond_0
    return-void
.end method

.method private wrapLink(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    .locals 2
    .parameter "info"
    .parameter "shareData"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ut/share/component/ShareProcessor$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ut/share/component/ShareProcessor$3;-><init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method


# virtual methods
.method public retrieveShareAppList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ut/share/data/ShareAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    .line 92
    new-instance v0, Lcom/ut/share/data/a;

    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ut/share/component/ShareProcessor;->weixinAppID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ut/share/component/ShareProcessor;->wangxinAppID:Ljava/lang/String;

    iget-object v4, p0, Lcom/ut/share/component/ShareProcessor;->laiwangAppID:Ljava/lang/String;

    iget-object v5, p0, Lcom/ut/share/component/ShareProcessor;->laiwangScretID:Ljava/lang/String;

    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor;->mDisablePlatforms:Ljava/util/Set;

    invoke-direct/range {v0 .. v6}, Lcom/ut/share/data/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 93
    .local v0, appProvider:Lcom/ut/share/data/a;
    invoke-virtual {v0}, Lcom/ut/share/data/a;->ec()Ljava/util/ArrayList;

    move-result-object v7

    .line 94
    .local v7, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ut/share/data/ShareAppInfo;>;"
    if-nez v7, :cond_1

    .line 95
    const/4 v7, 0x0

    .line 114
    .end local v7           #appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ut/share/data/ShareAppInfo;>;"
    :cond_0
    return-object v7

    .line 98
    .restart local v7       #appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ut/share/data/ShareAppInfo;>;"
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 99
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v8

    .line 100
    .local v8, executor:Lcom/ut/share/executor/Executor;
    iget-object v2, p0, Lcom/ut/share/component/ShareProcessor;->platform2ShareData:Ljava/util/Map;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ut/share/data/ShareData;

    .line 101
    .local v10, platformSpecificShareData:Lcom/ut/share/data/ShareData;
    if-nez v10, :cond_2

    .line 102
    iget-object v10, p0, Lcom/ut/share/component/ShareProcessor;->mShareData:Lcom/ut/share/data/ShareData;

    .line 104
    :cond_2
    invoke-virtual {v8, v10}, Lcom/ut/share/executor/Executor;->setData(Lcom/ut/share/data/ShareData;)V

    .line 105
    invoke-virtual {v10}, Lcom/ut/share/data/ShareData;->getEncodeEntity()Lcom/ut/share/utils/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v8}, Lcom/ut/share/executor/Executor;->getSharePlatform()Lcom/ut/share/SharePlatform;

    move-result-object v1

    sget-object v2, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    if-ne v1, v2, :cond_4

    .line 107
    check-cast v8, Lcom/ut/share/executor/WeixinExecutor;

    .end local v8           #executor:Lcom/ut/share/executor/Executor;
    invoke-virtual {v8, v11}, Lcom/ut/share/executor/WeixinExecutor;->setThumbNailSize(I)V

    .line 98
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .restart local v8       #executor:Lcom/ut/share/executor/Executor;
    :cond_4
    invoke-virtual {v8}, Lcom/ut/share/executor/Executor;->getSharePlatform()Lcom/ut/share/SharePlatform;

    move-result-object v1

    sget-object v2, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    if-ne v1, v2, :cond_3

    .line 109
    check-cast v8, Lcom/ut/share/executor/WeixinPengyouExecutor;

    .end local v8           #executor:Lcom/ut/share/executor/Executor;
    invoke-virtual {v8, v11}, Lcom/ut/share/executor/WeixinPengyouExecutor;->setThumbNailSize(I)V

    goto :goto_1
.end method

.method public setDisableSharePlatforms(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, platforms:Ljava/util/Set;,"Ljava/util/Set<Lcom/ut/share/SharePlatform;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mDisablePlatforms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public setLaiwangAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "laiwangAppID"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor;->laiwangAppID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLaiwangSecretID(Ljava/lang/String;)V
    .locals 0
    .parameter "laiwangScretID"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor;->laiwangScretID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPic(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pic"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0, p1}, Lcom/ut/share/data/ShareData;->setPic(Landroid/graphics/Bitmap;)V

    .line 83
    return-void
.end method

.method public setShareData(Lcom/ut/share/SharePlatform;Lcom/ut/share/data/ShareData;)V
    .locals 1
    .parameter "p"
    .parameter "data"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->platform2ShareData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method public setWangxinAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "wangxinAppID"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor;->wangxinAppID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setWeixinAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "weixinAppID"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor;->weixinAppID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public share(Lcom/ut/share/SharePlatform;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/ut/share/component/ShareProcessor;->retrieveShareAppList()Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, sInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/ut/share/data/ShareAppInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/share/data/ShareAppInfo;

    .line 123
    .local v1, info:Lcom/ut/share/data/ShareAppInfo;
    invoke-virtual {v1}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    goto :goto_0

    .line 127
    .end local v1           #info:Lcom/ut/share/data/ShareAppInfo;
    :cond_1
    return-void
.end method

.method public share(Lcom/ut/share/data/ShareAppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/ut/share/component/ShareProcessor$1;

    invoke-direct {v1, p0, p1}, Lcom/ut/share/component/ShareProcessor$1;-><init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
