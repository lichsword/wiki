.class public Lcom/alibaba/adi/collie/ui/LockLauncherActivity;
.super Landroid/app/Activity;
.source "LockLauncherActivity.java"


# static fields
.field public static final INSTANCE_STATE_ISLOCKED:Ljava/lang/String; = "instance_state_islocked"

.field public static final TAG:Ljava/lang/String;

.field private static volatile sLaunchActivity:Landroid/content/ComponentName;


# instance fields
.field private mHomeChooserShown:Z

.field private mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

.field private mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mHomeChooserShown:Z

    .line 25
    return-void
.end method

.method public static getLauncherActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method private launchActivity(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 125
    sget-object v3, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "launchActivity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchHomeActivity(Landroid/content/Context;)V

    .line 131
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    const/high16 v3, 0x3401

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    const-string v3, "from"

    sget-object v4, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v3, 0x0

    sput-object v3, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    .line 142
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a0180

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchHomeActivity(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchHomeActivity(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 157
    sget-object v3, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v4, "launchHomeActivity"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 160
    .local v0, defaultLauncher:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 161
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->decideDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v3, v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->setDefaultLauncher(Landroid/content/ComponentName;)V

    .line 165
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    const/high16 v3, 0x3441

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a017f

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 180
    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mHomeChooserShown:Z

    if-nez v3, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchHomeSettingsActivity(Landroid/content/Context;)V

    .line 183
    :cond_1
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchHomeSettingsActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 195
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v2, "launchHomeSettingsActivity"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, startIntent:Landroid/content/Intent;
    const/high16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string v1, "show_dialog_id"

    .line 200
    const/4 v2, 0x3

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mHomeChooserShown:Z

    .line 203
    return-void
.end method

.method private launchLockActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 213
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v2, "launchLockActivity"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, startIntent:Landroid/content/Intent;
    const/high16 v1, 0x3401

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    const-string v1, "from"

    sget-object v2, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public static setLaunchActivity(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 109
    sput-object p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->setContentView(I)V

    .line 44
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    .line 45
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v1, "instance_state_islocked"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, lockState:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 94
    .end local v0           #lockState:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 50
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mHomeChooserShown:Z

    .line 53
    const-string v1, "adi_lock_enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    .local v0, lockEnable:Ljava/lang/Boolean;
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->sLaunchActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchActivity(Landroid/content/ComponentName;)V

    .line 70
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLauncherSettings:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->hasActivityInRunningTask(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchHomeActivity(Landroid/content/Context;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchLockActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->launchHomeActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 99
    sget-object v0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "instance_state_islocked"

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
