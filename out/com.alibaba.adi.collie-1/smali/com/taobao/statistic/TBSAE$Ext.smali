.class public Lcom/taobao/statistic/TBSAE$Ext;
.super Ljava/lang/Object;
.source "TBSAE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSAE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitEvent(I)V
    .locals 7
    .parameter "eventID"

    .prologue
    const/4 v3, 0x0

    .line 418
    const-string v1, "Page_Extend"

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;)V
    .locals 7
    .parameter "eventID"
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 431
    const-string v1, "Page_Extend"

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 446
    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 463
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 7
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 482
    const-string v1, "Page_Extend"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public commitEvent(Ljava/lang/String;I)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 330
    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 345
    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 363
    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSAE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public varargs commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 406
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 407
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 409
    :cond_0
    return-void
.end method

.method public commitEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 285
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    .line 288
    :cond_0
    return-void
.end method

.method public commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 300
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V

    .line 303
    :cond_0
    return-void
.end method

.method public commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 315
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V

    .line 318
    :cond_0
    return-void
.end method

.method public trade(Ljava/lang/String;)V
    .locals 2
    .parameter "bizOrderID"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Ext;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 496
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->trade(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method
