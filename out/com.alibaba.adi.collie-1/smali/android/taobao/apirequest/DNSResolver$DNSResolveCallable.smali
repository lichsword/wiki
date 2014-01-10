.class Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;
.super Ljava/lang/Object;
.source "DNSResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/DNSResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DNSResolveCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;",
        ">;"
    }
.end annotation


# instance fields
.field mHost:Ljava/lang/String;

.field final synthetic this$0:Landroid/taobao/apirequest/DNSResolver;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/DNSResolver;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"

    .prologue
    .line 145
    iput-object p1, p0, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->this$0:Landroid/taobao/apirequest/DNSResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->mHost:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->mHost:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public call()Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->this$0:Landroid/taobao/apirequest/DNSResolver;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->mHost:Ljava/lang/String;

    #calls: Landroid/taobao/apirequest/DNSResolver;->doResolve(Landroid/taobao/apirequest/DNSResolver$SetFutureTask;Ljava/lang/String;)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
    invoke-static {v0, v1, v2}, Landroid/taobao/apirequest/DNSResolver;->access$000(Landroid/taobao/apirequest/DNSResolver;Landroid/taobao/apirequest/DNSResolver$SetFutureTask;Ljava/lang/String;)Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/taobao/apirequest/DNSResolver$DNSResolveCallable;->call()Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;

    move-result-object v0

    return-object v0
.end method
