.class public Lcom/alibaba/adi/collie/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final SOURCE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final TARGET_DATE_FORMAT:Ljava/lang/String; = "MM-dd"

.field public static final TODAY_DATE_FORMAT:Ljava/lang/String; = "HH:mm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "dateStr0"
    .parameter "dateStr1"
    .parameter "format"

    .prologue
    .line 26
    if-nez p2, :cond_0

    .line 27
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 29
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 33
    .local v0, date0:Ljava/util/Date;
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 38
    .local v1, date1:Ljava/util/Date;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    .line 44
    .end local v0           #date0:Ljava/util/Date;
    .end local v1           #date1:Ljava/util/Date;
    :goto_1
    return v4

    .line 36
    .restart local v0       #date0:Ljava/util/Date;
    :cond_2
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .restart local v1       #date1:Ljava/util/Date;
    goto :goto_0

    .line 39
    .end local v0           #date0:Ljava/util/Date;
    .end local v1           #date1:Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 40
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 44
    .end local v2           #e:Ljava/text/ParseException;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 41
    :catch_1
    move-exception v2

    .line 42
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dateLong"
    .parameter "format"

    .prologue
    .line 54
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, dateFormatted:Ljava/lang/String;
    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dateLong"
    .parameter "format"

    .prologue
    .line 48
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, dateFormatted:Ljava/lang/String;
    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 7
    .parameter "source"
    .parameter "formatSource"
    .parameter "formatTarget"
    .parameter "locale"
    .parameter "today"

    .prologue
    .line 76
    move-object v4, p0

    .line 77
    .local v4, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 78
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    const-string p2, "MM-dd"

    .line 83
    :cond_1
    if-nez p3, :cond_2

    .line 84
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 88
    :cond_2
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 90
    .local v0, date:Ljava/util/Date;
    invoke-static {v0}, Lcom/alibaba/adi/collie/util/DateUtil;->isYeaterday(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 91
    const-string v5, "\u6628\u5929"

    .line 100
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v5

    .line 92
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/adi/collie/util/DateUtil;->isYeaterday(Ljava/util/Date;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    if-eqz p4, :cond_4

    .line 93
    const-string p2, "HH:mm"

    .line 95
    :cond_4
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, formatterAfter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .end local v0           #date:Ljava/util/Date;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #formatterAfter:Ljava/text/SimpleDateFormat;
    :goto_1
    move-object v5, v4

    .line 100
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTimeLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "dateStr"
    .parameter "format"

    .prologue
    .line 65
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 68
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 72
    .end local v0           #date:Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 72
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public static isYeaterday(Ljava/util/Date;)I
    .locals 10
    .parameter "oldTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 106
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 107
    .local v1, newTime:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, todayStr:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 111
    .local v2, today:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 112
    const/4 v4, 0x0

    .line 118
    :goto_0
    return v4

    .line 114
    :cond_0
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    .line 115
    const/4 v4, -0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static now(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "format"

    .prologue
    .line 60
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 61
    .local v0, now:J
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/DateUtil;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
