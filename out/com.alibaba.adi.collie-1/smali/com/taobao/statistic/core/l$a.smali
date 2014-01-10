.class Lcom/taobao/statistic/core/l$a;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field mt:J

.field mu:J

.field final synthetic mv:Lcom/taobao/statistic/core/l;


# direct methods
.method private constructor <init>(Lcom/taobao/statistic/core/l;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 297
    iput-object p1, p0, Lcom/taobao/statistic/core/l$a;->mv:Lcom/taobao/statistic/core/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-wide v0, p0, Lcom/taobao/statistic/core/l$a;->mt:J

    .line 299
    iput-wide v0, p0, Lcom/taobao/statistic/core/l$a;->mu:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/statistic/core/l;Lcom/taobao/statistic/core/l$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/l$a;-><init>(Lcom/taobao/statistic/core/l;)V

    return-void
.end method
