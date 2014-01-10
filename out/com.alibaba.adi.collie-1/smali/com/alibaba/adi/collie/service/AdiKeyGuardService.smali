.class public Lcom/alibaba/adi/collie/service/AdiKeyGuardService;
.super Lcom/taobao/security/proc/SEService;
.source "AdiKeyGuardService.java"


# static fields
.field private static final ACTIVITY_WATCH_CHECK_DELAY_TIME:I = 0x3e8

.field private static final CHECK_LOCKSTATE_DELAY_TIME:I = 0x10

.field private static final EXCLUDE_NAME_KEYWORD:[Ljava/lang/String; = null

.field public static final SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final TAG:Ljava/lang/String;

.field private static volatile isLocked:Ljava/lang/Boolean;

.field private static mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;


# instance fields
.field private isWatchChecking:Z

.field private mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

.field private final mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

.field private final mRunCheckLockState:Ljava/lang/Runnable;

.field private final mRunDisableKeyguard:Ljava/lang/Runnable;

.field private mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mWatchCheckRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    const-class v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alarm"

    aput-object v2, v0, v1

    const-string v1, "clock"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "phone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->EXCLUDE_NAME_KEYWORD:[Ljava/lang/String;

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isLocked:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/taobao/security/proc/SEService;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    .line 38
    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    .line 40
    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    .line 374
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$2;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunDisableKeyguard:Ljava/lang/Runnable;

    .line 384
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunCheckLockState:Ljava/lang/Runnable;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isWatchChecking:Z

    .line 446
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mWatchCheckRunnable:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunCheckLockState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->setKeyguardStatus(Z)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isLocked:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isLocked:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isTopActivityInTask()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Z
    .locals 1
    .parameter

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isExcludeTopActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->startWatchCheck()V

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->launchMainActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mWatchCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->stopWatchCheck()V

    return-void
.end method

.method public static declared-synchronized disableKeyguard()V
    .locals 3

    .prologue
    .line 287
    const-class v1, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 290
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 291
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 293
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit v1

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private disableKeyguardWithHandler()V
    .locals 4

    .prologue
    .line 367
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh user present enable"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->enableKeyguard()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunDisableKeyguard:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method public static declared-synchronized enableKeyguard()V
    .locals 3

    .prologue
    .line 297
    const-class v1, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 300
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 301
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 303
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit v1

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initScreenBroadcastReceiver()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method private initUserPresentReceiver()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$6;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$6;-><init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    return-void
.end method

.method private isExcludeTopActivity()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getRunningTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 406
    .local v0, component:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->isActive()Z

    move-result v6

    if-nez v6, :cond_3

    .line 407
    :cond_0
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->isActive()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    move v1, v4

    .line 408
    .local v1, isActive:Z
    :goto_0
    sget-object v6, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isExcludeTopActivity: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 420
    .end local v1           #isActive:Z
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v1, v5

    .line 406
    goto :goto_0

    .line 412
    .restart local v1       #isActive:Z
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, topName:Ljava/lang/String;
    sget-object v6, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->EXCLUDE_NAME_KEYWORD:[Ljava/lang/String;

    array-length v7, v6

    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v2, v6, v4

    .line 415
    .local v2, keyName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v5

    .line 416
    goto :goto_1

    .line 414
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private isTopActivityInTask()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 314
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 320
    :goto_0
    return-object v3

    .line 317
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getRunningTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 320
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private launchMainActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "from"

    .prologue
    .line 183
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getRunningTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 184
    .local v0, component:Landroid/content/ComponentName;
    sget-object v2, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isLocked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    const-class v2, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v3, "ruibo: MainActivity already on top, no need to startActivity"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, startIntent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v2, "from"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    sget-object v2, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: service start activity, reason = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->registerScreenBroadcastReceiver()V

    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->register(Landroid/app/Service;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->register(Landroid/app/Service;)V

    .line 102
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->registerUserPresentReceiver()V

    .line 103
    return-void
.end method

.method private registerScreenBroadcastReceiver()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->initScreenBroadcastReceiver()V

    .line 109
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private registerUserPresentReceiver()V
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->initUserPresentReceiver()V

    .line 333
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, userPresentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method private setKeyguardStatus(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 350
    if-eqz p1, :cond_1

    .line 351
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunDisableKeyguard:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->enableKeyguard()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh user present input mode"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->disableKeyguardWithHandler()V

    goto :goto_0
.end method

.method private startWatchCheck()V
    .locals 4

    .prologue
    .line 467
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startWatchCheck:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isWatchChecking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isWatchChecking:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isWatchChecking:Z

    .line 470
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mWatchCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    :cond_0
    return-void
.end method

.method private stopWatchCheck()V
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "stopWatchCheck"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isWatchChecking:Z

    .line 480
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mWatchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method


# virtual methods
.method public getFirstStartTime()C
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x32

    return v0
.end method

.method public getStartAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "com.alibaba.adi.collie.AdiKeyGuardService"

    return-object v0
.end method

.method public getStartCount()B
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x3

    return v0
.end method

.method public getStartKind()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh: service onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Lcom/taobao/security/proc/SEService;->onCreate()V

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->loadSo()V

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->initSeServer()V

    .line 233
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->disableKeyguard()V

    .line 234
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->registerReceiver()V

    .line 237
    invoke-static {}, Lcom/alibaba/adi/collie/util/UninstallObserver;->start()V

    .line 238
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh: service onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Lcom/taobao/security/proc/SEService;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mScreenBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->unregister(Landroid/app/Service;)V

    .line 267
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mPhoneStateReceiver:Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->unregister(Landroid/app/Service;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    :cond_3
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->enableKeyguard()V

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->stop()V

    .line 284
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/security/proc/SEService;->onStartCommand(Landroid/content/Intent;II)I

    .line 252
    const/4 v0, 0x1

    return v0
.end method
