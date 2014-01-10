.class Landroid/taobao/apirequest/ApiConnector$ConnStat;
.super Ljava/lang/Object;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnStat"
.end annotation


# instance fields
.field m_conTime:J

.field m_failtimes:J

.field m_firstData:J

.field m_times:J

.field m_totalCost:J

.field m_totalSize:J

.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiConnector;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 371
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->this$0:Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    .line 374
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 376
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    .line 377
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    .line 378
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalSize:J

    .line 379
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    return-void
.end method


# virtual methods
.method report()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, res:Ljava/lang/String;
    :try_start_0
    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-wide v1, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalSize:J

    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_1
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_2
    return-object v0

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0,0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 383
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_times:J

    .line 384
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_failtimes:J

    .line 386
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_conTime:J

    .line 387
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_firstData:J

    .line 388
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalSize:J

    .line 389
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$ConnStat;->m_totalCost:J

    .line 390
    return-void
.end method
