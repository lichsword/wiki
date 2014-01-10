.class public Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "PrivacyActivity.java"


# instance fields
.field private default_lock_privacy_sms_status:Z

.field private default_lock_privacy_weibo_status:Z

.field private smsSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

.field private weiboSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initContentData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "adi_lock_privacy_sms_key"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->default_lock_privacy_sms_status:Z

    .line 60
    const-string v0, "adi_lock_privacy_weibo_key"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->default_lock_privacy_weibo_status:Z

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->smsSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->default_lock_privacy_sms_status:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->weiboSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->default_lock_privacy_weibo_status:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setChecked(Z)V

    .line 63
    return-void
.end method

.method private initContentView()V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->smsSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    .line 30
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->weiboSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->smsSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->weiboSwitchButton:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->initContentView()V

    .line 23
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->initContentData()V

    .line 24
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
