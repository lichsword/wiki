.class public Lcom/taobao/gcm/GCMIntentService;
.super Landroid/app/IntentService;
.source "GCMIntentService.java"


# static fields
.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final LOCK:Ljava/lang/Object; = null

#the value of this static final field might be set in the static constructor
.field private static final MAX_BACKOFF_MS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GCMIntentService"

.field private static final TOKEN:Ljava/lang/String; = null

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GCM_LIB"

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Lcom/taobao/gcm/GCMIntentService;

    sput-object v0, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/taobao/gcm/GCMIntentService;->sRandom:Ljava/util/Random;

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/taobao/gcm/GCMIntentService;->MAX_BACKOFF_MS:I

    .line 79
    sget-object v0, Lcom/taobao/gcm/GCMIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/gcm/GCMIntentService;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "GCMIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private getSenderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const-string v1, "SEND"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, send:Landroid/content/SharedPreferences;
    const-string v1, "SENDERID_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 274
    :try_start_0
    const-string v13, "registration_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, registrationId:Ljava/lang/String;
    const-string v13, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, error:Ljava/lang/String;
    const-string v13, "unregistered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, unregistered:Ljava/lang/String;
    const-string v13, "GCMIntentService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleRegistration: registrationId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", error = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", unregistered = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v8, :cond_1

    .line 282
    invoke-static/range {p1 .. p1}, Lcom/taobao/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 283
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/taobao/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/taobao/gcm/GCMIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    .end local v5           #error:Ljava/lang/String;
    .end local v8           #registrationId:Ljava/lang/String;
    .end local v12           #unregistered:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v5       #error:Ljava/lang/String;
    .restart local v8       #registrationId:Ljava/lang/String;
    .restart local v12       #unregistered:Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    .line 291
    invoke-static/range {p1 .. p1}, Lcom/taobao/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/taobao/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, oldRegistrationId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/taobao/gcm/GCMIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v5           #error:Ljava/lang/String;
    .end local v7           #oldRegistrationId:Ljava/lang/String;
    .end local v8           #registrationId:Ljava/lang/String;
    .end local v12           #unregistered:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 329
    .local v4, e:Ljava/lang/Throwable;
    const-string v13, "GCMIntentService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gcm handleRegistration error="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v5       #error:Ljava/lang/String;
    .restart local v8       #registrationId:Ljava/lang/String;
    .restart local v12       #unregistered:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v13, "GCMIntentService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Registration error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v13, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/taobao/gcm/GCMIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 302
    .local v9, retry:Z
    if-eqz v9, :cond_3

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/taobao/gcm/GCMRegistrar;->getBackoff(Landroid/content/Context;)I

    move-result v3

    .line 304
    .local v3, backoffTimeMs:I
    div-int/lit8 v13, v3, 0x2

    sget-object v14, Lcom/taobao/gcm/GCMIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v14, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v6, v13, v14

    .line 306
    .local v6, nextAttempt:I
    const-string v13, "GCMIntentService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Scheduling registration retry, backoff = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v10, Landroid/content/Intent;

    const-string v13, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v10, retryIntent:Landroid/content/Intent;
    const-string v13, "token"

    sget-object v14, Lcom/taobao/gcm/GCMIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 312
    .local v11, retryPendingIntent:Landroid/app/PendingIntent;
    const-string v13, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 314
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v13, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v2, v13, v14, v15, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 318
    sget v13, Lcom/taobao/gcm/GCMIntentService;->MAX_BACKOFF_MS:I

    if-ge v3, v13, :cond_0

    .line 319
    mul-int/lit8 v13, v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/taobao/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 322
    .end local v2           #am:Landroid/app/AlarmManager;
    .end local v3           #backoffTimeMs:I
    .end local v6           #nextAttempt:I
    .end local v10           #retryIntent:Landroid/content/Intent;
    .end local v11           #retryPendingIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v13, "GCMIntentService"

    const-string v14, "Not retrying failed operation"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    .end local v9           #retry:Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/taobao/gcm/GCMIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 254
    :try_start_0
    sget-object v3, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :try_start_1
    sget-object v2, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 257
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 259
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "GCM_LIB"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 262
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    const-string v2, "GCMIntentService"

    const-string v3, "Acquiring wakelock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v2, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 265
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    :goto_0
    return-void

    .line 262
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "GCMIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gcm runIntentInService error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "total"

    .prologue
    .line 108
    return-void
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 122
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/gcm/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 176
    .local v3, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    invoke-static {v3}, Lorg/android/agoo/client/IntentHelper;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, commandAction:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 179
    const-string v10, "command"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, command:Ljava/lang/String;
    const-string v10, "registration"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 182
    invoke-direct {p0, v3}, Lcom/taobao/gcm/GCMIntentService;->getSenderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, senderId:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 184
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v3, v10}, Lcom/taobao/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .end local v7           #senderId:Ljava/lang/String;
    :cond_0
    sget-object v11, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_1
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_1

    .line 235
    const-string v10, "GCMIntentService"

    const-string v12, "Releasing wakelock"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :goto_0
    monitor-exit v11

    .line 242
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #commandAction:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    :goto_1
    return-void

    .line 238
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #commandAction:Ljava/lang/String;
    .restart local v3       #context:Landroid/content/Context;
    :cond_1
    const-string v10, "GCMIntentService"

    const-string v12, "Wakelock reference is null"

    invoke-static {v10, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 189
    .end local v1           #command:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v10, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 190
    invoke-static {v3}, Lcom/taobao/gcm/GCMRegistrar;->setRetryBroadcastReceiver(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0, v3, p1}, Lcom/taobao/gcm/GCMIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    :cond_3
    :goto_2
    sget-object v11, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_3
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_b

    .line 235
    const-string v10, "GCMIntentService"

    const-string v12, "Releasing wakelock"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :goto_3
    monitor-exit v11

    goto :goto_1

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 192
    :cond_4
    :try_start_4
    const-string v10, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 193
    const-string v10, "message_type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, messageType:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 195
    const-string v10, "deleted_messages"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 196
    const-string v10, "total_deleted"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    .line 198
    .local v6, sTotal:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 200
    :try_start_5
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 201
    .local v9, total:I
    const-string v10, "GCMIntentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received deleted messages notification: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, v3, v9}, Lcom/taobao/gcm/GCMIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 204
    .end local v9           #total:I
    :catch_0
    move-exception v4

    .line 205
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v10, "GCMIntentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GCM returned invalid number of deleted messages: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 230
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #commandAction:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v5           #messageType:Ljava/lang/String;
    .end local v6           #sTotal:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 231
    .local v4, e:Ljava/lang/Throwable;
    :try_start_7
    const-string v10, "GCMIntentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gcm onHandleIntent error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 233
    sget-object v11, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_8
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_c

    .line 235
    const-string v10, "GCMIntentService"

    const-string v12, "Releasing wakelock"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :goto_4
    monitor-exit v11

    goto/16 :goto_1

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v10

    .line 211
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #commandAction:Ljava/lang/String;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v5       #messageType:Ljava/lang/String;
    :cond_5
    :try_start_9
    const-string v10, "GCMIntentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received unknown special message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 233
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #commandAction:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #messageType:Ljava/lang/String;
    :catchall_3
    move-exception v10

    sget-object v11, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_a
    sget-object v12, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v12, :cond_d

    .line 235
    const-string v12, "GCMIntentService"

    const-string v13, "Releasing wakelock"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v12, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :goto_5
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v10

    .line 215
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #commandAction:Ljava/lang/String;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v5       #messageType:Ljava/lang/String;
    :cond_6
    :try_start_b
    invoke-virtual {p0, v3, p1}, Lcom/taobao/gcm/GCMIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 217
    .end local v5           #messageType:Ljava/lang/String;
    :cond_7
    const-string v10, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    const-string v10, "token"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, token:Ljava/lang/String;
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 220
    const-string v10, "GCMIntentService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received invalid token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 233
    sget-object v11, Lcom/taobao/gcm/GCMIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_c
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_8

    .line 235
    const-string v10, "GCMIntentService"

    const-string v12, "Releasing wakelock"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v10, Lcom/taobao/gcm/GCMIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :goto_6
    monitor-exit v11

    goto/16 :goto_1

    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v10

    .line 238
    :cond_8
    :try_start_d
    const-string v10, "GCMIntentService"

    const-string v12, "Wakelock reference is null"

    invoke-static {v10, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_6

    .line 223
    :cond_9
    :try_start_e
    invoke-static {v3}, Lcom/taobao/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 224
    invoke-static {v3}, Lcom/taobao/gcm/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 226
    :cond_a
    invoke-direct {p0, v3}, Lcom/taobao/gcm/GCMIntentService;->getSenderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7       #senderId:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v3, v10}, Lcom/taobao/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_2

    .line 238
    .end local v7           #senderId:Ljava/lang/String;
    .end local v8           #token:Ljava/lang/String;
    :cond_b
    :try_start_f
    const-string v10, "GCMIntentService"

    const-string v12, "Wakelock reference is null"

    invoke-static {v10, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_3

    .end local v0           #action:Ljava/lang/String;
    .end local v2           #commandAction:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .restart local v4       #e:Ljava/lang/Throwable;
    :cond_c
    :try_start_10
    const-string v10, "GCMIntentService"

    const-string v12, "Wakelock reference is null"

    invoke-static {v10, v12}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_4

    .end local v4           #e:Ljava/lang/Throwable;
    :cond_d
    :try_start_11
    const-string v12, "GCMIntentService"

    const-string v13, "Wakelock reference is null"

    invoke-static {v12, v13}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 240
    :catchall_5
    move-exception v10

    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v10
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, messageIntent:Landroid/content/Intent;
    const-string v2, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "message_source"

    const-string v3, "gcm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1           #messageIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "GCMIntentService"

    const-string v3, "GCMIntentService onMessage"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/taobao/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const-string v5, "GCMIntentService"

    const-string v6, "gcm mtop resgter start"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, deviceToken:Ljava/lang/String;
    new-instance v3, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v3}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 136
    .local v3, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v5, "mtop.push.device.bind.android"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 137
    const-string v5, "5.0"

    invoke-virtual {v3, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 139
    const-string v5, "tb_app_device_token"

    invoke-virtual {v3, v5, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v5, "android_device_token"

    invoke-virtual {v3, v5, p2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v5, "android_device_type"

    const-string v6, "2"

    invoke-virtual {v3, v5, v6}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance v0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 143
    .local v0, client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 146
    const-string v5, "GCMIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "appsecret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, p1, v3}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v4

    .line 151
    .local v4, result:Lorg/android/agoo/net/mtop/Result;
    invoke-virtual {v4}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    const-string v5, "GCMIntentService"

    const-string v6, "register GCM success"

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v0           #client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    .end local v1           #deviceToken:Ljava/lang/String;
    .end local v3           #request:Lorg/android/agoo/net/mtop/MtopRequest;
    .end local v4           #result:Lorg/android/agoo/net/mtop/Result;
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Throwable;
    const-string v5, "GCMIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gcm mtop resgter error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v2           #e:Ljava/lang/Throwable;
    .restart local v0       #client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    .restart local v1       #deviceToken:Ljava/lang/String;
    .restart local v3       #request:Lorg/android/agoo/net/mtop/MtopRequest;
    .restart local v4       #result:Lorg/android/agoo/net/mtop/Result;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/android/agoo/log/UTHelper;->registerErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 170
    return-void
.end method
