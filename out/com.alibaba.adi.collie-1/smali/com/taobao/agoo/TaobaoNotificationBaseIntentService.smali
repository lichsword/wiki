.class public abstract Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;
.super Lorg/android/agoo/client/BaseIntentService;
.source "TaobaoNotificationBaseIntentService.java"


# static fields
.field private static final CLICK_MESSAGE_TYPE:Ljava/lang/String; = "click_message_type"

.field private static final INTENT_FROM_NOTFIY_CLICK_MESSAGE:Ljava/lang/String; = ".intent.action.NOTFIY_MESSAGE"

.field private static final TAG:Ljava/lang/String; = "NotificationBaseIntentService"

.field private static notificationRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x186a0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->notificationRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;-><init>()V

    return-void
.end method

.method private notifyMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "messageId"
    .parameter "taskId"
    .parameter "notify"

    .prologue
    .line 257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    const-string v5, "NotificationBaseIntentService"

    const-string v6, "messageId == null"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, appKey:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, ttId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    :cond_1
    const-string v5, "NotificationBaseIntentService"

    const-string v6, "appkey or ttId == null"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, appSecret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->isAgooSoSecurityMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 269
    const-string v5, "NotificationBaseIntentService"

    const-string v6, "appSecret== null"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->isRegistered(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 273
    const-string v5, "NotificationBaseIntentService"

    const-string v6, "deviceToken == null"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_4
    new-instance v3, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v3}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 277
    .local v3, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v5, "mtop.push.msg.report"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 278
    const-string v5, "1.0"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 281
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 282
    const-string v5, "taskId"

    invoke-virtual {v3, v5, p3}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    :cond_5
    const-string v5, "messageId"

    invoke-virtual {v3, v5, p2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v5, "mesgStatus"

    invoke-virtual {v3, v5, p4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    new-instance v2, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 287
    .local v2, client:Lorg/android/agoo/net/mtop/MtopSyncClientV3;
    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->setDefaultAppkey(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v1}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->setBaseUrl(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2, p1, v3}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    goto/16 :goto_0
.end method

.method private final onNotification(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .parameter "context"
    .parameter "extras"
    .parameter "ticker"
    .parameter "title"
    .parameter "content"
    .parameter "sound"

    .prologue
    .line 197
    sget-object v13, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->notificationRandom:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v12

    .line 198
    .local v12, requestCode:I
    const-string v13, "taobao_app_store"

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 200
    .local v11, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v2, clickIntent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/IntentHelper;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, command:Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v13, "command"

    const-string v14, "message_readed"

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    add-int/lit8 v13, v12, 0x1

    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 210
    .local v3, clickPendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v6, deleteIntent:Landroid/content/Intent;
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    const-string v13, "command"

    const-string v14, "message_deleted"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    add-int/lit8 v13, v12, 0x2

    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 218
    .local v7, deletePendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v13, "app_notification_icon"

    const/4 v14, -0x1

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 221
    .local v8, icon:I
    if-gez v8, :cond_0

    .line 222
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v13, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    if-gez v8, :cond_1

    .line 228
    const-string v13, "NotificationBaseIntentService"

    const-string v14, "cann\'t find icon ic_launcher which is also used for notification."

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    return-void

    .line 232
    :cond_1
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 240
    const/4 v5, 0x0

    .line 241
    .local v5, defaults:I
    const-string v13, "app_notification_vibrate"

    const/4 v14, 0x1

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 242
    or-int/lit8 v5, v5, 0x2

    .line 245
    :cond_2
    const-string v13, "app_notification_sound"

    const/4 v14, 0x1

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, -0x1

    move/from16 v0, p6

    if-eq v0, v13, :cond_3

    .line 246
    or-int/lit8 v5, v5, 0x1

    .line 248
    :cond_3
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 249
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 250
    .local v10, notify:Landroid/app/Notification;
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 252
    .local v9, manager:Landroid/app/NotificationManager;
    invoke-virtual {v9, v12, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 225
    .end local v5           #defaults:I
    .end local v9           #manager:Landroid/app/NotificationManager;
    .end local v10           #notify:Landroid/app/Notification;
    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method private sendNotificationClick(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "extras"
    .parameter "type"

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".intent.action.NOTFIY_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "click_message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected final getAgooService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lcom/taobao/agoo/PushService;

    return-object v0
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected final onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    const-string v1, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, messageId:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v1, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, message:Ljava/lang/String;
    const-string v1, "encrypted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, encrypted:Ljava/lang/String;
    const-string v1, "10"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/taobao/agoo/TaobaoRegister;->getPushUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v12, v2}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lorg/android/agoo/log/UTHelper;->messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_3
    const-string v1, "11"

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/taobao/agoo/TaobaoRegister;->getPushUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v12, v2}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lorg/android/agoo/log/UTHelper;->messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_5
    const-string v1, "notify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, notification:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-1"

    invoke-static {v14, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->onUserMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v3, extras:Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v3, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, body:Ljava/lang/String;
    const-string v1, "task_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, taskId:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 90
    const-string v1, "task_id"

    invoke-virtual {v3, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "body"

    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v10, 0x0

    .line 97
    .local v10, json:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, title:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, url:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, text:Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, ticker:Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 100
    .end local v10           #json:Lorg/json/JSONObject;
    .local v11, json:Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "title"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    move-object v10, v11

    .line 103
    .end local v11           #json:Lorg/json/JSONObject;
    .restart local v10       #json:Lorg/json/JSONObject;
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :try_start_2
    const-string v1, "ticker"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .line 110
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    move-object v4, v5

    .line 114
    :cond_9
    :try_start_3
    const-string v1, "text"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    if-eqz v1, :cond_a

    .line 116
    move-object v6, v5

    .line 120
    :cond_a
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 121
    move-object v6, v5

    .line 124
    :cond_b
    :try_start_4
    const-string v1, "url"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 125
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 126
    const-string v1, "message_uri"

    move-object/from16 v0, v16

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 130
    :cond_c
    :goto_4
    const/4 v7, -0x1

    .line 132
    .local v7, sound:I
    :try_start_5
    const-string v1, "sound"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v7

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 135
    invoke-direct/range {v1 .. v7}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->onNotification(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_5

    .line 128
    .end local v7           #sound:I
    :catch_1
    move-exception v1

    goto :goto_4

    .line 118
    :catch_2
    move-exception v1

    goto :goto_3

    .line 108
    :catch_3
    move-exception v1

    goto :goto_2

    .line 101
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v10           #json:Lorg/json/JSONObject;
    .restart local v11       #json:Lorg/json/JSONObject;
    :catch_5
    move-exception v1

    move-object v10, v11

    .end local v11           #json:Lorg/json/JSONObject;
    .restart local v10       #json:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected final onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    const-string v7, "command"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, command:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v7, "message_deleted"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    const-string v7, "id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, messageId:Ljava/lang/String;
    const-string v7, "task_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, taskId:Ljava/lang/String;
    const-string v7, "dismiss"

    invoke-static {p1, v2, v7}, Lorg/android/agoo/log/UTHelper;->messageNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v7, "9"

    invoke-direct {p0, p1, v2, v4, v7}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->notifyMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "dismiss"

    invoke-direct {p0, p1, v7, v8}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->sendNotificationClick(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 150
    const-string v7, "NotificationBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notification--deleted[messageId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v2           #messageId:Ljava/lang/String;
    .end local v4           #taskId:Ljava/lang/String;
    :cond_2
    const-string v7, "message_readed"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    const-string v7, "id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2       #messageId:Ljava/lang/String;
    const-string v7, "task_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .restart local v4       #taskId:Ljava/lang/String;
    const-string v7, "NotificationBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notification--read[messageId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v7, "8"

    invoke-direct {p0, p1, v2, v4, v7}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->notifyMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v7, "click"

    invoke-static {p1, v2, v7}, Lorg/android/agoo/log/UTHelper;->messageNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "click"

    invoke-direct {p0, p1, v7, v8}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->sendNotificationClick(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 160
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v3, startIntent:Landroid/content/Intent;
    const-string v7, "message_uri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 163
    const-string v7, "NotificationBaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notification--[url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 166
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "NotificationBaseIntentService"

    const-string v8, "startActivity"

    invoke-static {v7, v8, v1}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 171
    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

.method protected abstract onUserMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method
