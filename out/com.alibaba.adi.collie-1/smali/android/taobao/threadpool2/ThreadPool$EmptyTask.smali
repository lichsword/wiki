.class Landroid/taobao/threadpool2/ThreadPool$EmptyTask;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/threadpool2/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/threadpool2/ThreadPool;


# direct methods
.method constructor <init>(Landroid/taobao/threadpool2/ThreadPool;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Landroid/taobao/threadpool2/ThreadPool$EmptyTask;->this$0:Landroid/taobao/threadpool2/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method
