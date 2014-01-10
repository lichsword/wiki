.class Lcom/taobao/statistic/module/h/c;
.super Ljava/lang/Object;
.source "NetworkEventTranslater.java"


# direct methods
.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "eventID"
    .parameter "page"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 40
    const-string v2, ""

    :goto_0
    return-object v2

    .line 13
    :pswitch_0
    const-string v2, "(NETWORK_PUSH_ARRIVE){Page:%s,Category:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 16
    :pswitch_1
    const-string v2, "(NETWORK_PUSH_DISPLAY){Page:%s,Category:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 19
    :pswitch_2
    const-string v2, "(NETWORK_PUSH_VIEW){Page:%s,Category:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 22
    :pswitch_3
    const-string v1, ""

    .line 24
    .local v1, keyword:Ljava/lang/String;
    :try_start_0
    invoke-static {p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 28
    :goto_1
    const-string v2, "(NETWORK_SEARCH){Page:%s,Category:%s,Keyword:%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1

    .line 31
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #keyword:Ljava/lang/String;
    :pswitch_4
    const-string v2, "(NETWORK_WEBPAGE){Page:%s,Url:%s,Ref:%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 34
    :pswitch_5
    const-string v2, "(NETWORK_TRAFFIC){Page:%s,Total:%sB,Mobile:%sB,Wifi:%sB"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    aput-object p4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :pswitch_6
    const-string v2, "(NETWORK_DOWNLOAD){Page:%s,ItemId:%s,Size:%sB,TimeConsume:%sms"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    aput-object p4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0xfa2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
