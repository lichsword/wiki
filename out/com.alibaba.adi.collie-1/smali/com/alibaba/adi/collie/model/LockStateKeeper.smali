.class public Lcom/alibaba/adi/collie/model/LockStateKeeper;
.super Ljava/lang/Object;
.source "LockStateKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;
    }
.end annotation


# static fields
.field public static final ADI_LOCK_STATE_LOCKED:Ljava/lang/String; = "adi_lock_state_locked"

.field private static final LOCKED_NOTIFICATION_DELAY_TIME:I = 0x4b0

.field public static final TAG:Ljava/lang/String;

.field private static final mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/alibaba/adi/collie/model/LockStateKeeper;


# instance fields
.field private isNotified:Z

.field private mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Ljava/lang/Boolean;

.field private mIsBound:Ljava/lang/Boolean;

.field private mLocked:Ljava/lang/Boolean;

.field private mNoticeManager:Landroid/app/NotificationManager;

.field private mScreenState:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

.field private mShowNontification:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mEnabled:Ljava/lang/Boolean;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    .line 62
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    .line 63
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;->OFF:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mScreenState:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    .line 65
    new-instance v0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;-><init>(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mConnection:Landroid/content/ServiceConnection;

    .line 89
    new-instance v0, Lcom/alibaba/adi/collie/model/LockStateKeeper$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper$2;-><init>(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mShowNontification:Ljava/lang/Runnable;

    .line 98
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mNoticeManager:Landroid/app/NotificationManager;

    .line 101
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    const-string v1, "LockStateKeeper: constructor"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/model/LockStateKeeper;Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/model/LockStateKeeper;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->showLockedNotification()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mInstance:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mInstance:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mInstance:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mInstance:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showLockedNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mScreenState:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    sget-object v3, Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;->OFF:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    if-ne v2, v3, :cond_0

    .line 267
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    .line 254
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 256
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 262
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 263
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 265
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mNoticeManager:Landroid/app/NotificationManager;

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 266
    iput-boolean v7, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    goto :goto_0
.end method


# virtual methods
.method public bindService()V
    .locals 5

    .prologue
    .line 221
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 223
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelKeepLock()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelLockedNotification()V

    .line 204
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mShowNontification:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;->stopCheckLockState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_2
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelLockedNotification()V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mShowNontification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mNoticeManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    .line 279
    :cond_0
    return-void
.end method

.method public isLocked()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;->isLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendKeepLock()V
    .locals 5

    .prologue
    .line 174
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isNotified:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelLockedNotification()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mShowNontification:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;->checkLockState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mEnabled:Ljava/lang/Boolean;

    .line 150
    return-void
.end method

.method public setLockState(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "isLocked"

    .prologue
    .line 126
    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setLockState: mLocked="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelKeepLock()V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;->setLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;

    .line 138
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setScreenState(Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelLockedNotification()V

    .line 287
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mScreenState:Lcom/alibaba/adi/collie/model/LockStateKeeper$ScreenState;

    .line 288
    return-void
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;

    .line 243
    :cond_0
    return-void
.end method
