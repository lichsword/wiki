.class public Lcom/taobao/statistic/module/h/j;
.super Ljava/lang/Object;
.source "TraceLogTranslater.java"


# direct methods
.method public static Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "traceContent"

    .prologue
    .line 8
    invoke-static {p0}, Lcom/taobao/statistic/module/h/k;->aa(Ljava/lang/String;)Lcom/taobao/statistic/module/h/i;

    move-result-object v6

    .line 9
    .local v6, ti:Lcom/taobao/statistic/module/h/i;
    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->getPage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->dT()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->getArg1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->getArg2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->getArg3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/taobao/statistic/module/h/i;->dU()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "page"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 19
    const-string v6, ""

    .line 20
    .local v6, content:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, i_eventID:I
    div-int/lit16 v7, v0, 0x3e8

    .line 22
    .local v7, i_divEventID:I
    packed-switch v7, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    const/16 v1, 0x4e1f

    if-ne v0, v1, :cond_0

    .line 59
    const-string v1, "(CUSTOM){EventID:%s,Duration:%s(ms)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 62
    :cond_0
    const/16 v1, 0x14

    if-lt v7, v1, :cond_3

    const/16 v1, 0x64

    if-gt v7, v1, :cond_3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    :cond_1
    :goto_1
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "(NoMatch){Page:%s,arg1:%s,arg2:%s,arg3:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 73
    :cond_2
    const-string v1, "(%s:%s,Kvs:%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 75
    return-object v6

    :pswitch_1
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    goto :goto_0

    :pswitch_2
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    goto :goto_0

    :pswitch_3
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    goto :goto_0

    :pswitch_4
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    goto/16 :goto_0

    :pswitch_5
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    goto/16 :goto_0

    :pswitch_6
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    goto/16 :goto_0

    :pswitch_7
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    goto/16 :goto_0

    :pswitch_8
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/m;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    goto/16 :goto_0

    .line 65
    :cond_3
    const/16 v1, 0x64

    if-le v7, v1, :cond_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/module/h/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
