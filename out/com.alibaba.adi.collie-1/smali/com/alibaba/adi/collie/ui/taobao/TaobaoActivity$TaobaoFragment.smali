.class public Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
.source "TaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaobaoFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;,
        Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private all_order:Landroid/widget/TextView;

.field cacheYuebaoBitmapRunnable:Ljava/lang/Runnable;

.field private footView:Landroid/widget/RelativeLayout;

.field private headerView:Landroid/widget/RelativeLayout;

.field private lastVisiable:Z

.field private mActive:Z

.field private mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

.field private mBtn:Landroid/widget/LinearLayout;

.field private mBtnContent:Landroid/widget/TextView;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

.field private mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

.field private mNeedRefreshTbtrackingWhenResume:Z

.field private mNeedRefreshYuebaoWhenResume:Z

.field private final mNotifyReceiver:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;

.field private mTaobaoContent:Landroid/widget/TextView;

.field private mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

.field private mValue:Ljava/lang/String;

.field private mYuebaoAnnualRate:Landroid/widget/TextView;

.field private mYuebaoDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/YuebaoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->lastVisiable:Z

    .line 92
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshTbtrackingWhenResume:Z

    .line 93
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshYuebaoWhenResume:Z

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z

    .line 95
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    .line 340
    new-instance v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$1;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->cacheYuebaoBitmapRunnable:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/view/ChartView;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setTaoTrackingView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshTbtrackingWhenResume:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshYuebaoWhenResume:Z

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->showTips(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    return-object v0
.end method

.method public static newInstance()Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
    .locals 4

    .prologue
    .line 103
    const-string v2, "xhh"

    const-string v3, "tao new instance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v3, "CountingFragment newInstance"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;-><init>()V

    .line 106
    .local v1, f:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v1
.end method

.method private setTaoTrackingView(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v1, v2, :cond_2

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, taoDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    if-eqz p1, :cond_0

    .line 189
    move-object v0, p1

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->setData(Ljava/util/List;)V

    .line 196
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtn:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->all_order:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v0           #taoDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :goto_2
    return-void

    .line 192
    .restart local v0       #taoDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :cond_0
    const-string v1, "tb_tracking_data"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 191
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJsonStr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtn:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    const v3, 0x7f0a00ca

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 207
    .end local v0           #taoDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :cond_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    monitor-enter v2

    .line 208
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->setData(Ljava/util/List;)V

    .line 209
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtnImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtnContent:Landroid/widget/TextView;

    const v3, 0x7f0a00cc

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtnImage:Landroid/widget/ImageView;

    const v3, 0x7f0200c2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    const v3, 0x7f0a00cb

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->all_order:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private showTips(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 468
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/TipsBox;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 469
    const v2, 0x7f08004f

    .line 468
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 470
    .local v0, tipsBox:Lcom/alibaba/adi/collie/ui/view/TipsBox;
    return-void
.end method


# virtual methods
.method public declared-synchronized initYuebao()V
    .locals 8

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    const-string v2, "yuebao_data"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getYuebaoListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    .line 140
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/view/ChartView;->setData(Ljava/util/List;)V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoAnnualRate:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 144
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getDateObj()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 146
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    .line 147
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getQrnh()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    .line 145
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoAnnualRate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->cacheYuebaoBitmapRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/view/ChartView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized lazyInit()V
    .locals 6

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 269
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000f

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->initRootView(Landroid/view/View;)V

    .line 273
    const v3, 0x7f08004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    .line 274
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    invoke-virtual {v3, p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 277
    const v4, 0x7f030084

    const/4 v5, 0x0

    .line 276
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->headerView:Landroid/widget/RelativeLayout;

    .line 278
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->headerView:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 279
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->addHeaderView(Landroid/view/View;)V

    .line 281
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    new-instance v4, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setOnRefreshListener(Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;)V

    .line 298
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 299
    const v4, 0x7f030085

    const/4 v5, 0x0

    .line 298
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->footView:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->footView:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 301
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->footView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->addFooterView(Landroid/view/View;)V

    .line 302
    new-instance v3, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    .line 303
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 305
    const v3, 0x7f0801ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTaobaoContent:Landroid/widget/TextView;

    .line 306
    const v3, 0x7f0801ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtn:Landroid/widget/LinearLayout;

    .line 307
    const v3, 0x7f0801af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtnContent:Landroid/widget/TextView;

    .line 308
    const v3, 0x7f0801ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtnImage:Landroid/widget/ImageView;

    .line 309
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v3, 0x7f0801b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/ui/view/ChartView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mChartView:Lcom/alibaba/adi/collie/ui/view/ChartView;

    .line 312
    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mYuebaoAnnualRate:Landroid/widget/TextView;

    .line 313
    const v3, 0x7f0801b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->all_order:Landroid/widget/TextView;

    .line 314
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->all_order:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->initYuebao()V

    .line 331
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setTaoTrackingView(Ljava/util/List;)V

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 334
    const v4, 0x7f040001

    .line 333
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 335
    .local v0, fadeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->lazyInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 263
    .end local v0           #fadeInAnim:Landroid/view/animation/Animation;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #view:Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 224
    :pswitch_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const-string v3, "TryToBindingTaobao"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f0801ad
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 117
    sget-object v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v1, "CountingFragment onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->register()V

    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "taobao"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->pageLockFrom:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNotifyReceiver:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->unregister()V

    .line 166
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 245
    const-string v1, "LogisticsContext"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/service/TaoItem;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/TaoItem;->getWapDetail()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, taoUrl:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 253
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :cond_2
    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "pageIndex"

    .prologue
    .line 476
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z

    .line 160
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onResume()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshTbtrackingWhenResume:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setTaoTrackingView(Ljava/util/List;)V

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshTbtrackingWhenResume:Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshYuebaoWhenResume:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->initYuebao()V

    .line 133
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshYuebaoWhenResume:Z

    .line 135
    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .parameter "isVisibleToUser"

    .prologue
    .line 171
    sget-object v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh tao visiable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->lastVisiable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 174
    sget-object v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh tao set new to false, when user leave"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->resetDataNewStatus()V

    .line 177
    const-string v0, "tb_tracking_new_ids"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->lastVisiable:Z

    .line 182
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->setUserVisibleHint(Z)V

    .line 183
    return-void

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
