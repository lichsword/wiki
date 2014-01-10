.class public Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "LockNumberActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;


# instance fields
.field private about_title:Landroid/widget/TextView;

.field private isCheckLockPwd:Z

.field private mLockNumViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->setContentView(I)V

    .line 21
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isCheckLockPwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->isCheckLockPwd:Z

    .line 24
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->about_title:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->about_title:Landroid/widget/TextView;

    const v1, 0x7f0a0130

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->mLockNumViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    .line 27
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->mLockNumViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->isCheckLockPwd:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setCheckLockPwd(Z)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->mLockNumViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setOnLockNumStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;)V

    .line 29
    return-void
.end method

.method public onStatusCancel()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->finish()V

    .line 53
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->finish()V

    .line 47
    return-void
.end method

.method public onStatusLockSuccess()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;->finish()V

    .line 37
    return-void
.end method
