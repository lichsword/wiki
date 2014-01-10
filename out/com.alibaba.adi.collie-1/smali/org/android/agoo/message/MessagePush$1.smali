.class Lorg/android/agoo/message/MessagePush$1;
.super Landroid/content/BroadcastReceiver;
.source "MessagePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/message/MessagePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile networkIndex:I

.field final synthetic this$0:Lorg/android/agoo/message/MessagePush;


# direct methods
.method constructor <init>(Lorg/android/agoo/message/MessagePush;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/agoo/message/MessagePush$1;->networkIndex:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "MessagePush"

    const-string v3, "screen_on"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v2}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v1

    .line 100
    .local v1, state:Lorg/android/agoo/net/chunked/ChunkedState;
    sget-object v2, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v1, v2, :cond_1

    .line 101
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->screenOnInterval:J
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$100(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v3

    const-string v5, "screen_on_connect"

    #calls: Lorg/android/agoo/message/MessagePush;->tryReConnect(JLjava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lorg/android/agoo/message/MessagePush;->access$200(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V

    .line 117
    .end local v1           #state:Lorg/android/agoo/net/chunked/ChunkedState;
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget v2, p0, Lorg/android/agoo/message/MessagePush$1;->networkIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/android/agoo/message/MessagePush$1;->networkIndex:I

    .line 107
    iget v2, p0, Lorg/android/agoo/message/MessagePush$1;->networkIndex:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;
    invoke-static {v2}, Lorg/android/agoo/message/MessagePush;->access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v1

    .line 111
    .restart local v1       #state:Lorg/android/agoo/net/chunked/ChunkedState;
    const-string v2, "MessagePush"

    const-string v3, "network_change"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v2, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush$1;->this$0:Lorg/android/agoo/message/MessagePush;

    #getter for: Lorg/android/agoo/message/MessagePush;->networkChangeInterval:J
    invoke-static {v3}, Lorg/android/agoo/message/MessagePush;->access$300(Lorg/android/agoo/message/MessagePush;)J

    move-result-wide v3

    const-string v5, "network_change_connect"

    #calls: Lorg/android/agoo/message/MessagePush;->tryReConnect(JLjava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lorg/android/agoo/message/MessagePush;->access$200(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V

    goto :goto_0
.end method
