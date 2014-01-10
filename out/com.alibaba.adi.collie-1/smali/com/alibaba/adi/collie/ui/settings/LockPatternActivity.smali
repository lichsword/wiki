.class public Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;


# instance fields
.field private about_title:Landroid/widget/TextView;

.field private btn_left:Landroid/widget/Button;

.field private btn_right:Landroid/widget/Button;

.field private isCheckLockPwd:Z

.field private mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->about_title:Landroid/widget/TextView;

    const v1, 0x7f0a011a

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    const v1, 0x7f0a0127

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->initView()V

    .line 39
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onClick(Landroid/view/View;)V

    .line 40
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->saveLockPattern()V

    .line 33
    const-string v1, "lock_type"

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_PIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->setContentView(I)V

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isCheckLockPwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->isCheckLockPwd:Z

    .line 48
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->about_title:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    .line 50
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    .line 51
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setOnLockPatternStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->mLockPatternViewLinearLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->isCheckLockPwd:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->startLockPatternStatusMachine(Z)V

    .line 55
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->initView()V

    .line 56
    return-void
.end method

.method public onStatusConfirmInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    return-void
.end method

.method public onStatusConfirmInputError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public onStatusConfirmLastPassword()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 114
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public onStatusConfirmPasswordSuccess()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->finish()V

    .line 125
    return-void
.end method

.method public onStatusInit()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public onStatusInitInputError()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 83
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public onStatusInitInputSuccess()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    return-void
.end method
