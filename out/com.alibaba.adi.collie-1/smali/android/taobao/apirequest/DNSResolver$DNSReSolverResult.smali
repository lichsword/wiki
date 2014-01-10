.class public Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;
.super Ljava/lang/Object;
.source "DNSResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/DNSResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DNSReSolverResult"
.end annotation


# instance fields
.field public isCached:I

.field public resolveTime:J

.field final synthetic this$0:Landroid/taobao/apirequest/DNSResolver;

.field public threadTag:I


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/DNSResolver;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 296
    iput-object p1, p0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->this$0:Landroid/taobao/apirequest/DNSResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->resolveTime:J

    .line 298
    iput v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->threadTag:I

    .line 299
    iput v2, p0, Landroid/taobao/apirequest/DNSResolver$DNSReSolverResult;->isCached:I

    return-void
.end method
