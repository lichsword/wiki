.class Lcom/taobao/statistic/module/h/d;
.super Ljava/lang/Object;
.source "PageEventTranslater.java"


# direct methods
.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "eventID"
    .parameter "page"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    sparse-switch p0, :sswitch_data_0

    .line 28
    const-string v0, ""

    :goto_0
    return-object v0

    .line 11
    :sswitch_0
    const-string v0, "(PAGE){Page:%s,From:%s,By:%s,Duration:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    aput-object p4, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :sswitch_1
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    const-string v0, "(PAGE_CTL_CLICKED){Page:%s,ControlName:%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :sswitch_2
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    const-string v0, "(PAGE_CTL_ITEM_SELECTED){Page:%s,ControlName:%s,Index:%s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    aput-object p4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :sswitch_3
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    const-string v0, "(PAGE_CTL_LONG_CLICKED){Page:%s,ControlName:%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x835 -> :sswitch_1
        0x836 -> :sswitch_2
        0x837 -> :sswitch_3
    .end sparse-switch
.end method
