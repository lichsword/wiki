.class public Lcom/alibaba/adi/collie/model/service/NewsData;
.super Ljava/lang/Object;
.source "NewsData.java"


# instance fields
.field private final DISPLAY_FORMAT_DATA:Ljava/lang/String;

.field private final FORMAT_DATA:Ljava/lang/String;

.field private final TIME_10_MINS:J

.field private final TIME_15_MINS:J

.field private final TIME_1_HOUR:J

.field private final TIME_2_HOURS:J

.field private final TIME_30_MINS:J

.field private final TIME_5_MINS:J

.field app_open_url:Ljava/lang/String;

.field display_time:Ljava/lang/String;

.field id:Ljava/lang/String;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field site:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;

.field toutiao_wap_url:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "MM-dd HH:mm"

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->DISPLAY_FORMAT_DATA:Ljava/lang/String;

    .line 61
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->FORMAT_DATA:Ljava/lang/String;

    .line 62
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_5_MINS:J

    .line 63
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_10_MINS:J

    .line 64
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_15_MINS:J

    .line 65
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_30_MINS:J

    .line 66
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_1_HOUR:J

    .line 67
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->TIME_2_HOURS:J

    .line 32
    return-void
.end method


# virtual methods
.method public getApp_open_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->app_open_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, result:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->display_time:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 194
    .local v0, date:Ljava/util/Date;
    const-string v4, "MM-dd HH:mm"

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 199
    .end local v0           #date:Ljava/util/Date;
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDisplay_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->display_time:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->images:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->images:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/ImageData;

    .line 135
    .local v0, data:Lcom/alibaba/adi/collie/model/service/ImageData;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/service/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 139
    .end local v0           #data:Lcom/alibaba/adi/collie/model/service/ImageData;
    :cond_0
    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->images:Ljava/util/List;

    return-object v0
.end method

.method public getRelativeTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/model/service/NewsData;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeTime(J)Ljava/lang/String;
    .locals 10
    .parameter "systemTime"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, result:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->display_time:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 83
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 84
    .local v6, time:J
    sub-long v1, p1, v6

    .line 85
    .local v1, diff:J
    const-wide/32 v8, 0x493e0

    cmp-long v8, v1, v8

    if-gez v8, :cond_0

    .line 86
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0151

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #diff:J
    .end local v6           #time:J
    :goto_0
    return-object v5

    .line 87
    .restart local v0       #date:Ljava/util/Date;
    .restart local v1       #diff:J
    .restart local v6       #time:J
    :cond_0
    const-wide/32 v8, 0x927c0

    cmp-long v8, v1, v8

    if-gez v8, :cond_1

    .line 88
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0152

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    goto :goto_0

    :cond_1
    const-wide/32 v8, 0xdbba0

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 90
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0153

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    goto :goto_0

    :cond_2
    const-wide/32 v8, 0x1b7740

    cmp-long v8, v1, v8

    if-gez v8, :cond_3

    .line 92
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0154

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    goto :goto_0

    :cond_3
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v1, v8

    if-gez v8, :cond_4

    .line 94
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0155

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    goto :goto_0

    :cond_4
    const-wide/32 v8, 0x6ddd00

    cmp-long v8, v1, v8

    if-gez v8, :cond_5

    .line 96
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0156

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    sget-object v8, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v9, 0x7f0a0157

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 100
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #diff:J
    .end local v6           #time:J
    :catch_0
    move-exception v3

    .line 101
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->site:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToutiao_wap_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->toutiao_wap_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_open_url(Ljava/lang/String;)V
    .locals 0
    .parameter "app_open_url"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->app_open_url:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setDisplay_time(Ljava/lang/String;)V
    .locals 0
    .parameter "display_time"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->display_time:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, images:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageData;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->images:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 0
    .parameter "site"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->site:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->summary:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->title:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setToutiao_wap_url(Ljava/lang/String;)V
    .locals 0
    .parameter "toutiao_wap_url"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->toutiao_wap_url:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/NewsData;->url:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 184
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, ret:Ljava/lang/String;
    const-string v2, "\"summary\":"

    const-string v3, "\"abstract\":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 186
    return-object v1
.end method
