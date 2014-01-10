.class public Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;
.super Ljava/lang/Object;
.source "WeiboDataParser.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mWeiboCommentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    .line 260
    new-instance v0, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser$1;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser$1;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->mWeiboCommentComparator:Ljava/util/Comparator;

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatCreatedAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "createdAt"

    .prologue
    .line 272
    const-string v1, "EEE MMM dd HH:mm:ss ZZZ yyyy"

    .line 273
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x0

    .line 272
    invoke-static {p0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getComment(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .locals 13
    .parameter "jsonEntry"

    .prologue
    const/4 v9, 0x0

    .line 130
    :try_start_0
    new-instance v0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;-><init>()V

    .line 131
    .local v0, comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    const-string v10, "created_at"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, createdAt:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->formatCreatedAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setCreatedAt(Ljava/lang/String;)V

    .line 133
    const-string v10, "id"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setId(Ljava/lang/Long;)V

    .line 134
    const-string v10, "text"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 136
    :try_start_1
    const-string v10, "reply_comment"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getComment(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    move-result-object v6

    .line 137
    .local v6, sourceStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setReplyComment(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v6           #sourceStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    :cond_0
    :goto_0
    :try_start_2
    const-string v10, "retweeted_status"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getWeiboStatus(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v5

    .line 146
    .local v5, reweetedStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    if-eqz v5, :cond_1

    .line 147
    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setRetweetedStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .end local v5           #reweetedStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    :cond_1
    :goto_1
    :try_start_3
    const-string v10, "user"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 154
    .local v4, jsonUser:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getUser(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v8

    .line 155
    .local v8, user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    if-nez v8, :cond_2

    move-object v0, v9

    .line 177
    .end local v0           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .end local v1           #createdAt:Ljava/lang/String;
    .end local v4           #jsonUser:Lorg/json/JSONObject;
    .end local v8           #user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    :goto_2
    return-object v0

    .line 140
    .restart local v0       #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .restart local v1       #createdAt:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Ljava/lang/Exception;
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 172
    .end local v0           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .end local v1           #createdAt:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 173
    .local v2, e:Lorg/json/JSONException;
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #e:Lorg/json/JSONException;
    :goto_3
    move-object v0, v9

    .line 177
    goto :goto_2

    .line 149
    .restart local v0       #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .restart local v1       #createdAt:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 174
    .end local v0           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .end local v1           #createdAt:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 175
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .restart local v1       #createdAt:Ljava/lang/String;
    .restart local v4       #jsonUser:Lorg/json/JSONObject;
    .restart local v8       #user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    :cond_2
    :try_start_5
    invoke-virtual {v0, v8}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setUser(Lcom/alibaba/adi/collie/model/weibo/WeiboUser;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :try_start_6
    const-string v10, "status"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 163
    .local v3, jsonStatus:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getWeiboStatus(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    move-result-object v7

    .line 164
    .local v7, status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    if-nez v7, :cond_3

    move-object v0, v9

    .line 165
    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {v0, v7}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->setStatus(Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 168
    .end local v3           #jsonStatus:Lorg/json/JSONObject;
    .end local v7           #status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    :catch_4
    move-exception v2

    .line 169
    .local v2, e:Lorg/json/JSONException;
    :try_start_7
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2
.end method

.method public static getCommentList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v6, jsonObject:Lorg/json/JSONObject;
    const-string v7, "comments"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 31
    .local v1, commentArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_0

    .line 44
    .end local v1           #commentArray:Lorg/json/JSONArray;
    .end local v2           #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .end local v4           #i:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 32
    .restart local v1       #commentArray:Lorg/json/JSONArray;
    .restart local v2       #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .restart local v4       #i:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 33
    .local v5, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getComment(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    move-result-object v0

    .line 34
    .local v0, comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v0           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .end local v1           #commentArray:Lorg/json/JSONArray;
    .end local v2           #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .end local v4           #i:I
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 40
    .local v3, e:Lorg/json/JSONException;
    sget-object v7, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v3           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 41
    :catch_1
    move-exception v3

    .line 42
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getCommentListFromStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, jsonObject:Lorg/json/JSONObject;
    const-string v7, "statuses"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    .local v1, commentArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_0

    .line 85
    .end local v1           #commentArray:Lorg/json/JSONArray;
    .end local v2           #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .end local v4           #i:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 73
    .restart local v1       #commentArray:Lorg/json/JSONArray;
    .restart local v2       #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .restart local v4       #i:I
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 74
    .local v5, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getComment(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    move-result-object v0

    .line 75
    .local v0, comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v0           #comment:Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
    .end local v1           #commentArray:Lorg/json/JSONArray;
    .end local v2           #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboComment;>;"
    .end local v4           #i:I
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 81
    .local v3, e:Lorg/json/JSONException;
    sget-object v7, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v3           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 82
    :catch_1
    move-exception v3

    .line 83
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getFollowerList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboUser;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v6, "users"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 52
    .local v4, userArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 64
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #userArray:Lorg/json/JSONArray;
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboUser;>;"
    :goto_1
    return-object v5

    .line 53
    .restart local v1       #i:I
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #userArray:Lorg/json/JSONArray;
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboUser;>;"
    :cond_0
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getUser(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v3

    .line 54
    .local v3, user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    .end local v4           #userArray:Lorg/json/JSONArray;
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboUser;>;"
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lorg/json/JSONException;
    sget-object v6, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xhh: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xhh: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getPrivateMsgList(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 13
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .local v9, msgMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v10, "direct_messages"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 93
    .local v7, msgArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 125
    .end local v3           #i:I
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #msgArray:Lorg/json/JSONArray;
    .end local v9           #msgMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;>;"
    :goto_1
    return-object v9

    .line 94
    .restart local v3       #i:I
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #msgArray:Lorg/json/JSONArray;
    .restart local v9       #msgMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;>;"
    :cond_0
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 96
    .local v2, entry:Lorg/json/JSONObject;
    :try_start_1
    new-instance v6, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;

    invoke-direct {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;-><init>()V

    .line 97
    .local v6, msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    const-string v10, "id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setId(Ljava/lang/Long;)V

    .line 98
    const-string v10, "created_at"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, createdAt:Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->formatCreatedAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setCreatedAt(Ljava/lang/String;)V

    .line 100
    const-string v10, "sender_id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setSenderId(Ljava/lang/Long;)V

    .line 101
    const-string v10, "recipient_id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setRecipientId(Ljava/lang/Long;)V

    .line 102
    const-string v10, "sender_screen_name"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setSenderScreenName(Ljava/lang/String;)V

    .line 103
    const-string v10, "recipient_screen_name"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setRecipientScreenName(Ljava/lang/String;)V

    .line 104
    const-string v10, "mid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setMid(Ljava/lang/String;)V

    .line 105
    const-string v10, "text"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->setText(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->getSenderScreenName()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 109
    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    .end local v0           #createdAt:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .restart local v0       #createdAt:Ljava/lang/String;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v8, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;"
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v9, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 115
    .end local v0           #createdAt:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #msg:Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
    .end local v8           #msgList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;"
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 120
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #entry:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #msgArray:Lorg/json/JSONArray;
    .end local v9           #msgMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;>;>;"
    :catch_1
    move-exception v1

    .line 121
    .restart local v1       #e:Lorg/json/JSONException;
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v1           #e:Lorg/json/JSONException;
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 122
    :catch_2
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "xhh: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getUser(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    .locals 5
    .parameter "jsonStr"

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, jsonUser:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getUser(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 220
    .end local v1           #jsonUser:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getUser(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    .locals 5
    .parameter "jsonUser"

    .prologue
    .line 225
    :try_start_0
    new-instance v1, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;-><init>()V

    .line 226
    .local v1, user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setId(Ljava/lang/Long;)V

    .line 227
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setName(Ljava/lang/String;)V

    .line 228
    const-string v2, "screen_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setScreenName(Ljava/lang/String;)V

    .line 229
    const-string v2, "followers_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setFollowersCount(I)V

    .line 230
    const-string v2, "friends_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setFriendsCount(I)V

    .line 231
    const-string v2, "profile_image_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->setProfileImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .end local v1           #user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getWeiboStatus(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    .locals 5
    .parameter "jsonStr"

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, jsonStatus:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getWeiboStatus(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 189
    .end local v1           #jsonStatus:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getWeiboStatus(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    .locals 7
    .parameter "jsonStatus"

    .prologue
    .line 194
    :try_start_0
    new-instance v2, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;-><init>()V

    .line 195
    .local v2, status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->setId(Ljava/lang/Long;)V

    .line 196
    const-string v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->setText(Ljava/lang/String;)V

    .line 197
    const-string v4, "created_at"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, createdAt:Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->formatCreatedAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->setCreatedAt(Ljava/lang/String;)V

    .line 199
    const-string v4, "source"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->setSource(Ljava/lang/String;)V

    .line 200
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getUser(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v3

    .line 201
    .local v3, user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->setUser(Lcom/alibaba/adi/collie/model/weibo/WeiboUser;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .end local v0           #createdAt:Ljava/lang/String;
    .end local v2           #status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    .end local v3           #user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Lorg/json/JSONException;
    sget-object v4, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xhh: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1           #e:Lorg/json/JSONException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :catch_1
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xhh: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getWeiboUnreadStatus(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
    .locals 6
    .parameter "jsonStr"

    .prologue
    .line 243
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, jsonUnreadStatus:Lorg/json/JSONObject;
    new-instance v2, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;-><init>()V

    .line 245
    .local v2, unreadStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setStatus(I)V

    .line 246
    const-string v3, "follower"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setFollower(I)V

    .line 247
    const-string v3, "cmt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setCmt(I)V

    .line 248
    const-string v3, "dm"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setDm(I)V

    .line 249
    const-string v3, "mention_status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setMentionStatus(I)V

    .line 250
    const-string v3, "mention_cmt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setMentionCmt(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    .end local v1           #jsonUnreadStatus:Lorg/json/JSONObject;
    .end local v2           #unreadStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
