.class public Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "BindAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;,
        Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;,
        Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BindAccountsActivity"


# instance fields
.field private final REQUEST_CODE_UNBIND_TAOBAO:I

.field mTaoLogoutNotifyHandler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

.field private mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

.field mTaobaoBindClickListener:Landroid/view/View$OnClickListener;

.field private mTaobaoLayout:Landroid/view/ViewGroup;

.field mTaobaoUnbindClickListener:Landroid/view/View$OnClickListener;

.field mWeiboBindClickListener:Landroid/view/View$OnClickListener;

.field mWeiboUnbindClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 105
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mWeiboBindClickListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoBindClickListener:Landroid/view/View$OnClickListener;

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->REQUEST_CODE_UNBIND_TAOBAO:I

    .line 148
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoUnbindClickListener:Landroid/view/View$OnClickListener;

    .line 183
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mWeiboUnbindClickListener:Landroid/view/View$OnClickListener;

    .line 323
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutNotifyHandler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->refreshBinding()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method private initContentData()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method private initContentView()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoLayout:Landroid/view/ViewGroup;

    .line 61
    return-void
.end method

.method private refreshBinding()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 84
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v2, v3, :cond_0

    .line 85
    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget-object v3, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->TAOBAO:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Landroid/view/LayoutInflater;Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;)V

    .line 86
    .local v1, actUnbind:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;->attachToRoot(Landroid/view/ViewGroup;)V

    .line 103
    .end local v1           #actUnbind:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountUnBind;
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget-object v3, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;->TAOBAO:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Landroid/view/LayoutInflater;Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountType;)V

    .line 89
    .local v0, actBind:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaobaoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$AccountBind;->attachToRoot(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "errMsg"

    .prologue
    .line 219
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00f8

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    .local v0, errBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$6;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method private showTaoLogoutProgressDialog()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    .line 212
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a00f6

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a00f7

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 128
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 130
    :pswitch_1
    const-string v0, "ConfirmToUnBindingTaobao"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTUpdateUserAccount(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->showTaoLogoutProgressDialog()V

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutNotifyHandler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 133
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->logout(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V

    goto :goto_0

    .line 137
    :pswitch_2
    const-string v0, "CancelUnBindingTaobao"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->initContentView()V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->initContentData()V

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->refreshBinding()V

    .line 71
    return-void
.end method
