.class Lorg/android/agoo/net/chunked/AbsHttpChunked$4;
.super Ljava/lang/Object;
.source "AbsHttpChunked.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/chunked/AbsHttpChunked;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    iget-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    iget v1, v1, Lorg/android/agoo/net/chunked/AbsHttpChunked;->mCId:I

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->disconnect(I)V

    .line 171
    const-string v0, "HttpChunked"

    const-string v1, "http chunked closing"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    invoke-virtual {v0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->closeConnectPool()V

    .line 173
    const-string v0, "HttpChunked"

    const-string v1, "http chunked closed"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$4;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    #calls: Lorg/android/agoo/net/chunked/AbsHttpChunked;->clearConnectId()V
    invoke-static {v0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->access$000(Lorg/android/agoo/net/chunked/AbsHttpChunked;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method
