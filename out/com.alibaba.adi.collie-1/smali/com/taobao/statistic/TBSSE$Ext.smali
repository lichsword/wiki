.class public Lcom/taobao/statistic/TBSSE$Ext;
.super Ljava/lang/Object;
.source "TBSSE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSSE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSSE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSSE;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/taobao/statistic/TBSSE$Ext;->this$0:Lcom/taobao/statistic/TBSSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitEvent(I)V
    .locals 7
    .parameter "eventID"

    .prologue
    const/4 v3, 0x0

    .line 370
    const-string v1, "Page_Extend"

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;)V
    .locals 7
    .parameter "eventID"
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 382
    const-string v1, "Page_Extend"

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 396
    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 413
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 414
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
    .line 432
    const-string v1, "Page_Extend"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 433
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

    .line 278
    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 279
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

    .line 293
    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 294
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

    .line 311
    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 312
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
    .line 331
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/TBSSE$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 332
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
    .line 353
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Ext;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 355
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 356
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 360
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
