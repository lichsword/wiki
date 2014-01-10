.class public Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
.source "JokeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JokeFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;,
        Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;,
        Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.ali.collie.JOKE_NUM_CHANGE"

.field public static final COUNT_LIMIT:I = 0xf

.field public static final JOKE_DIR:Ljava/lang/String; = "joke"


# instance fields
.field private headerView:Landroid/widget/TextView;

.field private lastVisiable:Z

.field private mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

.field private mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

.field private mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

.field private mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

.field private final mNotifyReceiver:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->lastVisiable:Z

    .line 87
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    .line 89
    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->formatJokeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initContentData()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    return-void
.end method

.method private formatJokeList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v9, 0x1

    invoke-static {p1, v9}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageFunnyJokeListFromJsonstr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 407
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    const-string v9, "adi_lock_show_pic_only_wifi_key"

    .line 408
    const/4 v10, 0x0

    .line 407
    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v9

    .line 408
    if-eqz v9, :cond_1

    .line 410
    sget-object v9, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v9}, Lcom/alibaba/adi/collie/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    move-result-object v7

    .line 412
    .local v7, type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    if-eqz v7, :cond_0

    sget-object v9, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->G2:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-eq v9, v7, :cond_0

    sget-object v9, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->G3:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne v9, v7, :cond_5

    .line 414
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 416
    .local v4, len:I
    const/4 v0, 0x0

    .line 417
    .local v0, baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v5

    .line 418
    .local v5, manager:Lorg/lichsword/util/ImageManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_2

    move-object v6, v1

    .line 440
    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    .end local v1           #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v6           #result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .end local v7           #type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    :cond_1
    :goto_1
    return-object v6

    .line 419
    .restart local v0       #baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    .restart local v1       #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .restart local v2       #i:I
    .restart local v4       #len:I
    .restart local v5       #manager:Lorg/lichsword/util/ImageManager;
    .restart local v6       #result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .restart local v7       #type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    :cond_2
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    check-cast v0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;

    .line 420
    .restart local v0       #baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    instance-of v9, v0, Lcom/alibaba/adi/collie/model/service/JokeData;

    if-eqz v9, :cond_4

    .line 421
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_4
    instance-of v9, v0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    if-eqz v9, :cond_3

    move-object v3, v0

    .line 423
    check-cast v3, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    .line 424
    .local v3, imageData:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getOriginImageUrl()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, url:Ljava/lang/String;
    const-string v9, "joke"

    invoke-virtual {v5, v8, v9}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 427
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 432
    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    .end local v1           #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .end local v2           #i:I
    .end local v3           #imageData:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    .end local v4           #len:I
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v8           #url:Ljava/lang/String;
    :cond_5
    sget-object v9, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->WIFI:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne v9, v7, :cond_1

    goto :goto_1
.end method

.method private initContentData()V
    .locals 2

    .prologue
    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task not running, just start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    .line 356
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    monitor-exit p0

    .line 358
    return-void

    .line 352
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task canceled when start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->cancel(Z)Z

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 178
    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    .line 179
    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    .line 180
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setTag(Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009c

    .line 182
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->headerView:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->headerView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->headerView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->addHeaderView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->addHintHeaderView()V

    .line 186
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->addHintFooterView()V

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 188
    const v0, 0x7f0801fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mTextView:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setScrollingCacheEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setOnRefreshListener(Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;)V

    .line 212
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    .locals 2

    .prologue
    .line 99
    new-instance v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;-><init>()V

    .line 100
    .local v1, f:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v1
.end method


# virtual methods
.method public declared-synchronized lazyInit()V
    .locals 6

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 221
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 222
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initRootView(Landroid/view/View;)V

    .line 223
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initContentView(Landroid/view/View;)V

    .line 225
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initContentData()V

    .line 226
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->resetRefreshView()V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 230
    const v4, 0x7f040001

    .line 229
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 231
    .local v0, fadeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->lazyInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0           #fadeInAnim:Landroid/view/animation/Animation;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #view:Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "joke"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->pageLockFrom:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->release()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentJokePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->cancel(Z)Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mLoadJokeTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;

    .line 147
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task canceled when pause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;->unregister()V

    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string v0, "image_funny_joke_data"

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$NotifyReceiver;->register()V

    .line 124
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .parameter "isVisibleToUser"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->setUserVisibleHint(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->lastVisiable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->resetRefreshView()V

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setHeaderVisiability(I)V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initContentData()V

    .line 137
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->lastVisiable:Z

    .line 139
    :cond_2
    return-void
.end method
