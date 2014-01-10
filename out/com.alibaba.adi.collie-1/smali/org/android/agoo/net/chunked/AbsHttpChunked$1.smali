.class Lorg/android/agoo/net/chunked/AbsHttpChunked$1;
.super Ljava/lang/Object;
.source "AbsHttpChunked.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/chunked/AbsHttpChunked;->connect(Landroid/content/Context;Ljava/lang/String;JLorg/android/agoo/net/chunked/IChunkedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/chunked/AbsHttpChunked;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    iput-object p2, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    invoke-virtual {v0}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->connectId()V

    .line 99
    iget-object v0, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;->this$0:Lorg/android/agoo/net/chunked/AbsHttpChunked;

    iget-object v1, p0, Lorg/android/agoo/net/chunked/AbsHttpChunked$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/chunked/AbsHttpChunked;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method
