.class public Landroid/taobao/datalogic/ListDataLogic;
.super Ljava/lang/Object;
.source "ListDataLogic.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;
    }
.end annotation


# static fields
.field public static final PAGE_GET_NEWPRE:I = 0x4

.field public static final PAGE_NEXT:I = 0x0

.field public static final PAGE_ORIGIN:I = 0x3

.field public static final PAGE_PRE:I = 0x1


# instance fields
.field private final PAGE_FINSH:I

.field private adapter:Landroid/taobao/datalogic/ListBaseAdapter;

.field private cacheKey:Ljava/lang/String;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/common/dataobject/ItemDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private imageBinder:Landroid/taobao/imagebinder/ImageBinder;

.field private listener:Landroid/taobao/datalogic/StateListener;

.field private mResult:Landroid/taobao/apirequest/ApiResult;

.field private mainThreadHandler:Landroid/taobao/util/SafeHandler;

.field private pageCapacity:I

.field private pageDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/common/dataobject/PageDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private pageFinsh:Z

.field private paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

.field private preCachedNum:I

.field private rechBegin:Z

.field private rechEnd:Z

.field protected source:Landroid/taobao/datalogic/DataSource;

.field private token:I


# direct methods
.method public constructor <init>(Landroid/taobao/datalogic/ListBaseAdapter;Landroid/taobao/datalogic/DataSource;ILandroid/taobao/imagebinder/ImageBinder;)V
    .locals 1
    .parameter "adapter"
    .parameter "source"
    .parameter "pageMode"
    .parameter "imageBinder"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/taobao/datalogic/ListDataLogic;-><init>(Landroid/taobao/datalogic/ListBaseAdapter;Landroid/taobao/datalogic/DataSource;Landroid/taobao/datalogic/ParameterBuilder;Landroid/taobao/imagebinder/ImageBinder;)V

    .line 97
    const/4 v0, 0x2

    if-ne v0, p3, :cond_1

    .line 98
    new-instance v0, Landroid/taobao/datalogic/PageParamBuilder;

    invoke-direct {v0}, Landroid/taobao/datalogic/PageParamBuilder;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_2

    .line 100
    new-instance v0, Landroid/taobao/datalogic/IndexParamBuilder;

    invoke-direct {v0}, Landroid/taobao/datalogic/IndexParamBuilder;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p3, :cond_0

    .line 102
    new-instance v0, Landroid/taobao/datalogic/IdPageParamBuilder;

    invoke-direct {v0}, Landroid/taobao/datalogic/IdPageParamBuilder;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/taobao/datalogic/ListBaseAdapter;Landroid/taobao/datalogic/DataSource;Landroid/taobao/datalogic/ParameterBuilder;Landroid/taobao/imagebinder/ImageBinder;)V
    .locals 3
    .parameter "adapter"
    .parameter "source"
    .parameter "paramBuilder"
    .parameter "imageBinder"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x32

    iput v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    .line 34
    iput-boolean v1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 35
    iput-boolean v2, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 36
    iput-boolean v1, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    .line 43
    iput v1, p0, Landroid/taobao/datalogic/ListDataLogic;->PAGE_FINSH:I

    .line 45
    const-string v0, " "

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->cacheKey:Ljava/lang/String;

    .line 63
    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    .line 64
    iput-object p3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    .line 65
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    .line 66
    iput-object p2, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    .line 67
    iput-object p4, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->mainThreadHandler:Landroid/taobao/util/SafeHandler;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/taobao/datalogic/ListBaseAdapter;->setDataList(Ljava/util/List;)V

    .line 75
    invoke-virtual {p1, p4}, Landroid/taobao/datalogic/ListBaseAdapter;->setImgBinder(Landroid/taobao/imagebinder/ImageBinder;)V

    .line 77
    :cond_0
    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 80
    return-void
.end method

.method private _handlePageNext(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z
    .locals 8
    .parameter "pageData"
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v3, :cond_d

    iget v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->dealedTime:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v3, p1}, Landroid/taobao/datalogic/ParameterBuilder;->putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 506
    :cond_0
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    if-lt v3, v4, :cond_6

    .line 507
    const-string v3, "ListDataLogic"

    const-string v4, "remove pre page"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/common/dataobject/PageDataObject;

    .line 509
    .local v2, tmp:Landroid/taobao/common/dataobject/PageDataObject;
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v3, v2}, Landroid/taobao/datalogic/ParameterBuilder;->removeFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    .line 510
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, v2, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 512
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_1
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v3, :cond_2

    .line 515
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v4, v2, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v4, v4

    neg-int v4, v4

    iget-object v5, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v4, v6, v5}, Landroid/taobao/datalogic/StateListener;->needUpdateSelection(III)V

    .line 517
    :cond_2
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v3, :cond_3

    .line 518
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v3}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 521
    :cond_3
    iget v3, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    if-gez v3, :cond_4

    .line 522
    iput v6, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 523
    :cond_4
    iget v3, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    iget-object v4, v2, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 526
    iget v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->dealedTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->dealedTime:I

    .line 527
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 528
    .local v1, msg1:Landroid/os/Message;
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->mainThreadHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v3, v1}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    .end local v0           #i:I
    .end local v1           #msg1:Landroid/os/Message;
    .end local v2           #tmp:Landroid/taobao/common/dataobject/PageDataObject;
    :cond_5
    :goto_1
    return v7

    .line 533
    :cond_6
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v3, :cond_7

    .line 535
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 536
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 540
    .end local v0           #i:I
    :cond_7
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v3, :cond_8

    .line 541
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v3}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 544
    :cond_8
    iput-boolean v7, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 546
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v3, :cond_9

    .line 547
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v3}, Landroid/taobao/datalogic/StateListener;->dataReceived()V

    .line 551
    :cond_9
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v3}, Landroid/taobao/datalogic/ParameterBuilder;->isRechBegin()Z

    move-result v3

    if-nez v3, :cond_a

    .line 552
    const-string v3, "ListDataLogic"

    const-string v4, "reach beginning"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iput-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    .line 555
    :cond_a
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v3}, Landroid/taobao/datalogic/ParameterBuilder;->isFinish()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 556
    const-string v3, "ListDataLogic"

    const-string v4, "reach end"

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-boolean v7, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 558
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v3, :cond_b

    .line 559
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v3}, Landroid/taobao/datalogic/StateListener;->loadFinish()V

    .line 561
    :cond_b
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v3, :cond_5

    .line 562
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v3}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 566
    :cond_c
    iput-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    goto :goto_1

    .line 570
    :cond_d
    iput-boolean v7, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 571
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v3, :cond_5

    .line 572
    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v4, p1, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/taobao/datalogic/StateListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _handlePageOrigin(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z
    .locals 5
    .parameter "pageData"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    iput v3, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 441
    iput-boolean v3, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 443
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v1}, Landroid/taobao/imagebinder/ImageBinder;->recycle()V

    .line 450
    :cond_0
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ParameterBuilder;->clearState()V

    .line 452
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v1}, Landroid/taobao/datalogic/DataSource;->clearCache()V

    .line 454
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v1, p1}, Landroid/taobao/datalogic/ParameterBuilder;->putLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 456
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 466
    :cond_2
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 468
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v1, :cond_3

    .line 469
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v1}, Landroid/taobao/datalogic/StateListener;->dataReceived()V

    .line 473
    :cond_3
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ParameterBuilder;->isRechBegin()Z

    move-result v1

    if-nez v1, :cond_4

    .line 474
    const-string v1, "ListDataLogic"

    const-string v2, "reach beginning"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput-boolean v3, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    .line 477
    :cond_4
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ParameterBuilder;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 478
    const-string v1, "ListDataLogic"

    const-string v2, "reach end"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 480
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v1, :cond_5

    .line 481
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v1}, Landroid/taobao/datalogic/StateListener;->loadFinish()V

    .line 493
    :cond_5
    :goto_1
    return v4

    .line 484
    :cond_6
    iput-boolean v3, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    goto :goto_1

    .line 488
    :cond_7
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 489
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v1, :cond_5

    .line 490
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/taobao/datalogic/StateListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _handlePagePrev(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z
    .locals 7
    .parameter "pageData"
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 584
    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2, p1}, Landroid/taobao/datalogic/ParameterBuilder;->putFstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 587
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    if-lt v2, v3, :cond_0

    .line 589
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/PageDataObject;

    .line 590
    .local v1, tmp:Landroid/taobao/common/dataobject/PageDataObject;
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2, v1}, Landroid/taobao/datalogic/ParameterBuilder;->removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    .line 591
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, v1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 593
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    .end local v0           #i:I
    .end local v1           #tmp:Landroid/taobao/common/dataobject/PageDataObject;
    :cond_0
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 598
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    iget-object v4, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    :cond_1
    iget v2, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 602
    iget v2, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    if-gez v2, :cond_2

    .line 603
    iput v5, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 605
    :cond_2
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_3

    .line 606
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v3, v3

    iget-object v4, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Landroid/taobao/datalogic/StateListener;->needUpdateSelection(III)V

    .line 608
    :cond_3
    iput-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 610
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_4

    .line 611
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v2}, Landroid/taobao/datalogic/StateListener;->dataReceived()V

    .line 614
    :cond_4
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ParameterBuilder;->isRechBegin()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    const-string v2, "ListDataLogic"

    const-string v3, "reach beginning"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iput-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    .line 620
    :goto_2
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ParameterBuilder;->isFinish()Z

    move-result v2

    if-nez v2, :cond_5

    .line 621
    iput-boolean v5, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 630
    .end local v0           #i:I
    :cond_5
    :goto_3
    return v6

    .line 619
    .restart local v0       #i:I
    :cond_6
    iput-boolean v5, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    goto :goto_2

    .line 626
    .end local v0           #i:I
    :cond_7
    iput-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 627
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_5

    .line 628
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    iget-object v4, p1, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/taobao/datalogic/StateListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private _handlePageRefreshNew(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z
    .locals 6
    .parameter "pageData"
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 637
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 642
    if-eqz p1, :cond_2

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v2, :cond_2

    .line 643
    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    iget v3, v3, Landroid/taobao/datalogic/ParameterBuilder;->pageSize:I

    if-lt v2, v3, :cond_1

    .line 644
    iput v4, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 645
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 646
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 649
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v2}, Landroid/taobao/imagebinder/ImageBinder;->recycle()V

    .line 653
    :cond_0
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ParameterBuilder;->clearState()V

    .line 655
    :cond_1
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 658
    :cond_2
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    if-lt v2, v3, :cond_3

    .line 660
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/PageDataObject;

    .line 661
    .local v1, tmp:Landroid/taobao/common/dataobject/PageDataObject;
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2, v1}, Landroid/taobao/datalogic/ParameterBuilder;->removeLstPage(Landroid/taobao/common/dataobject/PageDataObject;)Z

    .line 662
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, v1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 664
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    .end local v0           #i:I
    .end local v1           #tmp:Landroid/taobao/common/dataobject/PageDataObject;
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 667
    iget-object v2, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 668
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    aget-object v3, v3, v0

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 667
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 671
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v2, :cond_5

    .line 672
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 674
    :cond_5
    iput-boolean v5, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 675
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_6

    .line 676
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v2}, Landroid/taobao/datalogic/StateListener;->dataReceived()V

    .line 678
    :cond_6
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ParameterBuilder;->isRechBegin()Z

    move-result v2

    if-nez v2, :cond_7

    .line 679
    const-string v2, "ListDataLogic"

    const-string v3, "reach beginning"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    .line 682
    :cond_7
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v2}, Landroid/taobao/datalogic/ParameterBuilder;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 683
    const-string v2, "ListDataLogic"

    const-string v3, "reach end"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iput-boolean v5, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 685
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_8

    .line 686
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v2}, Landroid/taobao/datalogic/StateListener;->loadFinish()V

    .line 697
    :cond_8
    :goto_2
    return v5

    .line 689
    :cond_9
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/taobao/datalogic/ListDataLogic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    return v0
.end method

.method static synthetic access$100(Landroid/taobao/datalogic/ListDataLogic;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/datalogic/ListDataLogic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    return v0
.end method

.method static synthetic access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    return-object v0
.end method

.method static synthetic access$400(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/util/SafeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->mainThreadHandler:Landroid/taobao/util/SafeHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/taobao/datalogic/ListDataLogic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/taobao/datalogic/ListDataLogic;Landroid/taobao/apirequest/ApiResult;)Landroid/taobao/apirequest/ApiResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->mResult:Landroid/taobao/apirequest/ApiResult;

    return-object p1
.end method


# virtual methods
.method public addMemItem(ILandroid/taobao/common/dataobject/ItemDataObject;)V
    .locals 2
    .parameter "pos"
    .parameter "dataObject"

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 429
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Landroid/taobao/util/CalledFromWrongThreadException;

    invoke-direct {v0}, Landroid/taobao/util/CalledFromWrongThreadException;-><init>()V

    throw v0

    .line 220
    :cond_0
    iput v4, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    .line 221
    iput-boolean v4, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 223
    iget v0, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    .line 225
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_1
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->recycle()V

    .line 235
    :cond_2
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ParameterBuilder;->clearState()V

    .line 237
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v0}, Landroid/taobao/datalogic/DataSource;->clearCache()V

    .line 240
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/taobao/datalogic/ListDataLogic;->clear()V

    .line 355
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ListBaseAdapter;->destroy()V

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->recycle()V

    .line 362
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->destroy()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    .line 365
    :cond_1
    return-void
.end method

.method public flushImg2Cache()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->flushImg2Cache()V

    .line 272
    :cond_0
    return-void
.end method

.method public getAdapter()Landroid/taobao/datalogic/ListBaseAdapter;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    return-object v0
.end method

.method public getApiResult()Landroid/taobao/apirequest/ApiResult;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->mResult:Landroid/taobao/apirequest/ApiResult;

    return-object v0
.end method

.method public getImageBinder()Landroid/taobao/imagebinder/ImageBinder;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    return-object v0
.end method

.method public getItem(I)Landroid/taobao/common/dataobject/ItemDataObject;
    .locals 2
    .parameter "pos"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/common/dataobject/ItemDataObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-object v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMemItemCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNewPrePage()V
    .locals 5

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 259
    new-instance v0, Landroid/taobao/threadpool2/SingleTask;

    new-instance v1, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;

    iget v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v4}, Landroid/taobao/datalogic/DataSource;->getCacheType()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;-><init>(Landroid/taobao/datalogic/ListDataLogic;III)V

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/taobao/threadpool2/SingleTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Landroid/taobao/threadpool2/SingleTask;->start()V

    .line 261
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v0}, Landroid/taobao/datalogic/StateListener;->startReceive()V

    .line 263
    :cond_0
    return-void
.end method

.method public getPageDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/common/dataobject/PageDataObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ParameterBuilder;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getParameterBuilder()Landroid/taobao/datalogic/ParameterBuilder;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    return-object v0
.end method

.method public getPreCacheItemNum()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/taobao/datalogic/ListDataLogic;->preCachedNum:I

    return v0
.end method

.method public getSource()Landroid/taobao/datalogic/DataSource;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    return-object v0
.end method

.method public getStateListener()Landroid/taobao/datalogic/StateListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ParameterBuilder;->getTotalNum()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 702
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 791
    :goto_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return v1

    .line 706
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    if-eq v2, v3, :cond_1

    .line 709
    const-string v2, "ListDataLogic"

    const-string v3, "valid token"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/common/dataobject/PageDataObject;

    .line 717
    .local v0, pageData:Landroid/taobao/common/dataobject/PageDataObject;
    iput-boolean v1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 718
    if-nez v0, :cond_2

    .line 722
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    invoke-interface {v2, v3, v4}, Landroid/taobao/datalogic/StateListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 729
    :cond_2
    invoke-virtual {v0}, Landroid/taobao/common/dataobject/PageDataObject;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 732
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    iget-object v3, v0, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    iget-object v4, v0, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/taobao/datalogic/StateListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 739
    :cond_3
    iget-object v2, v0, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-nez v2, :cond_4

    .line 740
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eq v2, v4, :cond_4

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 741
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v2}, Landroid/taobao/datalogic/StateListener;->dataReceived()V

    .line 743
    iget-object v2, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v2}, Landroid/taobao/datalogic/StateListener;->loadFinish()V

    goto :goto_1

    .line 750
    :cond_4
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_5

    .line 751
    invoke-direct {p0, v0, p1}, Landroid/taobao/datalogic/ListDataLogic;->_handlePagePrev(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z

    goto :goto_0

    .line 754
    :cond_5
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_6

    .line 755
    invoke-direct {p0, v0, p1}, Landroid/taobao/datalogic/ListDataLogic;->_handlePageNext(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z

    goto :goto_0

    .line 757
    :cond_6
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_7

    .line 758
    invoke-direct {p0, v0, p1}, Landroid/taobao/datalogic/ListDataLogic;->_handlePageRefreshNew(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z

    goto :goto_0

    .line 761
    :cond_7
    invoke-direct {p0, v0, p1}, Landroid/taobao/datalogic/ListDataLogic;->_handlePageOrigin(Landroid/taobao/common/dataobject/PageDataObject;Landroid/os/Message;)Z

    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 391
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isReachBegin()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachEnd()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextPage()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    if-eqz v0, :cond_2

    .line 279
    const-string v0, "ListDataLogic"

    const-string v1, "nextPage start"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput-boolean v3, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 283
    new-instance v6, Landroid/taobao/threadpool2/SingleTask;

    new-instance v0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;

    iget v1, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v1}, Landroid/taobao/datalogic/DataSource;->getCacheType()I

    move-result v4

    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;-><init>(Landroid/taobao/datalogic/ListDataLogic;IIIZ)V

    const/4 v1, 0x2

    invoke-direct {v6, v0, v1}, Landroid/taobao/threadpool2/SingleTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v6}, Landroid/taobao/threadpool2/SingleTask;->start()V

    .line 284
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v0}, Landroid/taobao/datalogic/StateListener;->startReceive()V

    .line 291
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v3

    .line 283
    goto :goto_0

    .line 287
    :cond_2
    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->rechEnd:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v0}, Landroid/taobao/datalogic/StateListener;->loadFinish()V

    goto :goto_1
.end method

.method public pauseImgDl()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->pauseDownload()V

    .line 340
    :cond_0
    return-void
.end method

.method public prePage()V
    .locals 5

    .prologue
    .line 297
    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->rechBegin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "ListDataLogic"

    const-string v1, "prePage start"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 301
    new-instance v0, Landroid/taobao/threadpool2/SingleTask;

    new-instance v1, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;

    iget v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v4}, Landroid/taobao/datalogic/DataSource;->getCacheType()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;-><init>(Landroid/taobao/datalogic/ListDataLogic;III)V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/taobao/threadpool2/SingleTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Landroid/taobao/threadpool2/SingleTask;->start()V

    .line 302
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v0}, Landroid/taobao/datalogic/StateListener;->startReceive()V

    .line 305
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic;->pageFinsh:Z

    .line 248
    new-instance v0, Landroid/taobao/threadpool2/SingleTask;

    new-instance v1, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;

    iget v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/taobao/datalogic/ListDataLogic;->token:I

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v4}, Landroid/taobao/datalogic/DataSource;->getCacheType()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;-><init>(Landroid/taobao/datalogic/ListDataLogic;III)V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/taobao/threadpool2/SingleTask;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Landroid/taobao/threadpool2/SingleTask;->start()V

    .line 250
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    invoke-interface {v0}, Landroid/taobao/datalogic/StateListener;->startReceive()V

    .line 252
    :cond_0
    return-void
.end method

.method public removeMemItem(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v1}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeMemItem(Landroid/taobao/common/dataobject/ItemDataObject;)V
    .locals 1
    .parameter "dataObject"

    .prologue
    .line 420
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    invoke-virtual {v0}, Landroid/taobao/datalogic/ListBaseAdapter;->notifyDataSetChanged()V

    .line 424
    :cond_0
    return-void
.end method

.method public resumeImgDl()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->resumeDownload()V

    .line 348
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/taobao/datalogic/ListBaseAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 168
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {v0}, Landroid/taobao/imagebinder/ImageBinder;->recycle()V

    .line 170
    :cond_0
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->adapter:Landroid/taobao/datalogic/ListBaseAdapter;

    .line 171
    if-eqz p1, :cond_1

    .line 172
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->dataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/taobao/datalogic/ListBaseAdapter;->setDataList(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->imageBinder:Landroid/taobao/imagebinder/ImageBinder;

    invoke-virtual {p1, v0}, Landroid/taobao/datalogic/ListBaseAdapter;->setImgBinder(Landroid/taobao/imagebinder/ImageBinder;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "ListDataLogic"

    const-string v1, "set a null adapter\uff1f"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 107
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->cacheKey:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPageCapacity(I)V
    .locals 0
    .parameter "pageCapacity"

    .prologue
    .line 202
    iput p1, p0, Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I

    .line 203
    return-void
.end method

.method public setPageSize(I)V
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 322
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v0, p1}, Landroid/taobao/datalogic/ParameterBuilder;->setPageSize(I)V

    .line 323
    return-void
.end method

.method public setParam(Landroid/taobao/util/Parameter;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 311
    iget-object v0, p0, Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;

    invoke-virtual {v0, p1}, Landroid/taobao/datalogic/ParameterBuilder;->setParam(Landroid/taobao/util/Parameter;)V

    .line 312
    invoke-virtual {p0}, Landroid/taobao/datalogic/ListDataLogic;->clear()V

    .line 313
    return-void
.end method

.method public setSource(Landroid/taobao/datalogic/DataSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 967
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    .line 968
    return-void
.end method

.method public setStateListener(Landroid/taobao/datalogic/StateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic;->listener:Landroid/taobao/datalogic/StateListener;

    .line 159
    return-void
.end method
