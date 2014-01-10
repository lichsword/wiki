.class public Lcom/taobao/android/ssologin/ApiResponse;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologin/ApiResponse;
    .locals 9
    .parameter "str"

    .prologue
    const/4 v8, 0x0

    .line 75
    iput-boolean v8, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 77
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, jso:Lorg/json/JSONObject;
    const-string v7, "api"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/taobao/android/ssologin/ApiResponse;->api:Ljava/lang/String;

    .line 79
    const-string v7, "v"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/taobao/android/ssologin/ApiResponse;->v:Ljava/lang/String;

    .line 80
    const-string v7, "ret"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 81
    .local v2, jsArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 82
    .local v6, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v5, retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/taobao/android/ssologin/ApiResponse;->parserRet([Ljava/lang/String;)V

    .line 92
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, p0, Lcom/taobao/android/ssologin/ApiResponse;->data:Lorg/json/JSONObject;

    .line 103
    .end local v1           #i:I
    .end local v2           #jsArray:Lorg/json/JSONArray;
    .end local v3           #jso:Lorg/json/JSONObject;
    .end local v5           #retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #size:I
    :goto_1
    return-object p0

    .line 84
    .restart local v1       #i:I
    .restart local v2       #jsArray:Lorg/json/JSONArray;
    .restart local v3       #jso:Lorg/json/JSONObject;
    .restart local v5       #retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #size:I
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, ret:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1           #i:I
    .end local v2           #jsArray:Lorg/json/JSONArray;
    .end local v3           #jso:Lorg/json/JSONObject;
    .end local v4           #ret:Ljava/lang/String;
    .end local v5           #retList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #size:I
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    iput-boolean v8, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 99
    const-string v7, ""

    iput-object v7, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 100
    const-string v7, ""

    iput-object v7, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public parserRet([Ljava/lang/String;)V
    .locals 14
    .parameter "ret"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 112
    if-eqz p1, :cond_0

    array-length v10, p1

    if-lez v10, :cond_0

    .line 113
    array-length v9, p1

    .line 114
    .local v9, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v9, :cond_1

    .line 134
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v13, :cond_4

    .line 135
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 136
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "SUCCESS"

    const-string v11, "KEY"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 137
    iput-boolean v13, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 139
    const-string v10, "KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 140
    const-string v10, "VALUE"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    .line 165
    .end local v0           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #size:I
    :cond_0
    :goto_1
    return-void

    .line 116
    .restart local v0       #i:I
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9       #size:I
    :cond_1
    aget-object v8, p1, v0

    .line 117
    .local v8, result:Ljava/lang/String;
    const-string v10, "::"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 125
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v10, v1, 0x2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 127
    .local v7, msg:Ljava/lang/String;
    const-string v10, "KEY"

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v10, "VALUE"

    invoke-interface {v4, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #msg:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1           #index:I
    .end local v8           #result:Ljava/lang/String;
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iput-boolean v12, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 144
    const-string v10, "KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 145
    const-string v10, "VALUE"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1

    .line 148
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 149
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 150
    .local v5, map1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 151
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

    .line 153
    iput-boolean v12, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 154
    const-string v10, "VALUE"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 155
    const-string v10, "VALUE"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 158
    :cond_5
    iput-boolean v12, p0, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    .line 159
    const-string v10, "KEY"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    .line 160
    const-string v10, "VALUE"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    goto/16 :goto_1
.end method
