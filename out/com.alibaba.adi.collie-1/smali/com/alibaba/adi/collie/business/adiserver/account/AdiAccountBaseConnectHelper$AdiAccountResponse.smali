.class Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;
.super Ljava/lang/Object;
.source "AdiAccountBaseConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdiAccountResponse"
.end annotation


# instance fields
.field private isParsed:Z

.field private mRegisterResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

.field final synthetic this$0:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->this$0:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->isParsed:Z

    return-void
.end method


# virtual methods
.method public getmRegisterResult()Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->mRegisterResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    return-object v0
.end method

.method public isParsed()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->isParsed:Z

    return v0
.end method

.method public parseResult(Ljava/lang/String;Z)Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;
    .locals 8
    .parameter "str"
    .parameter "parseData"

    .prologue
    .line 53
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, jsonObject:Lorg/json/JSONObject;
    new-instance v7, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    invoke-direct {v7}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;-><init>()V

    iput-object v7, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->mRegisterResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    .line 56
    const-string v7, "status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 57
    .local v6, ret:I
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->mRegisterResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    invoke-virtual {v7, v6}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->setRetCode(I)V

    .line 59
    if-eqz p2, :cond_0

    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    .local v1, dataJsonObj:Lorg/json/JSONObject;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->mRegisterResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    invoke-virtual {v7, v0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->setRetData(Ljava/util/Map;)V

    .line 68
    .end local v0           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #dataJsonObj:Lorg/json/JSONObject;
    .end local v3           #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->isParsed:Z

    .line 73
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #ret:I
    :goto_1
    return-object p0

    .line 63
    .restart local v0       #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #dataJsonObj:Lorg/json/JSONObject;
    .restart local v3       #iter:Ljava/util/Iterator;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #ret:I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #dataJsonObj:Lorg/json/JSONObject;
    .end local v3           #iter:Ljava/util/Iterator;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #ret:I
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Lorg/json/JSONException;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->isParsed:Z

    .line 71
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
