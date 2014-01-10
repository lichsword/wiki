.class Lcom/taobao/statistic/module/h/f;
.super Ljava/lang/Object;
.source "ShareEventTranslater.java"


# direct methods
.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "eventID"
    .parameter "page"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 22
    const-string v2, ""

    :goto_0
    return-object v2

    .line 13
    :pswitch_0
    const-string v0, ""

    .line 15
    .local v0, content:Ljava/lang/String;
    :try_start_0
    invoke-static {p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 19
    :goto_1
    const-string v2, "(SHARE_WEIBO){Page:%s,Type:%s,Content:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    .local v1, e:Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_1

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
    .end packed-switch
.end method
