.class public Landroid/taobao/apirequest/DNSResolver$SetFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "DNSResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/DNSResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/apirequest/DNSResolver;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/DNSResolver;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, this:Landroid/taobao/apirequest/DNSResolver$SetFutureTask;,"Landroid/taobao/apirequest/DNSResolver$SetFutureTask<TV;>;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Landroid/taobao/apirequest/DNSResolver$SetFutureTask;->this$0:Landroid/taobao/apirequest/DNSResolver;

    .line 311
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 312
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Landroid/taobao/apirequest/DNSResolver$SetFutureTask;,"Landroid/taobao/apirequest/DNSResolver$SetFutureTask<TV;>;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 317
    return-void
.end method
