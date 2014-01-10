.class public Lcom/alibaba/adi/collie/ui/view/PushCenterView;
.super Lcom/alibaba/adi/collie/ui/view/PushBaseView;
.source "PushCenterView.java"


# instance fields
.field private rightArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->initContentView()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->initContentView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->initContentView()V

    .line 26
    return-void
.end method

.method private initContentView()V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03008c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0801c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->rightArrow:Landroid/widget/ImageView;

    .line 43
    const v2, 0x7f0801c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->icon:Landroid/widget/ImageView;

    .line 44
    const v2, 0x7f0801c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->text:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0801c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->close:Landroid/widget/ImageView;

    .line 47
    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->share:Landroid/view/View;

    .line 49
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->close:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->close:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->share:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->share:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method protected getTagForUT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "MiddleNotice"

    return-object v0
.end method

.method protected onSetMsgFinish()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->rightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->rightArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushCenterView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_1
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onSetMsgFinish()V

    .line 67
    return-void

    .line 59
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "push msg is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_2
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "right arrow image view is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
