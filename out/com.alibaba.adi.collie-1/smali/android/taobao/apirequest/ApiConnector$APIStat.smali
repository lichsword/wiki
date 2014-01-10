.class Landroid/taobao/apirequest/ApiConnector$APIStat;
.super Ljava/lang/Object;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "APIStat"
.end annotation


# static fields
.field static final MAX_SIZE:I = 0xa


# instance fields
.field m_average_value:J

.field m_times:J

.field m_totalCost:J

.field final synthetic this$0:Landroid/taobao/apirequest/ApiConnector;

.field topApis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/taobao/apirequest/ApiConnector$API;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiConnector;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 429
    iput-object p1, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->this$0:Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_times:J

    .line 433
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_totalCost:J

    .line 434
    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_average_value:J

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;J)V
    .locals 8
    .parameter "name"
    .parameter "time"

    .prologue
    const/16 v7, 0xa

    .line 477
    iget-object v6, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 478
    .local v3, size:I
    if-ge v3, v7, :cond_1

    .line 479
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$API;

    iget-object v6, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->this$0:Landroid/taobao/apirequest/ApiConnector;

    invoke-direct {v0, v6}, Landroid/taobao/apirequest/ApiConnector$API;-><init>(Landroid/taobao/apirequest/ApiConnector;)V

    .line 480
    .local v0, api:Landroid/taobao/apirequest/ApiConnector$API;
    iput-object p1, v0, Landroid/taobao/apirequest/ApiConnector$API;->name:Ljava/lang/String;

    .line 481
    iput-wide p2, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    .line 482
    iget-object v6, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v0           #api:Landroid/taobao/apirequest/ApiConnector$API;
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    if-ne v3, v7, :cond_0

    .line 484
    const-wide/16 v4, 0x0

    .line 485
    .local v4, smallest:J
    const/4 v2, 0x0

    .line 486
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 487
    iget-object v6, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$API;

    .line 488
    .restart local v0       #api:Landroid/taobao/apirequest/ApiConnector$API;
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 489
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    .line 490
    move v2, v1

    .line 486
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    :cond_3
    iget-wide v6, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 493
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    .line 494
    move v2, v1

    goto :goto_2

    .line 498
    .end local v0           #api:Landroid/taobao/apirequest/ApiConnector$API;
    :cond_4
    iget-object v6, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$API;

    .line 499
    .restart local v0       #api:Landroid/taobao/apirequest/ApiConnector$API;
    iput-object p1, v0, Landroid/taobao/apirequest/ApiConnector$API;->name:Ljava/lang/String;

    .line 500
    iput-wide p2, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    goto :goto_0
.end method

.method isTop(J)Ljava/lang/Boolean;
    .locals 11
    .parameter "input"

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 443
    cmp-long v4, p1, v9

    if-nez v4, :cond_0

    .line 444
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 472
    :goto_0
    return-object v4

    .line 446
    :cond_0
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_1

    .line 447
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 449
    :cond_1
    const-wide/16 v2, 0x0

    .line 450
    .local v2, smallest:J
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$API;

    .line 451
    .local v0, api:Landroid/taobao/apirequest/ApiConnector$API;
    cmp-long v4, v2, v9

    if-nez v4, :cond_3

    .line 452
    iget-wide v2, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    goto :goto_1

    .line 454
    :cond_3
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 455
    iget-wide v2, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    goto :goto_1

    .line 459
    .end local v0           #api:Landroid/taobao/apirequest/ApiConnector$API;
    :cond_4
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$API;

    .line 460
    .restart local v0       #api:Landroid/taobao/apirequest/ApiConnector$API;
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    cmp-long v4, p1, v4

    if-lez v4, :cond_6

    .line 461
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 462
    :cond_6
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_5

    .line 463
    iget-wide v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_7

    .line 464
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 466
    :cond_7
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_5

    .line 467
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 472
    .end local v0           #api:Landroid/taobao/apirequest/ApiConnector$API;
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method report()Ljava/lang/String;
    .locals 7

    .prologue
    .line 517
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-wide v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_average_value:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 520
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 521
    iget-object v4, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$API;

    .line 522
    .local v0, api:Landroid/taobao/apirequest/ApiConnector$API;
    iget-object v4, v0, Landroid/taobao/apirequest/ApiConnector$API;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v5, v0, Landroid/taobao/apirequest/ApiConnector$API;->time:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_0

    .line 524
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v0           #api:Landroid/taobao/apirequest/ApiConnector$API;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method reset()V
    .locals 2

    .prologue
    .line 506
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->m_average_value:J

    .line 507
    iget-object v0, p0, Landroid/taobao/apirequest/ApiConnector$APIStat;->topApis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    return-void
.end method
