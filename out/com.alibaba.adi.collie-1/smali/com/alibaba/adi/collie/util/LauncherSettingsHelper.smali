.class public Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
.super Ljava/lang/Object;
.source "LauncherSettingsHelper.java"


# static fields
.field public static final DEFAULT_LAUNCHER_NAME:Ljava/lang/String; = "com.android.launcher2.Launcher"

.field public static final DEFAULT_LAUNCHER_PACKAGENAME:Ljava/lang/String; = "com.android.launcher"

.field private static final SYSTEM_LAUNCHER_NOT_CHOOSE_NAME:Ljava/lang/String; = "com.android.internal.app.ResolverActivity"

.field private static final SYSTEM_LAUNCHER__NOT_CHOOSE_PACKAGENAME:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultLauncherName:Landroid/content/ComponentName;

.field private mLauncherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v3, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mDefaultLauncherName:Landroid/content/ComponentName;

    .line 45
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    .line 46
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    .line 48
    const-string v2, "adi_default_home_launcher"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, defaultName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 52
    .local v1, launcherName:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->setDefaultLauncher(Landroid/content/ComponentName;)V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->queryLauncherList()V

    .line 55
    return-void

    .line 51
    .end local v1           #launcherName:Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->decideDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mInstance:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mInstance:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mInstance:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mInstance:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRunningLauncher()Landroid/content/ComponentName;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 246
    iget-object v9, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 247
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 250
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v7, 0x0

    .line 252
    .local v7, runningTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v9, 0xa

    :try_start_0
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 257
    :goto_0
    if-nez v7, :cond_1

    .line 281
    :cond_0
    :goto_1
    return-object v8

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_1
    const/4 v5, 0x0

    .line 262
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 267
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 269
    iget-object v10, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 273
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v10, 0x1

    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 276
    .local v2, info:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    .line 277
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private queryLauncherList()V
    .locals 3

    .prologue
    .line 352
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 353
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, filterIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/high16 v2, 0x1

    .line 356
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mLauncherList:Ljava/util/List;

    .line 359
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mLauncherList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mLauncherList:Ljava/util/List;

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public decideDefaultLauncher()Landroid/content/ComponentName;
    .locals 8

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v4

    .line 122
    .local v4, sysName:Landroid/content/ComponentName;
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getRunningLauncher()Landroid/content/ComponentName;

    move-result-object v3

    .line 123
    .local v3, runningName:Landroid/content/ComponentName;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getLauncherList(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysLauncherComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 126
    .local v1, launcherName:Landroid/content/ComponentName;
    sget-object v5, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decideDefaultLauncher: sys = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " running = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v4, :cond_1

    .line 128
    const-string v5, "android"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    move-object v1, v4

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 131
    :cond_1
    if-eqz v3, :cond_2

    .line 132
    iget-object v5, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    move-object v1, v3

    .line 134
    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 135
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 136
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_3

    .line 137
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #launcherName:Landroid/content/ComponentName;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .restart local v1       #launcherName:Landroid/content/ComponentName;
    :cond_3
    sget-object v5, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decideDefaultLauncher: list = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLauncher()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mDefaultLauncherName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLauncherList(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 5
    .parameter "excludeApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->queryLauncherList()V

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mLauncherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :goto_1
    return-object v1

    .line 161
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 163
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mLauncherList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1
.end method

.method public getRunningTopActivity()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-object v5, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 295
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 297
    .local v2, runningTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    :goto_0
    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_1
    return-object v4

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    .local v3, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public getSysDefaultLauncher()Landroid/content/ComponentName;
    .locals 8

    .prologue
    .line 220
    iget-object v5, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 221
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, filterIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/high16 v5, 0x1

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 226
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 227
    const/4 v5, 0x0

    .line 234
    :goto_0
    return-object v5

    .line 229
    :cond_0
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 230
    .local v2, launcherName:Ljava/lang/String;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 232
    .local v4, packageName:Ljava/lang/String;
    sget-object v5, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSysDefaultLauncher: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSysLauncherComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasActivityInRunningTask(Landroid/content/ComponentName;)Z
    .locals 10
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 317
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v6

    .line 320
    :cond_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 323
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 325
    .local v3, runningTaskInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 330
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 334
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 335
    .local v4, taskArray:[Ljava/lang/Object;
    array-length v8, v4

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v2, v4, v7

    .local v2, info:Ljava/lang/Object;
    move-object v5, v2

    .line 336
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 337
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v5, :cond_3

    .line 335
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 326
    .end local v2           #info:Ljava/lang/Object;
    .end local v4           #taskArray:[Ljava/lang/Object;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 340
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v2       #info:Ljava/lang/Object;
    .restart local v4       #taskArray:[Ljava/lang/Object;
    .restart local v5       #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 341
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public hasChoseLauncher()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 209
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 210
    const-string v1, "android"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isDefaultLauncher()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 197
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setDefaultLauncher(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mDefaultLauncherName:Landroid/content/ComponentName;

    .line 101
    const-string v0, "adi_default_home_launcher"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAppDetailSettings(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, detailIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
