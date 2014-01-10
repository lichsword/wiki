.class Lorg/android/agoo/message/MessagePush$Heart;
.super Landroid/content/BroadcastReceiver;
.source "MessagePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/message/MessagePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heart"
.end annotation


# static fields
.field private static final ACTION_HEART:Ljava/lang/String; = "agoo_action_heart"


# instance fields
.field private conntectTime:J

.field private filter:Landroid/content/IntentFilter;

.field private intent:Landroid/content/Intent;

.field private volatile isHeartStarted:Z

.field private volatile maxHeartInterval:J

.field private pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lorg/android/agoo/message/MessagePush;


# direct methods
.method public constructor <init>(Lorg/android/agoo/message/MessagePush;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 595
    iput-object p1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 589
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->filter:Landroid/content/IntentFilter;

    .line 590
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    .line 591
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->intent:Landroid/content/Intent;

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z

    .line 593
    iput-wide v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->maxHeartInterval:J

    .line 637
    iput-wide v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->conntectTime:J

    .line 596
    return-void
.end method

.method static synthetic access$2100(Lorg/android/agoo/message/MessagePush$Heart;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 587
    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/android/agoo/message/MessagePush$Heart;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 587
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->maxHeartInterval:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/android/agoo/message/MessagePush$Heart;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 587
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->conntectTime:J

    return-wide v0
.end method


# virtual methods
.method public initHeartReceiver()V
    .locals 4

    .prologue
    .line 600
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->filter:Landroid/content/IntentFilter;

    .line 601
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->filter:Landroid/content/IntentFilter;

    const-string v1, "agoo_action_heart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v0, v0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "agoo_action_heart"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->intent:Landroid/content/Intent;

    .line 604
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->pack:Ljava/lang/String;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$2000(Lorg/android/agoo/message/MessagePush;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v0, v0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const v1, 0x6f5be

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$Heart;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 612
    new-instance v0, Lorg/android/agoo/message/MessagePush$Heart$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/android/agoo/message/MessagePush$Heart$1;-><init>(Lorg/android/agoo/message/MessagePush$Heart;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lorg/android/agoo/util/ThreadUtil;->startRunnable(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method

.method public declared-synchronized start(JJJ)V
    .locals 7
    .parameter "interval"
    .parameter "maxHeartInterval"
    .parameter "connectTime"

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 651
    :goto_0
    monitor-exit p0

    return-void

    .line 643
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z

    .line 644
    iput-wide p5, p0, Lorg/android/agoo/message/MessagePush$Heart;->conntectTime:J

    .line 645
    iput-wide p3, p0, Lorg/android/agoo/message/MessagePush$Heart;->maxHeartInterval:J

    .line 646
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    const-wide/16 v1, -0x1

    #setter for: Lorg/android/agoo/message/MessagePush;->lastHeartTime:J
    invoke-static {v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->access$702(Lorg/android/agoo/message/MessagePush;J)J

    .line 647
    invoke-virtual {p0}, Lorg/android/agoo/message/MessagePush$Heart;->initHeartReceiver()V

    .line 648
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 649
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 676
    :goto_0
    monitor-exit p0

    return-void

    .line 658
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    const-wide/16 v2, -0x1

    #setter for: Lorg/android/agoo/message/MessagePush;->lastHeartTime:J
    invoke-static {v1, v2, v3}, Lorg/android/agoo/message/MessagePush;->access$702(Lorg/android/agoo/message/MessagePush;J)J

    .line 659
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z

    .line 660
    const-string v1, "MessagePush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->mCId:I
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$500(Lorg/android/agoo/message/MessagePush;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]heart--->[stopping]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 664
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 665
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 667
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, v1, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 668
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, v1, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    :cond_3
    const-string v1, "MessagePush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->mCId:I
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$500(Lorg/android/agoo/message/MessagePush;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]heart--->[stoped]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "MessagePush"

    const-string v2, "heart"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 655
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
