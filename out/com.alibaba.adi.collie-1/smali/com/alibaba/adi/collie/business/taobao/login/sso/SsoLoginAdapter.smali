.class public Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
.super Ljava/lang/Object;
.source "SsoLoginAdapter.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/taobao/login/ILoginAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SsoLoginAdapter"


# instance fields
.field private final mBaseContext:Landroid/content/Context;

.field private mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

.field tsdkParam:Lcom/taobao/android/ssologin/net/TSDKParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "baseContext"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter$1;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->tsdkParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    .line 30
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mBaseContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndroidVersion()Z
    .locals 2

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLoginUserName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->initSsoLogin()V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    if-eqz v2, :cond_1

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-virtual {v2}, Lcom/taobao/android/ssologin/SsoLogin;->getLoginUserName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 130
    :cond_1
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
    invoke-virtual {v0}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0           #e:Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getmSsoLogin()Lcom/taobao/android/ssologin/SsoLogin;
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initSsoLogin()V
    .locals 4

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->tsdkParam:Lcom/taobao/android/ssologin/net/TSDKParam;

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/ssologin/net/TSDKParam;)V

    .line 39
    .local v0, ssoLoginRequest:Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;
    new-instance v1, Lcom/taobao/android/ssologin/SsoLogin;

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mBaseContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/taobao/android/ssologin/SsoLogin;-><init>(Lcom/taobao/android/ssologin/SsoLoginRequest;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 37
    .end local v0           #ssoLoginRequest:Lcom/taobao/android/ssologin/net/TSDKSsoLoginRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->checkAndroidVersion()Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    new-instance v5, Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;

    invoke-direct {v5}, Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;-><init>()V

    throw v5

    .line 52
    :cond_0
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    if-nez v6, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->initSsoLogin()V

    .line 56
    :cond_1
    new-instance v2, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;-><init>()V

    .line 58
    .local v2, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-virtual {v6}, Lcom/taobao/android/ssologin/SsoLogin;->Login()Lcom/taobao/android/ssologin/SsoLoginResult;

    move-result-object v3

    .line 60
    .local v3, result:Lcom/taobao/android/ssologin/SsoLoginResult;
    instance-of v6, v3, Lcom/taobao/android/ssologin/TaoSsoLoginResult;

    if-eqz v6, :cond_3

    .line 61
    move-object v0, v3

    check-cast v0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;

    move-object v4, v0

    .line 62
    .local v4, taoSsoLoginResult:Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    invoke-virtual {v4}, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mSid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSessionId(Ljava/lang/String;)V

    .line 64
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mEcode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->seteCode(Ljava/lang/String;)V

    .line 65
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mNick:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setNickName(Ljava/lang/String;)V

    .line 66
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mLoginTime:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginTime(Ljava/lang/String;)V

    .line 67
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mTopsession:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setTopSession(Ljava/lang/String;)V

    .line 68
    iget-object v6, v4, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mUserid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setUserId(Ljava/lang/String;)V

    .line 69
    sget-object v6, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;->SSO:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    invoke-virtual {v2, v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginMode(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;)V

    .line 70
    const-string v6, "SsoLoginAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ssoLogin return sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v2           #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .end local v3           #result:Lcom/taobao/android/ssologin/SsoLoginResult;
    .end local v4           #taoSsoLoginResult:Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    :goto_0
    return-object v2

    .line 73
    .restart local v2       #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .restart local v3       #result:Lcom/taobao/android/ssologin/SsoLoginResult;
    .restart local v4       #taoSsoLoginResult:Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    :cond_2
    const-string v6, "SsoLoginAdapter"

    const-string v7, "TaoSsoLoginResult.isSuccess() == false"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 74
    goto :goto_0

    .line 77
    .end local v4           #taoSsoLoginResult:Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    :cond_3
    const-string v6, "SsoLoginAdapter"

    const-string v7, "ssoLogin returned object is not instance of TaoSsoLoginResult"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 78
    goto :goto_0

    .line 80
    .end local v3           #result:Lcom/taobao/android/ssologin/SsoLoginResult;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SsoLoginAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ssoLogin.login() throws exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 83
    goto :goto_0
.end method

.method public logout()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mSsoLogin:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-virtual {v2, v1}, Lcom/taobao/android/ssologin/SsoLogin;->logout(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .end local v1           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 94
    .restart local v1       #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
    const-string v2, "SsoLoginAdapter"

    const-string v3, "SSO logout error!"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0           #e:Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "SsoLoginAdapter"

    const-string v3, "SSO logout error!"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_0
    const-string v2, "SsoLoginAdapter"

    const-string v3, "SSO logout skipped, because no SSO user is shared"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    const-string v2, "SsoLoginAdapter"

    const-string v3, "SSO logout skipped, because it was not logged-in"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
