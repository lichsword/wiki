.class public Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "BindWeiboActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;,
        Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;
    }
.end annotation


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "2755412918"

.field public static final REDIRECT_URL:Ljava/lang/String; = "https://api.weibo.com/oauth2/default.html"

.field public static final SCOPE:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field mId:J

.field mName:Ljava/lang/String;

.field mShowAccessInfoHandler:Landroid/os/Handler;

.field mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field mWeibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getUserName()V

    return-void
.end method

.method private checkWeiboAccount()V
    .locals 4

    .prologue
    .line 81
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->getWeiboAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    move-result-object v0

    .line 82
    .local v0, account:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getAccessToken()Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getUid()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mId:J

    .line 85
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v2, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v1, "2755412918"

    const-string v2, "https://api.weibo.com/oauth2/default.html"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 90
    new-instance v1, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v1, p0, v2}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 91
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;-><init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V

    invoke-virtual {v1, v2}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private getUserName()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcom/alibaba/adi/collie/business/weibo/api/UsersAPI;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/weibo/api/UsersAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 142
    .local v0, usersAPI:Lcom/alibaba/adi/collie/business/weibo/api/UsersAPI;
    iget-wide v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mId:J

    new-instance v3, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/business/weibo/api/UsersAPI;->show(JLcom/weibo/sdk/android/net/RequestListener;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: weibo auth call back"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->checkWeiboAccount()V

    .line 78
    return-void
.end method
