.class public Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
.super Lcom/alibaba/adi/collie/ui/view/PullDownListView;
.source "TaobaoPullDownListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 26
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setHintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030088

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, logoView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setHeadLogoView(Landroid/view/View;)V

    .line 32
    const-string v2, "taobao_last_refresh_time"

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->setLastRefreshTimeKey(Ljava/lang/String;)V

    .line 33
    return-void
.end method
