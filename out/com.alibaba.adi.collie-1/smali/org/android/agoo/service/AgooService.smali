.class public Lorg/android/agoo/service/AgooService;
.super Lorg/android/agoo/proc/SEService;
.source "AgooService.java"

# interfaces
.implements Lorg/android/agoo/message/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/service/AgooService$ReElection;
    }
.end annotation


# static fields
.field private static final MESSAGE_HEAD:Ljava/lang/String; = "head"

.field private static final TAG:Ljava/lang/String; = "AgooService"


# instance fields
.field private volatile alarmManager:Landroid/app/AlarmManager;

.field private volatile appKey:Ljava/lang/String;

.field private volatile appPackage:Ljava/lang/String;

.field private volatile appSecret:Ljava/lang/String;

.field private volatile bindAppPack:Ljava/lang/String;

.field private volatile deviceToken:Ljava/lang/String;

.field private volatile messagePush:Lorg/android/agoo/message/AbsMessage;

.field private final messageServiceBinder:Lorg/android/agoo/service/IMessageService$Stub;

.field private volatile reElection:Lorg/android/agoo/service/AgooService$ReElection;

.field private volatile serviceStartTime:J

.field private volatile ttId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/android/agoo/proc/SEService;-><init>()V

    .line 50
    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    .line 51
    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;

    .line 52
    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->appSecret:Ljava/lang/String;

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->ttId:Ljava/lang/String;

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->deviceToken:Ljava/lang/String;

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;

    .line 337
    new-instance v0, Lorg/android/agoo/service/AgooService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/service/AgooService$1;-><init>(Lorg/android/agoo/service/AgooService;)V

    iput-object v0, p0, Lorg/android/agoo/service/AgooService;->messageServiceBinder:Lorg/android/agoo/service/IMessageService$Stub;

    .line 373
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/service/AgooService;)Lorg/android/agoo/message/AbsMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    return-object v0
.end method

.method static synthetic access$100(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/android/agoo/service/AgooService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/android/agoo/service/AgooService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lorg/android/agoo/service/AgooService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private check()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 80
    const-string v2, "AgooService"

    const-string v3, "mContext == null"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return v1

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->appKey:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->deviceToken:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->appSecret:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->ttId:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->deviceToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    const-string v3, "ERROR_DEVICETOKEN_NULL"

    invoke-direct {p0, v2, v3}, Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, t:Ljava/lang/Throwable;
    goto :goto_0

    .line 91
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_1
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    if-nez v2, :cond_2

    .line 92
    new-instance v2, Lorg/android/agoo/message/MessagePush;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lorg/android/agoo/message/MessagePush;-><init>(Landroid/content/Context;Lorg/android/agoo/message/MessageHandler;)V

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    .line 97
    :cond_2
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/android/agoo/message/AbsMessage;->setAppKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->appSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/android/agoo/message/AbsMessage;->setAppSecret(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->ttId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/android/agoo/message/AbsMessage;->setTtId(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/android/agoo/message/AbsMessage;->setDeviceToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pack"
    .parameter "error"

    .prologue
    .line 288
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    const-string v3, "error"

    invoke-static {v2, v3}, Lorg/android/agoo/client/IntentHelper;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "AgooService"

    const-string v3, "handleError"

    invoke-static {v2, v3, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "pack"
    .parameter "extras"

    .prologue
    .line 306
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    const-string v2, "message_source"

    const-string v3, "apoll"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "AgooService"

    const-string v3, "handleMessage"

    invoke-static {v2, v3, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ifNeedElection()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 172
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return v1

    .line 175
    :cond_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, currentSudoPack:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v2, "AgooService"

    const-string v3, "[currentSudoPack==null]"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0           #currentSudoPack:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 189
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .restart local v0       #currentSudoPack:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    const-string v2, "AgooService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[currentSudoPack("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")!=appPackage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private startPushAndElection()V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    invoke-virtual {v0}, Lorg/android/agoo/message/AbsMessage;->start()V

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    invoke-virtual {v0}, Lorg/android/agoo/service/AgooService$ReElection;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected create()V
    .locals 5

    .prologue
    .line 57
    const-string v2, "AgooService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create--->[current-thread-name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    .line 60
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lorg/android/agoo/service/AgooService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 64
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 65
    .local v1, notification:Landroid/app/Notification;
    const/16 v2, -0x5bd

    invoke-virtual {p0, v2, v1}, Lorg/android/agoo/service/AgooService;->startForeground(ILandroid/app/Notification;)V

    .line 67
    .end local v1           #notification:Landroid/app/Notification;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/android/agoo/service/AgooService;->serviceStartTime:J

    .line 69
    new-instance v2, Lorg/android/agoo/service/AgooService$ReElection;

    invoke-direct {v2, p0}, Lorg/android/agoo/service/AgooService$ReElection;-><init>(Lorg/android/agoo/service/AgooService;)V

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    .line 70
    new-instance v2, Lorg/android/agoo/message/MessagePush;

    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lorg/android/agoo/message/MessagePush;-><init>(Landroid/content/Context;Lorg/android/agoo/message/MessageHandler;)V

    iput-object v2, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    .line 71
    iget-object v2, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/util/ReceiverUtil;->rebootReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "AgooService"

    const-string v3, "create"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected destroy()V
    .locals 4

    .prologue
    .line 208
    :try_start_0
    const-string v1, "AgooService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgooService[current-thread-name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "AgooService"

    const-string v2, "AgooService destroying"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lorg/android/agoo/service/AgooService;->serviceStartTime:J

    invoke-static {v1, v2, v3}, Lorg/android/agoo/log/UTHelper;->agooServiceLog(Landroid/content/Context;J)V

    .line 212
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;

    invoke-virtual {v1}, Lorg/android/agoo/message/AbsMessage;->destroy()V

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->reElection:Lorg/android/agoo/service/AgooService$ReElection;

    invoke-virtual {v1}, Lorg/android/agoo/service/AgooService$ReElection;->destory()V

    .line 218
    :cond_1
    const-string v1, "AgooService"

    const-string v2, "AgooService destroyed"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "AgooService"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, action:Ljava/lang/String;
    const-string v1, "AgooService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.agoo.android.intent.action.PING"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lorg/android/agoo/service/AgooService;->messageServiceBinder:Lorg/android/agoo/service/IMessageService$Stub;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 331
    :catch_0
    move-exception v1

    .line 334
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHandleError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public final onHandleMessage(Ljava/lang/String;)V
    .locals 15
    .parameter "message"

    .prologue
    .line 232
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 279
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v12, "AgooService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onHandleMessage--->[current-thread-name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, json:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 240
    .local v4, head:Lorg/json/JSONObject;
    const/4 v9, 0x0

    .local v9, pack:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, body:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, type:Ljava/lang/String;
    const/4 v5, 0x0

    .line 241
    .local v5, id:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v3, extras:Landroid/os/Bundle;
    new-instance v7, Lorg/json/JSONObject;

    .end local v7           #json:Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v7       #json:Lorg/json/JSONObject;
    const-string v12, "pack"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    const-string v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    const-string v12, "type"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    const-string v12, "body"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 249
    :cond_1
    iget-object v12, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lorg/android/agoo/log/UTHelper;->messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v1           #body:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #head:Lorg/json/JSONObject;
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #json:Lorg/json/JSONObject;
    .end local v9           #pack:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/Throwable;
    iget-object v12, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lorg/android/agoo/log/UTHelper;->messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    const-string v12, "AgooService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "JSONException parse errormessage content["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 252
    .end local v2           #e:Ljava/lang/Throwable;
    .restart local v1       #body:Ljava/lang/String;
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v4       #head:Lorg/json/JSONObject;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v7       #json:Lorg/json/JSONObject;
    .restart local v9       #pack:Ljava/lang/String;
    .restart local v10       #type:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "id"

    invoke-virtual {v3, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v12, "type"

    invoke-virtual {v3, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v12, "body"

    invoke-virtual {v3, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v12, "head"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 258
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, key:Ljava/lang/String;
    const/4 v11, 0x0

    .line 259
    .local v11, value:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_4

    .line 261
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 262
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 265
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 266
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 269
    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 270
    :catch_1
    move-exception v2

    .line 271
    .local v2, e:Lorg/json/JSONException;
    :try_start_3
    const-string v12, "AgooService"

    const-string v13, "JSONException parse error[message header]"

    invoke-static {v12, v13, v2}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 274
    .end local v2           #e:Lorg/json/JSONException;
    :cond_4
    invoke-direct {p0, v9, v3}, Lorg/android/agoo/service/AgooService;->handleMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method protected startComeForAndroidSystem()V
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/log/UTHelper;->agooServiceSecStartLog(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->ifNeedElection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    const-string v1, "ERROR_NEED_ELECTION"

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->startPushAndElection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected startComeForCock()V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/log/UTHelper;->agooServiceSecStartLog(Landroid/content/Context;)V

    .line 155
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->ifNeedElection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;

    const-string v1, "ERROR_NEED_ELECTION"

    invoke-direct {p0, v0, v1}, Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->startPushAndElection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected startCommand(Landroid/content/Intent;II)V
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 129
    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->check()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/client/IntentHelper;->getAgooStart(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, startAction:Ljava/lang/String;
    const-string v3, "AgooService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "method"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, method:Ljava/lang/String;
    const-string v3, "AgooService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCommand method--->["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "start"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService;->startPushAndElection()V

    goto :goto_0

    .line 146
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #method:Ljava/lang/String;
    .end local v2           #startAction:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 144
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #method:Ljava/lang/String;
    .restart local v2       #startAction:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/android/agoo/service/AgooService;->stopp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
