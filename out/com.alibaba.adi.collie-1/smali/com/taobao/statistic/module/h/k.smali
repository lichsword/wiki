.class public Lcom/taobao/statistic/module/h/k;
.super Ljava/lang/Object;
.source "TraceParserUtils.java"


# direct methods
.method public static aa(Ljava/lang/String;)Lcom/taobao/statistic/module/h/i;
    .locals 14
    .parameter "traceContent"

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 8
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 11
    :cond_0
    const-string v0, "\\|\\|"

    const/16 v8, 0x8

    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 12
    .local v7, contents:[Ljava/lang/String;
    const-string v1, "-"

    .line 13
    .local v1, page:Ljava/lang/String;
    const-string v2, "-"

    .line 14
    .local v2, eventID:Ljava/lang/String;
    const-string v3, "-"

    .line 15
    .local v3, arg1:Ljava/lang/String;
    const-string v4, "-"

    .line 16
    .local v4, arg2:Ljava/lang/String;
    const-string v5, "-"

    .line 17
    .local v5, arg3:Ljava/lang/String;
    const-string v6, "-"

    .line 18
    .local v6, kvs:Ljava/lang/String;
    array-length v0, v7

    const/4 v8, 0x1

    if-le v0, v8, :cond_1

    .line 19
    aget-object v0, v7, v9

    invoke-static {v0}, Lcom/taobao/statistic/module/h/l;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_1
    array-length v0, v7

    if-le v0, v9, :cond_2

    .line 22
    aget-object v2, v7, v10

    .line 24
    :cond_2
    array-length v0, v7

    if-le v0, v10, :cond_3

    .line 25
    aget-object v3, v7, v11

    .line 27
    :cond_3
    array-length v0, v7

    if-le v0, v11, :cond_4

    .line 28
    aget-object v4, v7, v12

    .line 30
    :cond_4
    array-length v0, v7

    if-le v0, v12, :cond_5

    .line 31
    aget-object v5, v7, v13

    .line 33
    :cond_5
    array-length v0, v7

    if-le v0, v13, :cond_6

    .line 34
    const/4 v0, 0x7

    aget-object v6, v7, v0

    .line 36
    :cond_6
    new-instance v0, Lcom/taobao/statistic/module/h/i;

    invoke-direct/range {v0 .. v6}, Lcom/taobao/statistic/module/h/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
