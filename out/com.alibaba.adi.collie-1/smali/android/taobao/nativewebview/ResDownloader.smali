.class public Landroid/taobao/nativewebview/ResDownloader;
.super Ljava/lang/Object;
.source "ResDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static RETRY_Time:I


# instance fields
.field private context:Landroid/app/Application;

.field private listener:Landroid/taobao/nativewebview/WebListener;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    sput v0, Landroid/taobao/nativewebview/ResDownloader;->RETRY_Time:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;)V
    .locals 0
    .parameter "context"
    .parameter "resUrl"
    .parameter "ua"
    .parameter "listener"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p4, p0, Landroid/taobao/nativewebview/ResDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    .line 37
    iput-object p2, p0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroid/taobao/nativewebview/ResDownloader;->context:Landroid/app/Application;

    .line 40
    return-void
.end method

.method private storeRes(Ljava/util/Map;[B)V
    .locals 21
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, -0x1

    .line 74
    .local v13, responeCode:I
    const-string v17, "response-code"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 75
    const-string v17, "response-code"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 80
    :cond_0
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    const/16 v17, 0x12c

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    if-eqz p2, :cond_5

    .line 82
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v11, res:Ljava/lang/String;
    const-string v17, "<html"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 86
    new-instance v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    invoke-direct {v12}, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;-><init>()V

    .line 87
    .local v12, resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    const-string v17, "expires"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 88
    .local v4, expireTime:Ljava/lang/String;
    const-string v17, "cache-control"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 89
    .local v9, maxage:Ljava/lang/String;
    const/4 v5, -0x1

    .line 92
    .local v5, index:I
    if-eqz v9, :cond_1

    .line 93
    const-string v17, "max-age"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 95
    :cond_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_6

    .line 96
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 97
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    const-string v17, "[^0-9]"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 99
    .local v10, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 100
    .local v8, matcher:Ljava/util/regex/Matcher;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 102
    const-string v17, "ResDownloader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "maxage:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-wide/16 v15, 0x0

    .line 105
    .local v15, timeToken:J
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v15, v17, v19

    .line 110
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v17, v17, v15

    move-wide/from16 v0, v17

    iput-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    .line 128
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .end local v10           #pattern:Ljava/util/regex/Pattern;
    .end local v15           #timeToken:J
    :goto_1
    const-string v17, "last-modified"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 129
    .local v6, lastModify:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 130
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v17, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v18, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 131
    .local v14, simpleDateFormat:Ljava/text/SimpleDateFormat;
    const-string v17, "GMT"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 143
    .end local v14           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".css"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".js"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 144
    :cond_2
    const-string v17, "ResDownloader"

    const-string v18, "css localize"

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 146
    .local v7, mark:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 147
    const-string v17, "content-type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, charset:Ljava/lang/String;
    const-string v17, "ResDownloader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http charset:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v2}, Landroid/taobao/nativewebview/ResUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    if-nez v2, :cond_3

    .line 151
    const-string v17, "ResDownloader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "default charset:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "utf-8"

    .line 155
    :cond_3
    :try_start_2
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v20, v7, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/nativewebview/ResUtil;->localizeCSS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p2

    .line 163
    .end local v2           #charset:Ljava/lang/String;
    .end local v7           #mark:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->context:Landroid/app/Application;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/taobao/nativewebview/CacheMgr;->init(Landroid/app/Application;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/taobao/nativewebview/CacheMgr;->putCache(Ljava/lang/String;[BLandroid/taobao/nativewebview/CacheMgr$WebResHeader;)V

    .line 167
    .end local v4           #expireTime:Ljava/lang/String;
    .end local v5           #index:I
    .end local v6           #lastModify:Ljava/lang/String;
    .end local v9           #maxage:Ljava/lang/String;
    .end local v11           #res:Ljava/lang/String;
    .end local v12           #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :cond_5
    return-void

    .line 106
    .restart local v4       #expireTime:Ljava/lang/String;
    .restart local v5       #index:I
    .restart local v8       #matcher:Ljava/util/regex/Matcher;
    .restart local v9       #maxage:Ljava/lang/String;
    .restart local v10       #pattern:Ljava/util/regex/Pattern;
    .restart local v11       #res:Ljava/lang/String;
    .restart local v12       #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    .restart local v15       #timeToken:J
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x927c0

    add-long v15, v17, v19

    .line 108
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 111
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .end local v10           #pattern:Ljava/util/regex/Pattern;
    .end local v15           #timeToken:J
    :cond_6
    if-eqz v4, :cond_7

    .line 112
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v17, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v18, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 113
    .restart local v14       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    const-string v17, "GMT"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 115
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 120
    :goto_4
    const-string v17, "ResDownloader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expireTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    :catch_1
    move-exception v3

    .line 118
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 123
    .end local v3           #e:Ljava/text/ParseException;
    .end local v14           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :cond_7
    const-string v17, "ResDownloader"

    const-string v18, "no expireTime"

    invoke-static/range {v17 .. v18}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x927c0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    goto/16 :goto_1

    .line 134
    .restart local v6       #lastModify:Ljava/lang/String;
    .restart local v14       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v3

    .line 136
    .restart local v3       #e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_2

    .line 139
    .end local v3           #e:Ljava/text/ParseException;
    .end local v14           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v12, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    goto/16 :goto_2

    .line 156
    .restart local v2       #charset:Ljava/lang/String;
    .restart local v7       #mark:I
    :catch_3
    move-exception v3

    .line 158
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 45
    const-string v7, "ResDownloader"

    iget-object v8, p0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v3, header:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/taobao/nativewebview/CacheMgr;->getCacheInfo(Ljava/lang/String;)Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    move-result-object v5

    .line 50
    .local v5, resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    if-eqz v5, :cond_0

    .line 51
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 52
    .local v6, simpleDateFormat:Ljava/text/SimpleDateFormat;
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    const-string v7, "if-modified-since"

    new-instance v8, Ljava/util/Date;

    iget-wide v9, v5, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->modifySince:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v6           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, beginTime:J
    new-instance v4, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v4}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 58
    .local v4, property:Landroid/taobao/apirequest/ApiProperty;
    invoke-virtual {v4, v3}, Landroid/taobao/apirequest/ApiProperty;->setConnectionHeader(Ljava/util/Map;)V

    .line 59
    sget v7, Landroid/taobao/nativewebview/ResDownloader;->RETRY_Time:I

    invoke-virtual {v4, v7}, Landroid/taobao/apirequest/ApiProperty;->setRetryTimes(I)V

    .line 60
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v7

    new-instance v8, Landroid/taobao/nativewebview/WebViewHelper;

    iget-object v9, p0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/taobao/nativewebview/WebViewHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v4}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v2, v7

    check-cast v2, [B

    .line 61
    .local v2, data:[B
    const-string v7, "ResDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "res download cost:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v3, v2}, Landroid/taobao/nativewebview/ResDownloader;->storeRes(Ljava/util/Map;[B)V

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v7, p0, Landroid/taobao/nativewebview/ResDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    if-eqz v7, :cond_1

    .line 66
    const-string v7, "url"

    iget-object v8, p0, Landroid/taobao/nativewebview/ResDownloader;->url:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v7, p0, Landroid/taobao/nativewebview/ResDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v3, v8}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 69
    :cond_1
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
