.class public Lcom/alibaba/adi/collie/ui/view/PushTopView;
.super Lcom/alibaba/adi/collie/ui/view/PushBaseView;
.source "PushTopView.java"


# instance fields
.field private banner:Landroid/widget/ImageView;

.field private divideLine:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->initContentView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->initContentView()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->initContentView()V

    .line 29
    return-void
.end method

.method private changeToBannerMode()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 77
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v1

    .line 78
    .local v1, manager:Lorg/lichsword/util/ImageManager;
    const/4 v2, 0x0

    .line 80
    .local v2, url:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getIco()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->banner:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->banner:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const-string v5, "push"

    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->text:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->divideLine:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->divideLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :cond_2
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/PushTopView;->TAG:Ljava/lang/String;

    const-string v4, "banner image view is null"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private changeToMixMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->banner:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->banner:Landroid/widget/ImageView;

    const v1, 0x7f0201dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->divideLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->divideLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :cond_3
    return-void
.end method

.method private initContentView()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03008d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0801ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->banner:Landroid/widget/ImageView;

    .line 46
    const v2, 0x7f0801c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->icon:Landroid/widget/ImageView;

    .line 47
    const v2, 0x7f0801c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->text:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f0801c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->close:Landroid/widget/ImageView;

    .line 49
    const v2, 0x7f0801cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->divideLine:Landroid/widget/ImageView;

    .line 55
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->close:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->close:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->share:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->share:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->onElementClick:Lcom/alibaba/adi/collie/ui/view/PushBaseView$OnElementClick;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method protected getTagForUT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "TopNotice"

    return-object v0
.end method

.method protected onSetMsgFinish()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/PushTopView;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->changeToMixMode()V

    .line 70
    :goto_1
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->onSetMsgFinish()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PushTopView;->changeToBannerMode()V

    goto :goto_1
.end method
