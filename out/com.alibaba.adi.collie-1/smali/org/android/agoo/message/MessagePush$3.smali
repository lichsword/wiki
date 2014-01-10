.class Lorg/android/agoo/message/MessagePush$3;
.super Ljava/lang/Object;
.source "MessagePush.java"

# interfaces
.implements Lorg/android/agoo/helper/HostClient$IHostHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/message/MessagePush;->connect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/agoo/message/MessagePush;


# direct methods
.method constructor <init>(Lorg/android/agoo/message/MessagePush;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "error"

    .prologue
    .line 385
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect_host["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]---->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v0, v0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/android/agoo/log/UTHelper;->hostErrorLog(Landroid/content/Context;ILjava/lang/String;)V

    .line 387
    const/16 v0, 0x198

    if-ne p1, v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    #calls: Lorg/android/agoo/message/MessagePush;->nextErrorInterval()J
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$1700(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v1

    const-string v3, "host_error_connect"

    #calls: Lorg/android/agoo/message/MessagePush;->tryReConnect(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/android/agoo/message/MessagePush;->access$200(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->hostConnectInterval:J
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$1800(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v1

    const-string v3, "host_error_connect"

    #calls: Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/android/agoo/message/MessagePush;->access$1900(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onHost(Ljava/lang/String;)V
    .locals 4
    .parameter "host"

    .prologue
    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    const-string v1, "http://%s/rest/api3.do"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, baseUrl:Ljava/lang/String;
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->setBaseUrl(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush$3;->this$0:Lorg/android/agoo/message/MessagePush;

    #calls: Lorg/android/agoo/message/MessagePush;->connect()V
    invoke-static {v1}, Lorg/android/agoo/message/MessagePush;->access$1600(Lorg/android/agoo/message/MessagePush;)V

    .line 381
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method
