.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.source "AdiAppRegisterConnectHelper.java"


# instance fields
.field private mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "eCode"
    .parameter "appKey"
    .parameter "passwd"

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->parseData:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "type"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->parseData:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 5
    .parameter "request"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 36
    sget-object v3, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v3, v4, :cond_0

    .line 38
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 39
    .local v2, params:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, param:Lorg/json/JSONObject;
    const-string v3, "app_name"

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v3, "app_info"

    new-instance v4, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsRegisStrGenerator;

    invoke-direct {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsRegisStrGenerator;-><init>()V

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsRegisStrGenerator;->getRequestString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    const-string v3, "app_params"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #param:Lorg/json/JSONObject;
    .end local v2           #params:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
