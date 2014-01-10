.class public Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
.source "NewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;,
        Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;,
        Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.adi.collie.NEWS_NUM_CHANGE"

.field public static final COUNT_LIMIT:I = 0xa

.field public static final NEWS_DIR:Ljava/lang/String; = "news"


# instance fields
.field private lastVisiable:Z

.field private mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

.field private mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

.field private mHeaderView:Landroid/widget/TextView;

.field private mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

.field private mNewsValue:Ljava/lang/String;

.field private final mNotifyReceiver:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;

.field private mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->lastVisiable:Z

    .line 90
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->formatNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->startNewsTask()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    return-void
.end method

.method private formatNewsList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 383
    const/4 v6, 0x0

    .line 385
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getNewsDataListFromJsonStr(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 390
    const-string v10, "adi_lock_show_pic_only_wifi_key"

    .line 391
    const/4 v11, 0x0

    .line 390
    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v10

    .line 391
    if-eqz v10, :cond_5

    .line 393
    sget-object v10, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v10}, Lcom/alibaba/adi/collie/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    move-result-object v7

    .line 395
    .local v7, type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    if-eqz v7, :cond_0

    sget-object v10, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->G2:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-eq v10, v7, :cond_0

    sget-object v10, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->G3:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne v10, v7, :cond_3

    .line 397
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 399
    .local v4, len:I
    const/4 v0, 0x0

    .line 400
    .local v0, baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v5

    .line 401
    .local v5, manager:Lorg/lichsword/util/ImageManager;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 422
    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v2           #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v7           #type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    :goto_1
    return-object v2

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;->printStackTrace()V

    move-object v2, v9

    .line 388
    goto :goto_1

    .line 402
    .end local v1           #e:Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
    .restart local v0       #baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    .restart local v2       #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v5       #manager:Lorg/lichsword/util/ImageManager;
    .restart local v7       #type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    :cond_1
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    check-cast v0, Lcom/alibaba/adi/collie/model/service/NewsData;

    .line 403
    .restart local v0       #baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/service/NewsData;->getFirstImage()Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, url:Ljava/lang/String;
    const-string v10, "news"

    invoke-virtual {v5, v8, v10}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 406
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0, v9}, Lcom/alibaba/adi/collie/model/service/NewsData;->setImages(Ljava/util/List;)V

    .line 410
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    .end local v0           #baseItem:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v2           #filterResult:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v8           #url:Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->WIFI:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne v9, v7, :cond_4

    move-object v2, v6

    .line 415
    goto :goto_1

    :cond_4
    move-object v2, v6

    .line 418
    goto :goto_1

    .end local v7           #type:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;
    :cond_5
    move-object v2, v6

    .line 422
    goto :goto_1
.end method

.method private initContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 169
    const v1, 0x7f03009c

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mHeaderView:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mHeaderView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 173
    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    .line 174
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->addHeaderView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->addHintHeaderView()V

    .line 177
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->addHintFooterView()V

    .line 178
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mHeaderView:Landroid/widget/TextView;

    const v1, 0x7f0801fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTitleTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v2, 0x7f0a00be

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    .line 181
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setScrollingCacheEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setOnRefreshListener(Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;)V

    .line 211
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    .locals 4

    .prologue
    .line 96
    const-string v2, "xhh"

    const-string v3, "news new instance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v3, "CountingFragment newInstance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;-><init>()V

    .line 99
    .local v1, f:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    return-object v1
.end method

.method private startNewsTask()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 341
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task not running, just start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    .line 347
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    monitor-exit p0

    .line 349
    return-void

    .line 343
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task canceled when start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->cancel(Z)Z

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized lazyInit()V
    .locals 6

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 220
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000d

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->initRootView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->initContentView(Landroid/view/View;)V

    .line 224
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->startNewsTask()V

    .line 225
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->resetRefreshView()V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 229
    const v4, 0x7f040001

    .line 228
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 230
    .local v0, fadeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->lazyInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
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
    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    sget-object v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "CountingFragment onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "news"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->pageLockFrom:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->release()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentNewsPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->cancel(Z)Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;

    .line 142
    sget-object v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task canceled when pause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->unregister()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-string v0, "news_data"

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->register()V

    .line 119
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .parameter "isVisibleToUser"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->setUserVisibleHint(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->lastVisiable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->resetRefreshView()V

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setHeaderVisiability(I)V

    .line 130
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->startNewsTask()V

    .line 132
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->lastVisiable:Z

    .line 134
    :cond_2
    return-void
.end method
