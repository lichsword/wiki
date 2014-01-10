.class public Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;
.super Ljava/lang/Object;
.source "TaoAccountPersistence.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountPersistance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deleteAccount(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;

    monitor-enter v1

    :try_start_0
    const-string v0, "tao_sid"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "tao_loginMode"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "tao_ecode"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "tao_nick"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "tao_userId"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "tao_topSession"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "tao_loginTime"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "tao_ssoToken"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "tao_autoLoginToken"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 59
    const-class v5, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;

    monitor-enter v5

    :try_start_0
    new-instance v2, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;-><init>()V

    .line 60
    .local v2, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    const-string v4, "tao_sid"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, sid:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSessionId(Ljava/lang/String;)V

    .line 64
    const-string v4, "tao_loginMode"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 65
    .local v1, loginMode:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 67
    :try_start_1
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginMode(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "tao_ecode"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->seteCode(Ljava/lang/String;)V

    .line 74
    const-string v4, "tao_nick"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setNickName(Ljava/lang/String;)V

    .line 75
    const-string v4, "tao_userId"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setUserId(Ljava/lang/String;)V

    .line 76
    const-string v4, "tao_topSession"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setTopSession(Ljava/lang/String;)V

    .line 77
    const-string v4, "tao_loginTime"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginTime(Ljava/lang/String;)V

    .line 78
    const-string v4, "tao_ssoToken"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSsoToken(Ljava/lang/String;)V

    .line 79
    const-string v4, "tao_autoLoginToken"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setAutoLoginToken(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v1           #loginMode:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    return-object v2

    .line 68
    .restart local v1       #loginMode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "AccountPersistance"

    const-string v6, "unable to translate from String to LoginMode"

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #loginMode:Ljava/lang/String;
    .end local v2           #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .end local v3           #sid:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized loadSsoSharedUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;

    monitor-enter v1

    :try_start_0
    const-string v0, "tao_ssoSharedUserName"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveAccount(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V
    .locals 3
    .parameter "loginResult"

    .prologue
    .line 16
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 19
    :cond_1
    :try_start_1
    const-string v0, "tao_sid"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getLoginMode()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    const-string v0, "tao_loginMode"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getLoginMode()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->geteCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    const-string v0, "tao_ecode"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->geteCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 27
    const-string v0, "tao_nick"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    const-string v0, "tao_userId"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getTopSession()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    const-string v0, "tao_topSession"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getTopSession()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getLoginTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 36
    const-string v0, "tao_loginTime"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 39
    const-string v0, "tao_ssoToken"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSsoToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 42
    const-string v0, "tao_autoLoginToken"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_9
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized saveSsoSharedUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "userName"

    .prologue
    .line 89
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;

    monitor-enter v1

    :try_start_0
    const-string v0, "tao_ssoSharedUserName"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v1

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
