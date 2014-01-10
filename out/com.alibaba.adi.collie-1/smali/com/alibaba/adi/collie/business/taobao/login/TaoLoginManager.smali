.class public Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Lcom/taobao/android/ssologin/SsoStatesChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaoLoginManager"

.field private static sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;


# instance fields
.field private final mBaseContext:Landroid/content/Context;

.field private final mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "baseContext"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    .line 56
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->regSsoListener()Ljava/util/concurrent/Future;

    .line 57
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->fetechSsoSharedUserName()Ljava/util/concurrent/Future;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized destoryInstance()V
    .locals 3

    .prologue
    .line 61
    const-class v2, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    iget-object v1, v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->getmSsoLogin()Lcom/taobao/android/ssologin/SsoLogin;

    move-result-object v0

    .line 63
    .local v0, ssoLogin:Lcom/taobao/android/ssologin/SsoLogin;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/taobao/android/ssologin/SsoLogin;->unRegSsoStateListener()V

    .line 66
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    monitor-exit v2

    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private fetechSsoSharedUserName()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$2;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)V

    .line 133
    .local v0, run:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;
    .locals 2
    .parameter "baseContext"

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->sInstance:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private regSsoListener()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)V

    .line 98
    .local v0, regRun:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public autoLoginAsync()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$7;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$7;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)V

    .line 334
    .local v0, autoLoginRun:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public autoLoginSync()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v0

    .line 339
    .local v0, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    :cond_0
    const-string v4, "TaoLoginManager"

    const-string v5, "unable to autoLoginAsync because current login status is invalid"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1
    :goto_0
    return v3

    .line 343
    :cond_2
    new-instance v1, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, mtopAutoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;->login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v2

    .line 345
    .local v2, newLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 348
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setAutoLoginToken(Ljava/lang/String;)V

    .line 350
    :cond_4
    invoke-static {v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveAccount(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V

    .line 351
    const-string v3, "TaoLoginManager"

    const-string v4, "autoLoginAsync succeeded"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getCheckCode(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "handler"

    .prologue
    .line 276
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V

    .line 291
    .local v0, run:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public getLogin()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v0

    return-object v0
.end method

.method public getSharedSsoUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadSsoSharedUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLogIn()Z
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v0

    .line 72
    .local v0, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public login(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "handler"

    .prologue
    .line 145
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V

    .line 179
    .local v0, run:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "userInput"
    .parameter "handler"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "userInput"
    .parameter "checkCode"
    .parameter "handler"

    .prologue
    .line 192
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V

    .line 272
    .local v0, run:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public logout(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 295
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;-><init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V

    .line 324
    .local v0, logoutRunnable:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 325
    return-void
.end method

.method public onSsoLogin(Ljava/lang/String;)V
    .locals 2
    .parameter "userName"

    .prologue
    .line 119
    const-string v0, "TaoLoginManager"

    const-string v1, "onSsoLogin() called"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveSsoSharedUserName(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onSsoLogout()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "TaoLoginManager"

    const-string v1, "onSsoLogout() called"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveSsoSharedUserName(Ljava/lang/String;)V

    .line 115
    return-void
.end method
