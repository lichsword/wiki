.class public Lcom/alibaba/adi/collie/ui/view/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_GRADE:Ljava/lang/String; = "dialog_grade"

.field public static final DIALOG_TAOBAO:Ljava/lang/String; = "dialog_taobao"

.field public static final DIALOG_YUEBAO:Ljava/lang/String; = "dialog_yuebao"


# instance fields
.field context:Landroid/content/Context;

.field private isTaobaoOrYuebao:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "type"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->type:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private initGradeView()V
    .locals 3

    .prologue
    .line 56
    const v2, 0x7f030029

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->setContentView(I)V

    .line 57
    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, bad:Landroid/widget/TextView;
    const v2, 0x7f0800d5

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, good:Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private initTaobaoOrYuebaoView()V
    .locals 6

    .prologue
    .line 64
    const v4, 0x7f030034

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->setContentView(I)V

    .line 65
    const v4, 0x7f0800e3

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, cancel:Landroid/widget/TextView;
    const v4, 0x7f0800e4

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, install:Landroid/widget/TextView;
    const v4, 0x7f0800e1

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0800e2

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, content:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->isTaobaoOrYuebao:Z

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->type:Ljava/lang/String;

    const-string v1, "dialog_grade"

    if-ne v0, v1, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->initGradeView()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->type:Ljava/lang/String;

    const-string v1, "dialog_yuebao"

    if-ne v0, v1, :cond_2

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->isTaobaoOrYuebao:Z

    .line 48
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->initTaobaoOrYuebaoView()V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->type:Ljava/lang/String;

    const-string v1, "dialog_taobao"

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->isTaobaoOrYuebao:Z

    .line 51
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->initTaobaoOrYuebaoView()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800d3

    if-ne v1, v2, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->dismiss()V

    .line 93
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800d5

    if-ne v1, v2, :cond_2

    .line 87
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/Tools;->grade(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800e4

    if-ne v1, v2, :cond_0

    .line 89
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->isTaobaoOrYuebao:Z

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/Tools;->startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/CustomDialog;->initView()V

    .line 41
    return-void
.end method
