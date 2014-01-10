.class public Landroid/taobao/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToDisplayStr(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "str"

    .prologue
    .line 35
    invoke-static {p0}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, ""

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 20
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parserFloat(Ljava/lang/String;)F
    .locals 2
    .parameter "str"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 59
    :goto_0
    return v1

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:F
    goto :goto_0

    .line 56
    .end local v1           #result:F
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1       #result:F
    goto :goto_0
.end method

.method public static parserInt(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, result:I
    goto :goto_0

    .line 94
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static parserLong(Ljava/lang/String;)J
    .locals 3
    .parameter "str"

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const-wide/16 v1, 0x0

    .line 78
    :goto_0
    return-wide v1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .local v1, result:J
    goto :goto_0

    .line 75
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    .restart local v1       #result:J
    goto :goto_0
.end method
