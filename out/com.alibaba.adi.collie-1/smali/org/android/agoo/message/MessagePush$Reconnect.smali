.class Lorg/android/agoo/message/MessagePush$Reconnect;
.super Landroid/content/BroadcastReceiver;
.source "MessagePush.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/message/MessagePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reconnect"
.end annotation


# static fields
.field private static final ACTION_RECONNECT:Ljava/lang/String; = "agoo_action_re_connect"

.field private static final CONNECT_CANCEL:I = 0x3

.field private static final CONNECT_FORCE:I = -0x1

.field private static final CONNECT_FORCE_INTERVAL:I = 0x7d0

.field private static final CONNECT_RE_LOCK:I = 0x0

.field private static final CONNECT_RE_UNLOCK:I = 0x1

.field private static final CONNECT_TARGET:I = 0x2

.field private static final CONNECT_UNLOCK_INTERVAL:I = 0x2710


# instance fields
.field private volatile filter:Landroid/content/IntentFilter;

.field private volatile handerThread:Landroid/os/HandlerThread;

.field private volatile hanlder:Landroid/os/Handler;

.field private volatile intent:Landroid/content/Intent;

.field private volatile lastInterval:J

.field private volatile lock:Z

.field private volatile pendingIntent:Landroid/app/PendingIntent;

.field private volatile refreshHost:Z

.field private volatile state:Ljava/lang/String;

.field final synthetic this$0:Lorg/android/agoo/message/MessagePush;


# direct methods
.method public constructor <init>(Lorg/android/agoo/message/MessagePush;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 714
    iput-object p1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 704
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->filter:Landroid/content/IntentFilter;

    .line 705
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    .line 706
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->intent:Landroid/content/Intent;

    .line 707
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    .line 708
    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->handerThread:Landroid/os/HandlerThread;

    .line 709
    iput-boolean v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z

    .line 710
    iput-boolean v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->refreshHost:Z

    .line 711
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    .line 715
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush$Reconnect;->initReconnectReceiver()V

    .line 716
    return-void
.end method

.method static synthetic access$400(Lorg/android/agoo/message/MessagePush$Reconnect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 695
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush$Reconnect;->initReconnectReceiver()V

    return-void
.end method

.method private checkConnect(IJ)Z
    .locals 6
    .parameter "cId"
    .parameter "interval"

    .prologue
    const/4 v2, 0x0

    .line 782
    :try_start_0
    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v3

    invoke-virtual {v3}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v0

    .line 783
    .local v0, state:Lorg/android/agoo/net/chunked/ChunkedState;
    sget-object v3, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v3, :cond_0

    .line 784
    const-string v3, "MessagePush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .end local v0           #state:Lorg/android/agoo/net/chunked/ChunkedState;
    :goto_0
    return v2

    .line 788
    .restart local v0       #state:Lorg/android/agoo/net/chunked/ChunkedState;
    :cond_0
    sget-object v3, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v3, :cond_1

    .line 789
    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->disconnect(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 792
    .end local v0           #state:Lorg/android/agoo/net/chunked/ChunkedState;
    :catch_0
    move-exception v1

    .line 793
    .local v1, t:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    .line 761
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 763
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initHandle()V
    .locals 2

    .prologue
    .line 772
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "reconnect"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->handerThread:Landroid/os/HandlerThread;

    .line 773
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 774
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->handerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initReconnectReceiver()V
    .locals 2

    .prologue
    .line 720
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->filter:Landroid/content/IntentFilter;

    .line 721
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->filter:Landroid/content/IntentFilter;

    const-string v1, "agoo_action_re_connect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v0, v0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush$Reconnect;->initHandle()V

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public forceConnect(JLjava/lang/String;)V
    .locals 4
    .parameter "interval"
    .parameter "state"

    .prologue
    .line 846
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 847
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceConnect[interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 851
    :cond_0
    iput-wide p1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->refreshHost:Z

    .line 853
    iput-object p3, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->state:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_1
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleConnect(J)V
    .locals 5
    .parameter "interval"

    .prologue
    .line 800
    :try_start_0
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConnect[interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #calls: Lorg/android/agoo/message/MessagePush;->stopHeart()V
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$1200(Lorg/android/agoo/message/MessagePush;)V

    .line 802
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->mCId:I
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$500(Lorg/android/agoo/message/MessagePush;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/android/agoo/message/MessagePush$Reconnect;->checkConnect(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "agoo_action_re_connect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->intent:Landroid/content/Intent;

    .line 806
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->pack:Ljava/lang/String;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$2000(Lorg/android/agoo/message/MessagePush;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 809
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v0, v0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const v1, 0x6f5cb

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->intent:Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    .line 813
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 733
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 756
    :goto_0
    return v2

    .line 735
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z

    .line 736
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/message/MessagePush$Reconnect;->handleConnect(J)V

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    goto :goto_0

    .line 739
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z

    goto :goto_0

    .line 742
    :pswitch_2
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-boolean v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->refreshHost:Z

    #calls: Lorg/android/agoo/message/MessagePush;->connect(Z)V
    invoke-static {v0, v1}, Lorg/android/agoo/message/MessagePush;->access$2600(Lorg/android/agoo/message/MessagePush;Z)V

    goto :goto_0

    .line 745
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z

    .line 746
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush$Reconnect;->handleCancel()V

    goto :goto_0

    .line 749
    :pswitch_4
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/message/MessagePush$Reconnect;->handleConnect(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 864
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, action:Ljava/lang/String;
    const-string v1, "agoo_action_re_connect"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, v1, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, v1, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 880
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "MessagePush"

    const-string v2, "reconnect stop"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 877
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryConnect(JLjava/lang/String;)V
    .locals 4
    .parameter "interval"
    .parameter "state"

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lock:Z

    if-nez v0, :cond_1

    .line 829
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnect[interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 833
    :cond_0
    iput-wide p1, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->lastInterval:J

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->refreshHost:Z

    .line 835
    iput-object p3, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->state:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 837
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$Reconnect;->hanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    goto :goto_0
.end method
