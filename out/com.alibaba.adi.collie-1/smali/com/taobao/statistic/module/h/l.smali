.class public Lcom/taobao/statistic/module/h/l;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public static ab(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mixedPageName"

    .prologue
    .line 10
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 12
    .local v0, pos1:I
    if-lez v0, :cond_0

    .line 13
    const-string v2, "-"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 14
    .local v1, pos2:I
    if-lez v1, :cond_1

    .line 15
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 23
    .end local v0           #pos1:I
    .end local v1           #pos2:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 17
    .restart local v0       #pos1:I
    .restart local v1       #pos2:I
    .restart local p0
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 23
    .end local v0           #pos1:I
    .end local v1           #pos2:I
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method public static ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mixedControlName"

    .prologue
    .line 27
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, pos1:I
    if-lez v0, :cond_0

    .line 30
    const-string v2, "-"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, pos2:I
    if-lez v1, :cond_1

    .line 32
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 40
    .end local v0           #pos1:I
    .end local v1           #pos2:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 34
    .restart local v0       #pos1:I
    .restart local v1       #pos2:I
    .restart local p0
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 40
    .end local v0           #pos1:I
    .end local v1           #pos2:I
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method public static ad(Ljava/lang/String;)Z
    .locals 4
    .parameter "pEventID"

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, lResult:Z
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const-string v3, "[a-zA-Z0-9_]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 58
    .local v1, lPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 59
    .local v0, lIsValid:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 63
    .end local v0           #lIsValid:Ljava/util/regex/Matcher;
    .end local v1           #lPattern:Ljava/util/regex/Pattern;
    :cond_0
    return v2
.end method

.method public static ae(Ljava/lang/String;)Z
    .locals 1
    .parameter "aFieldContent"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static af(Ljava/lang/String;)Z
    .locals 1
    .parameter "aFieldContent"

    .prologue
    .line 95
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "||"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static ag(Ljava/lang/String;)Z
    .locals 2
    .parameter "aFieldContent"

    .prologue
    .line 104
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, lFieldContent:Ljava/lang/String;
    const-string v1, "dep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "idx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 110
    .end local v0           #lFieldContent:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "aPageName"
    .parameter "aEventID"
    .parameter "aArg1"
    .parameter "aArg2"
    .parameter "aArg3"
    .parameter "aKvs"

    .prologue
    const/4 v5, 0x0

    .line 71
    const/4 v1, 0x1

    .line 72
    .local v1, b1:Z
    if-eqz p5, :cond_2

    array-length v6, p5

    if-lez v6, :cond_2

    .line 73
    move-object v0, p5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 74
    .local v3, kv:Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Lcom/taobao/statistic/module/h/l;->ag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #kv:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_2
    if-nez v1, :cond_4

    .line 87
    :cond_3
    :goto_1
    return v5

    .line 82
    :cond_4
    invoke-static {p0}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p3}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p4}, Lcom/taobao/statistic/module/h/l;->af(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "kvs"

    .prologue
    .line 44
    if-eqz p0, :cond_1

    array-length v5, p0

    if-lez v5, :cond_1

    .line 45
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v4, sb:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 47
    .local v2, kv:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v2           #kv:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    :cond_1
    const-string v5, ""

    goto :goto_1
.end method
