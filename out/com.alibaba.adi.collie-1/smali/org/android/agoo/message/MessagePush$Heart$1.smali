.class Lorg/android/agoo/message/MessagePush$Heart$1;
.super Ljava/lang/Object;
.source "MessagePush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/message/MessagePush$Heart;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/android/agoo/message/MessagePush$Heart;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/android/agoo/message/MessagePush$Heart;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iput-object p2, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 617
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, action:Ljava/lang/String;
    const-string v6, "agoo_action_heart"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 619
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v6, v6, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v6}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v6

    invoke-virtual {v6}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v1

    .line 620
    .local v1, readyState:Lorg/android/agoo/net/chunked/ChunkedState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 621
    .local v2, startTime:J
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v6, v6, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->lastHeartTime:J
    invoke-static {v6}, Lorg/android/agoo/message/MessagePush;->access$700(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v6

    sub-long v4, v2, v6

    .line 622
    .local v4, timeout:J
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    #getter for: Lorg/android/agoo/message/MessagePush$Heart;->isHeartStarted:Z
    invoke-static {v6}, Lorg/android/agoo/message/MessagePush$Heart;->access$2100(Lorg/android/agoo/message/MessagePush$Heart;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v1, v6, :cond_0

    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v6, v6, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->lastHeartTime:J
    invoke-static {v6}, Lorg/android/agoo/message/MessagePush;->access$700(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    #getter for: Lorg/android/agoo/message/MessagePush$Heart;->maxHeartInterval:J
    invoke-static {v6}, Lorg/android/agoo/message/MessagePush$Heart;->access$2200(Lorg/android/agoo/message/MessagePush$Heart;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 625
    const-string v6, "MessagePush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v8, v8, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->mCId:I
    invoke-static {v8}, Lorg/android/agoo/message/MessagePush;->access$500(Lorg/android/agoo/message/MessagePush;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]heart["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms]timeout--->[reconnect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v8, v8, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->heartTimeoutConnectInterval:J
    invoke-static {v8}, Lorg/android/agoo/message/MessagePush;->access$2300(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    #getter for: Lorg/android/agoo/message/MessagePush$Heart;->conntectTime:J
    invoke-static {v7}, Lorg/android/agoo/message/MessagePush$Heart;->access$2400(Lorg/android/agoo/message/MessagePush$Heart;)J

    move-result-wide v7

    invoke-static {v6, v4, v5, v7, v8}, Lorg/android/agoo/log/UTHelper;->timeoutLog(Landroid/content/Context;JJ)V

    .line 629
    iget-object v6, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v6, v6, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v7, p0, Lorg/android/agoo/message/MessagePush$Heart$1;->this$1:Lorg/android/agoo/message/MessagePush$Heart;

    iget-object v7, v7, Lorg/android/agoo/message/MessagePush$Heart;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->heartTimeoutConnectInterval:J
    invoke-static {v7}, Lorg/android/agoo/message/MessagePush;->access$2300(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v7

    const-string v9, "heart_connect"

    #calls: Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V
    invoke-static {v6, v7, v8, v9}, Lorg/android/agoo/message/MessagePush;->access$1900(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V

    .line 633
    .end local v1           #readyState:Lorg/android/agoo/net/chunked/ChunkedState;
    .end local v2           #startTime:J
    .end local v4           #timeout:J
    :cond_0
    return-void
.end method
