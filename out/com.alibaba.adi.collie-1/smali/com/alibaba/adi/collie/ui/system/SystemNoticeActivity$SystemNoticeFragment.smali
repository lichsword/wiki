.class public Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
.source "SystemNoticeActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemNoticeFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearCancelledListener;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$ClearConformedListener;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;,
        Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;
    }
.end annotation


# static fields
.field private static final ANIM_HIDE_CONFIRM_POP:I = 0x1

.field private static final ANIM_HIDE_CONFIRM_POP_AND_POST:I = 0x2

.field private static final ANIM_SHOW_CONFIRM_POP:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field public static final TYPE_CALL:I = 0x2

.field public static final TYPE_SMS:I = 0x1

.field public static final TYPE_WEIBO:I = 0x3


# instance fields
.field private ani_alpha_0_to_100:Landroid/view/animation/Animation;

.field private ani_alpha_100_to_0:Landroid/view/animation/Animation;

.field private ani_del_items:Landroid/view/animation/Animation;

.field private ani_trans_left_to_right:Landroid/view/animation/Animation;

.field private ani_trans_right_to_left:Landroid/view/animation/Animation;

.field private default_size:I

.field private hasCall:Z

.field private hasSms:Z

.field private mActive:Z

.field private mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final mCallObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;

.field private mClearButton:Landroid/widget/Button;

.field mClearCall:Ljava/lang/Runnable;

.field mClearSms:Ljava/lang/Runnable;

.field private mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

.field private mContext:Landroid/content/Context;

.field private final mIconClickedReceiver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;

.field public mItemAnimCount:I

.field private mListView:Landroid/widget/ListView;

.field private mListviewAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mNeedLazyInitWhenResume:Z

.field private mNeedLoadDataWhenResume:Z

.field private final mSmsObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;

.field private mSmsThreadIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

.field private mTitle:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mSmsObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;

    .line 80
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mCallObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;

    .line 81
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mIconClickedReceiver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->default_size:I

    .line 717
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$1;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearCall:Ljava/lang/Runnable;

    .line 725
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$2;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearSms:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasCall:Z

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListviewAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mSmsThreadIdSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$13(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setSystemNotifyCount(II)V

    return-void
.end method

.method static synthetic access$14(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->loadWhenDBChanged()V

    return-void
.end method

.method static synthetic access$15(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    return-void
.end method

.method static synthetic access$16(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->removeItems()V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasSms:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->clearNotice()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasCall:Z

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasSms:Z

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setClearLayout(Ljava/lang/Integer;)V

    return-void
.end method

.method private clearNotice()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_cancalAnimUnion(I)V

    .line 409
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mSmsObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;->unregister()V

    .line 668
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mCallObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;->unregister()V

    .line 669
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mIconClickedReceiver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->unregister()V

    .line 670
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->cancel(Z)Z

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    .line 673
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task cancled when pause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    return-void
.end method

.method private initCollectionData()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    new-instance v4, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v5, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 379
    .local v0, callIndex:I
    new-instance v4, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v5, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v4, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v5, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 382
    .local v3, smsIndex:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->default_size:I

    .line 383
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;-><init>(Ljava/util/List;II)V

    .line 384
    .local v1, dataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
    return-object v1
.end method

.method private initData()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setClearLayout(Ljava/lang/Integer;)V

    .line 371
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;-><init>()V

    return-object v0
.end method

.method private declared-synchronized loadWhenDBChanged()V
    .locals 1

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mActive:Z

    if-eqz v0, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->startLoadDataTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :goto_0
    monitor-exit p0

    return-void

    .line 743
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLoadDataWhenResume:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 746
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mActive:Z

    if-eqz v0, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->lazyInit()V

    goto :goto_0

    .line 749
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLazyInitWhenResume:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static newInstance()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
    .locals 4

    .prologue
    .line 112
    const-string v2, "xhh"

    const-string v3, "system new instance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "system newInstance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;-><init>()V

    .line 115
    .local v1, f:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    return-object v1
.end method

.method private removeItems()V
    .locals 10

    .prologue
    .line 412
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getDataCollection()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    move-result-object v1

    .line 413
    .local v1, collection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;
    iget-object v3, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    .line 414
    .local v3, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 418
    .local v5, size:I
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh remove Items "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->default_size:I

    if-ne v5, v7, :cond_2

    .line 420
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v8, "xhh remove end"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_cancalAnimUnion(I)V

    .line 423
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 424
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    .line 425
    .local v2, data:Lcom/alibaba/adi/collie/model/SystemNoticeData;
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getTag()Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v7, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getTag()Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-result-object v8

    if-eq v7, v8, :cond_3

    .line 427
    sget-object v7, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->getTag()Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    move-result-object v8

    if-ne v7, v8, :cond_5

    .line 428
    :cond_3
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh sms/call "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 430
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_4

    .line 431
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->removeItemAnimation(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 432
    .local v0, animation:Landroid/view/animation/Animation;
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " start animation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 436
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_4
    sget-object v7, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " view == null, directly remove pos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->notifyRemoveItem(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;I)V

    .line 423
    .end local v6           #v:Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private setClearLayout(Ljava/lang/Integer;)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 601
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method private setSystemNotifyCount(II)V
    .locals 2
    .parameter "num"
    .parameter "type"

    .prologue
    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, action:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 709
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 715
    :cond_0
    :goto_1
    return-void

    .line 698
    :pswitch_0
    const-string v0, "com.adi.collie.ACTION_SMS_NUM_CHANGE"

    .line 699
    goto :goto_0

    .line 701
    :pswitch_1
    const-string v0, "com.adi.collie.ACTION_PHONE_CALL_NUM_CHANGE"

    .line 702
    goto :goto_0

    .line 704
    :pswitch_2
    const-string v0, "com.adi.collie.ACTION_WEIBO_NUM_CHANGE"

    .line 705
    goto :goto_0

    .line 711
    :cond_1
    if-lez p1, :cond_0

    .line 712
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveCallDate()V

    .line 713
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveSmsDate()V

    goto :goto_1

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startLoadDataTask()V
    .locals 2

    .prologue
    .line 638
    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task not running, just start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    .line 646
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 638
    monitor-exit p0

    .line 648
    return-void

    .line 642
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh task canceled when start"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTask:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->cancel(Z)Z

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, needRefresh:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->refresh()Z

    move-result v0

    .line 621
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLazyInitWhenResume:Z

    if-eqz v1, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->lazyInit()V

    .line 623
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLazyInitWhenResume:Z

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mLazyInitialized:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLoadDataWhenResume:Z

    if-eqz v1, :cond_3

    .line 627
    iput v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    .line 628
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->startLoadDataTask()V

    .line 629
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLoadDataWhenResume:Z

    goto :goto_0

    .line 632
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 633
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public animClearEndDatahandle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    iput v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    .line 389
    sget-object v0, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearCall:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 390
    sget-object v0, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearSms:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 392
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveCallDate()V

    .line 393
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setSystemNotifyCount(II)V

    .line 394
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveSmsDate()V

    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setSystemNotifyCount(II)V

    .line 403
    return-void
.end method

.method public animClear_animDelItems()V
    .locals 5

    .prologue
    .line 184
    iget v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 186
    .local v0, delayTime:I
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$4;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    .line 196
    int-to-long v3, v0

    .line 186
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void

    .line 184
    .end local v0           #delayTime:I
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public animClear_cancalAnimUnion(I)V
    .locals 9
    .parameter "op"

    .prologue
    const v8, 0x7f080107

    const v7, 0x7f080106

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTitle:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_alpha_100_to_0:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->getGuideLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_trans_left_to_right:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 209
    .local v1, t:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 211
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->getGuideLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 218
    .end local v1           #t:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 219
    .local v0, m:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 220
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 221
    new-instance v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$5;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 252
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTitle:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->getGuideLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 254
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_trans_right_to_left:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 256
    .restart local v1       #t:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 258
    new-instance v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$6;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->getGuideLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public animClear_getanimDelItem(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "curItemIndex"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    .local v0, animClear_animDelItems:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->tArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$3;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    :cond_0
    return-object v0
.end method

.method public animClear_loadAnims()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    .line 141
    const v1, 0x7f040018

    .line 140
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_trans_left_to_right:Landroid/view/animation/Animation;

    .line 142
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    .line 143
    const v1, 0x7f040019

    .line 142
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_trans_right_to_left:Landroid/view/animation/Animation;

    .line 144
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_alpha_0_to_100:Landroid/view/animation/Animation;

    .line 145
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_alpha_100_to_0:Landroid/view/animation/Animation;

    .line 146
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->ani_del_items:Landroid/view/animation/Animation;

    .line 147
    return-void
.end method

.method public declared-synchronized lazyInit()V
    .locals 7

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    sget-object v4, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v5, "xhh: oncreate view"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 297
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000e

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->initRootView(Landroid/view/View;)V

    .line 299
    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 301
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    new-instance v5, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$7;

    invoke-direct {v5, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$7;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v4, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->initData()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;Landroid/app/Activity;Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    .line 315
    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mTitle:Landroid/widget/FrameLayout;

    .line 316
    const v4, 0x7f08004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    .line 317
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 318
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 322
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 323
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f040017

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 324
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListviewAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 326
    sget-object v4, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v5, "xhh createview end"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mItemAnimCount:I

    .line 329
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->refresh()Z

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->startLoadDataTask()V

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 335
    const v5, 0x7f040001

    .line 334
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 336
    .local v1, fadeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 337
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->lazyInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 290
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #fadeInAnim:Landroid/view/animation/Animation;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public notifyRemoveItem(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;I)V
    .locals 3
    .parameter "collection"
    .parameter "position"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 446
    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    :cond_0
    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->default_size:I

    if-ne v0, v2, :cond_1

    .line 449
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "reset data"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->initCollectionData()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    move-result-object p1

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setData(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->notifyDataSetChanged()V

    .line 444
    monitor-exit v1

    .line 455
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh oncreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "system"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->pageLockFrom:Ljava/lang/String;

    .line 126
    invoke-static {v2}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveCallDate(Ljava/lang/String;)V

    .line 127
    invoke-static {v2}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveSmsDate(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mNeedLoadDataWhenResume:Z

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mSmsObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$SMSObserver;->register()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mCallObserver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CallObserver;->register()V

    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mIconClickedReceiver:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->register()V

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->animClear_loadAnims()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 679
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh ondestroy"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->release()V

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->destroy()V

    .line 685
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onDestroy()V

    .line 686
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 690
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh on destroyview"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onDestroyView()V

    .line 692
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "pageIndex"

    .prologue
    .line 343
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 652
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh onpause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onPause()V

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mActive:Z

    .line 659
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->showing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearUserGuide:Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->finish(IZ)V

    .line 661
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 605
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh onresume"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onResume()V

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mActive:Z

    .line 608
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->startTask()V

    .line 614
    return-void
.end method

.method public removeItemAnimation(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "collection"
    .parameter "position"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 459
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 460
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 461
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$8;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 480
    :cond_0
    return-object v0
.end method
