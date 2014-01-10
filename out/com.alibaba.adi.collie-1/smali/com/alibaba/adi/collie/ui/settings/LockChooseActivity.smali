.class public Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "LockChooseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initContentView()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->setContentView(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->initContentView()V

    .line 21
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 24
    .local v2, btnUnlockPic:Landroid/widget/RelativeLayout;
    const v3, 0x7f080052

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 25
    .local v1, btnUnlockNum:Landroid/widget/RelativeLayout;
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 27
    .local v0, btnUnlockNone:Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v3, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v3, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
