.class public Lcom/taobao/statistic/module/data/d;
.super Ljava/lang/Object;
.source "UploadLock.java"


# instance fields
.field private oB:J

.field private oC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "lockName"
    .parameter "t"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/statistic/module/data/d;->oB:J

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/module/data/d;->oC:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/taobao/statistic/module/data/d;->oC:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/taobao/statistic/module/data/d;->oB:J

    .line 10
    return-void
.end method


# virtual methods
.method public dL()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/taobao/statistic/module/data/d;->oB:J

    return-wide v0
.end method

.method public dM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/statistic/module/data/d;->oC:Ljava/lang/String;

    return-object v0
.end method
