.class public Landroid/taobao/apirequest/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# static fields
.field public static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field public api:Ljava/lang/String;

.field public data:Lorg/json/JSONObject;

.field public errCode:Ljava/lang/String;

.field public errInfo:Ljava/lang/String;

.field public success:Z

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;
    .locals 10
    .parameter "str"

    .prologue
    const/4 v9, 0x0

    .line 83
    const-string v7, "TaoSdk.ImgPool"

    const-string v8, "TTTTTTTT parseResult!"

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean v9, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 87
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, jso:Lorg/json/JSONObject;
    const-string v7, "api"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/apirequest/ApiResponse;->api:Ljava/lang/String;

    .line 89
    const-string v7, "v"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/apirequest/ApiResponse;->v:Ljava/lang/String;

    .line 90
    const-string v7, "ret"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 91
    .local v2, jsArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 92
    .local v6, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 94
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, ret:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v4           #ret:Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/taobao/apirequest/ApiResponse;->parserRet([Ljava/lang/String;)V

    .line 102
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #i:I
    .end local v2           #jsArray:Lorg/json/JSONArray;
    .end local v3           #jso:Lorg/json/JSONObject;
    .end local v5           #retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #size:I
    :goto_1
    return-object p0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    invoke-static {v0}, Lcom/taobao/statistic/TBS$Adv;->onCaughException(Ljava/lang/Throwable;)V

    .line 110
    sget v7, Landroid/taobao/common/SDKConstants;->ID_PAGE_JSON_EXCEPTION:I

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iput-boolean v9, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 113
    const-string v7, ""

    iput-object v7, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 114
    const-string v7, ""

    iput-object v7, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public parserRet([Ljava/lang/String;)V
    .locals 14
    .parameter "ret"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 126
    if-eqz p1, :cond_2

    array-length v10, p1

    if-lez v10, :cond_2

    .line 127
    array-length v9, p1

    .line 128
    .local v9, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 130
    aget-object v8, p1, v0

    .line 131
    .local v8, result:Ljava/lang/String;
    const-string v10, "::"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 137
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v10, v1, 0x2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, msg:Ljava/lang/String;
    const-string v10, "KEY"

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v10, "VALUE"

    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #msg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1           #index:I
    .end local v8           #result:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v13, :cond_4

    .line 149
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 150
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "SUCCESS"

    const-string v11, "KEY"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 151
    iput-boolean v13, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 153
    const-string v10, "KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 154
    const-string v10, "VALUE"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    .line 179
    .end local v0           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #size:I
    :cond_2
    :goto_1
    return-void

    .line 157
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #size:I
    :cond_3
    iput-boolean v12, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 158
    const-string v10, "KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 159
    const-string v10, "VALUE"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1

    .line 162
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 163
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 164
    .local v5, map1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 165
    .local v6, map2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "FAIL"

    const-string v11, "KEY"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "ERR_CODE"

    const-string v11, "KEY"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 167
    iput-boolean v12, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 168
    const-string v10, "VALUE"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 169
    const-string v10, "VALUE"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_5
    iput-boolean v12, p0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    .line 173
    const-string v10, "KEY"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 174
    const-string v10, "VALUE"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1
.end method
