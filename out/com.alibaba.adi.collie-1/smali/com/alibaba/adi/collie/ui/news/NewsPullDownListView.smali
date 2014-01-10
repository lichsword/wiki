.class public Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
.super Lcom/alibaba/adi/collie/ui/view/PullDownListView;
.source "NewsPullDownListView.java"


# instance fields
.field private mFooterView:Landroid/view/View;

.field private mHeaderImageView:Landroid/widget/ImageView;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/PullDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->onDirectRefresh()V

    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 33
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0161

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0162

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {p0, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setHintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030083

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mFooterView:Landroid/view/View;

    .line 38
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mFooterView:Landroid/view/View;

    new-instance v4, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030086

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, logoView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setHeadLogoView(Landroid/view/View;)V

    .line 52
    const v3, 0x7f030087

    .line 51
    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderView:Landroid/view/View;

    .line 53
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0801b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    .line 54
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0801b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 55
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    const v4, 0x7f0a0158

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 56
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    div-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 57
    .local v2, padding:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    .line 58
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 60
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 61
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    .line 57
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 64
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 65
    add-int/lit8 v5, v2, -0x14

    .line 66
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 67
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 63
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 70
    const-string v3, "news_last_refresh_time"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setLastRefreshTimeKey(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public addHintFooterView()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->addFooterView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public addHintHeaderView()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->addHeaderView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setFooterVisibility(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public setHeaderVisiability(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    return-void
.end method
