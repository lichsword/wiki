.class public Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
.super Lcom/alibaba/adi/collie/ui/view/PullDownListView;
.source "JokePullDownListView.java"


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
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->init()V

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
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->onDirectRefresh()V

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

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0165

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {p0, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setHintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030083

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mFooterView:Landroid/view/View;

    .line 39
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mFooterView:Landroid/view/View;

    new-instance v4, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030086

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, logoView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setHeadLogoView(Landroid/view/View;)V

    .line 53
    const v3, 0x7f030087

    .line 52
    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderView:Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0801b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0801b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 57
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    const v4, 0x7f0a0159

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 58
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    div-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 59
    .local v2, padding:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    .line 60
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 62
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 63
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    .line 59
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 67
    add-int/lit8 v5, v2, -0x14

    .line 68
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 69
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 65
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 72
    const-string v3, "joke_last_refresh_time"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setLastRefreshTimeKey(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public addHintFooterView()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->addFooterView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public addHintHeaderView()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->addHeaderView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setFooterVisisablity(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public setHeaderVisiability(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    return-void
.end method
