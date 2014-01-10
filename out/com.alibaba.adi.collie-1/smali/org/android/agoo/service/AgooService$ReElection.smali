.class Lorg/android/agoo/service/AgooService$ReElection;
.super Landroid/content/BroadcastReceiver;
.source "AgooService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/service/AgooService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReElection"
.end annotation


# static fields
.field private static final ACTION_ELECTION:Ljava/lang/String; = "agoo_action_re_election"

.field private static final ELECTION_REQUEST_CODE:I = 0x2b80359


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private volatile hasReElection:Z

.field private intent:Landroid/content/Intent;

.field private pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lorg/android/agoo/service/AgooService;


# direct methods
.method public constructor <init>(Lorg/android/agoo/service/AgooService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 384
    iput-object p1, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 376
    iput-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->filter:Landroid/content/IntentFilter;

    .line 377
    iput-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    .line 378
    iput-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->intent:Landroid/content/Intent;

    .line 379
    iput-boolean v1, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z

    .line 386
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$1202(Lorg/android/agoo/service/AgooService$ReElection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    iput-boolean p1, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z

    return p1
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 393
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->filter:Landroid/content/IntentFilter;

    .line 397
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->filter:Landroid/content/IntentFilter;

    const-string v1, "agoo_action_re_election"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/android/agoo/service/AgooService;->access$800(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/service/AgooService$ReElection;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/android/agoo/service/AgooService;->access$1300(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    invoke-virtual {v0, p0}, Lorg/android/agoo/service/AgooService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/service/AgooService;->access$1000(Lorg/android/agoo/service/AgooService;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/service/AgooService;->access$1000(Lorg/android/agoo/service/AgooService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 470
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    .line 471
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    const/4 v1, 0x0

    #setter for: Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0, v1}, Lorg/android/agoo/service/AgooService;->access$1002(Lorg/android/agoo/service/AgooService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, action:Ljava/lang/String;
    const-string v2, "agoo_action_re_election"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    new-instance v2, Lorg/android/agoo/service/AgooService$ReElection$1;

    invoke-direct {v2, p0, p1}, Lorg/android/agoo/service/AgooService$ReElection$1;-><init>(Lorg/android/agoo/service/AgooService$ReElection;Landroid/content/Context;)V

    invoke-static {v2}, Lorg/android/agoo/util/ThreadUtil;->startRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "AgooService"

    const-string v3, "onReceive"

    invoke-static {v2, v3, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 13

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    .line 435
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->hasReElection:Z

    .line 410
    invoke-direct {p0}, Lorg/android/agoo/service/AgooService$ReElection;->initReceiver()V

    .line 411
    new-instance v7, Landroid/content/Intent;

    const-string v8, "agoo_action_re_election"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->intent:Landroid/content/Intent;

    .line 412
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;
    invoke-static {v8}, Lorg/android/agoo/service/AgooService;->access$200(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 414
    .local v3, random:Ljava/util/Random;
    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v4, v7, 0x528

    .line 415
    .local v4, time:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, v4

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long v1, v7, v9

    .line 416
    .local v1, interval:J
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lorg/android/agoo/service/AgooService;->access$900(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/android/agoo/config/Config;->getCurrentSudoTimeout(Landroid/content/Context;)J

    move-result-wide v5

    .line 417
    .local v5, timeout:J
    const-string v7, "AgooService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "re_election_start[timeout:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x1b7740

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 419
    move-wide v1, v5

    .line 421
    :cond_1
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_2

    .line 422
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    .line 423
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lorg/android/agoo/service/AgooService;->access$1000(Lorg/android/agoo/service/AgooService;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 425
    :cond_2
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lorg/android/agoo/service/AgooService;->access$1100(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x2b80359

    iget-object v9, p0, Lorg/android/agoo/service/AgooService$ReElection;->intent:Landroid/content/Intent;

    const/high16 v10, 0x800

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    .line 427
    const-string v7, "AgooService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "election next time[current-thread-name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v7, p0, Lorg/android/agoo/service/AgooService$ReElection;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lorg/android/agoo/service/AgooService;->access$1000(Lorg/android/agoo/service/AgooService;)Landroid/app/AlarmManager;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/android/agoo/service/AgooService$ReElection;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8, v1, v2, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 431
    .end local v1           #interval:J
    .end local v3           #random:Ljava/util/Random;
    .end local v4           #time:I
    .end local v5           #timeout:J
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "AgooService"

    const-string v8, "ReElection start"

    invoke-static {v7, v8, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 406
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
