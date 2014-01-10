.class public Lcom/alibaba/adi/collie/CoreApplication;
.super Landroid/app/Application;
.source "CoreApplication.java"

# interfaces
.implements Landroid/taobao/apirequest/IEcodeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;,
        Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;,
        Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;,
        Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static packageName:Ljava/lang/String;

.field public static processName:Ljava/lang/String;

.field public static sDebug:Z

.field public static sDensity:F

.field public static sInstance:Lcom/alibaba/adi/collie/CoreApplication;

.field private static sNotificationInfo:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

.field public static sScreenSize:[I


# instance fields
.field private final mAdiBroadcastReceiver:Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/CoreApplication;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 434
    new-instance v0, Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;-><init>(Lcom/alibaba/adi/collie/CoreApplication;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication;->mAdiBroadcastReceiver:Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sNotificationInfo:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/CoreApplication;)Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication;->mAdiBroadcastReceiver:Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/CoreApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->initTaoSDK()V

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/CoreApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->initWallpaper()V

    return-void
.end method

.method private checkDefaultLauncher()V
    .locals 4

    .prologue
    .line 475
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v1

    .line 476
    .local v1, launcherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 479
    .local v0, defaultLauncher:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 480
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->decideDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 481
    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->setDefaultLauncher(Landroid/content/ComponentName;)V

    .line 484
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setEnabled(Ljava/lang/Boolean;)V

    .line 486
    return-void
.end method

.method private destroyTaoSDK()V
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->destoryInstance()V

    .line 381
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiRequestMgr;->destroy()V

    .line 382
    return-void
.end method

.method private getDeviceId()V
    .locals 5

    .prologue
    .line 421
    invoke-static {}, Landroid/taobao/deviceid/DeviceIDManager;->getInstance()Landroid/taobao/deviceid/DeviceIDManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 422
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-virtual {v2, v3, v4}, Landroid/taobao/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 424
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    const-wide/16 v2, 0xe10

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    const-string v3, "obtain deviceId timeout"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    const-string v3, "obtain deviceId failed"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initAsync()V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/alibaba/adi/collie/CoreApplication$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication$1;-><init>(Lcom/alibaba/adi/collie/CoreApplication;)V

    .line 376
    .local v0, initAsyncRun:Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 377
    return-void
.end method

.method private initGlobalResource()V
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sNotificationInfo:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sNotificationInfo:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    .line 323
    :cond_0
    return-void
.end method

.method private initTaoSDK()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    .line 393
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    const-string v2, "21579970"

    invoke-virtual {v1, v2}, Landroid/taobao/common/SDKConfig;->setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 394
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    const-string v2, "ea09b68a69334390a4068421936e896f"

    invoke-virtual {v1, v2}, Landroid/taobao/common/SDKConfig;->setGlobalAppSecret(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 395
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/common/SDKConfig;->setGlobalVersion(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 396
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants$MtopConfig;->MTOP_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/taobao/common/SDKConfig;->setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 397
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getGlobalTTID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/common/SDKConfig;->setGlobalTTID(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;

    .line 398
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/taobao/common/SDKConfig;->setGlobalIEcodeProvider(Landroid/taobao/apirequest/IEcodeProvider;)Landroid/taobao/common/SDKConfig;

    .line 399
    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants$MtopConfig;->MTOP_URL:Ljava/lang/String;

    const-string v2, "21579970"

    const-string v3, "anclient"

    .line 400
    const-string v4, ".*taobao.*|.*cdn.*"

    .line 399
    invoke-static {p0, v1, v2, v3, v4}, Landroid/taobao/common/TaoSDK;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/apirequest/ApiRequestMgr;->init(Landroid/content/Context;)V

    .line 402
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v5, v5, v2}, Landroid/taobao/apirequest/ApiRequestMgr;->setTimeout(III)V

    .line 403
    invoke-static {}, Landroid/taobao/deviceid/DeviceIDManager;->getInstance()Landroid/taobao/deviceid/DeviceIDManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 404
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/taobao/deviceid/DeviceIDManager;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getDeviceId()V

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    .line 409
    return-void
.end method

.method private initWallpaper()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    .line 386
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->registerAlarmManager(Landroid/content/Context;)V

    .line 387
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/ttid/TtidPersistence;->checkTtidChanged(Lcom/alibaba/adi/collie/business/ttid/OnTtidChangedListener;)V

    .line 388
    return-void
.end method


# virtual methods
.method public getEcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalTTID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const/high16 v1, 0x7f0a

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@adiscreenlock_android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sNotificationInfo:Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    return-object v0
.end method

.method public initKeyGuardService(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 326
    const-string v3, "adi_lock_enable"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v1, intentKeyGuardSrv:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 337
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v2, intentNetworkSrv:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 340
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->bindService()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    new-instance v2, Lcom/alibaba/adi/collie/util/PerfUtil;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>()V

    .line 241
    .local v2, perf:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 242
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 243
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move v1, v3

    .line 244
    .local v1, debug:Z
    :goto_0
    sput-boolean v1, Lcom/alibaba/adi/collie/CoreApplication;->sDebug:Z

    .line 245
    sput-boolean v1, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    .line 246
    sput-boolean v1, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    .line 249
    sput-boolean v1, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableDebugLog:Z

    .line 252
    .end local v1           #debug:Z
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 253
    const-string v5, "switch log && invoke super"

    invoke-virtual {v2, v5}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 255
    sput-object p0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    .line 256
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/CoreApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/alibaba/adi/collie/util/Tools;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    .line 258
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xhh core application onCreate, process name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v5

    sput-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    .line 260
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    const-string v6, "screen size = %dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v8, v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDensity(Landroid/content/Context;)F

    move-result v3

    sput v3, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    .line 265
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->update()V

    .line 268
    const-string v3, "update shared pref"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->initAsync()V

    .line 273
    const-string v3, "initAsync"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->initGlobalResource()V

    .line 277
    const-string v3, "init GlobalResource"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 280
    invoke-static {p0}, Lorg/lichsword/util/ImageManager;->sInit(Landroid/content/Context;)Lorg/lichsword/util/ImageManager;

    .line 281
    const-string v3, "init ImageManager"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/util/PerfUtil;->mark(Ljava/lang/String;)V

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->checkDefaultLauncher()V

    .line 289
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":keyguard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    :cond_3
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v4, "[Matched]process name :keyguard, so register Agoo...START"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/alibaba/adi/collie/AgooRegister;->register(Landroid/content/Context;)V

    .line 296
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 297
    return-void

    :cond_4
    move v1, v4

    .line 243
    goto/16 :goto_0

    .line 293
    :cond_5
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Register]process name not :keyguard="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 301
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    const-string v1, "xhh core application on ter"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/CoreApplication;->destroyTaoSDK()V

    .line 306
    iget-object v0, p0, Lcom/alibaba/adi/collie/CoreApplication;->mAdiBroadcastReceiver:Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->unbindService()V

    .line 311
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->processName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":keyguard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    :cond_2
    invoke-static {p0}, Lcom/alibaba/adi/collie/AgooRegister;->unRegister(Landroid/content/Context;)V

    .line 315
    :cond_3
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 316
    return-void
.end method
