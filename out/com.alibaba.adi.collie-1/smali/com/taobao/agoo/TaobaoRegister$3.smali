.class final Lcom/taobao/agoo/TaobaoRegister$3;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "TaobaoRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/TaobaoRegister;->getSubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/ISubscribe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$subscribe:Lcom/taobao/agoo/ISubscribe;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/agoo/ISubscribe;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$3;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$3;->val$context:Landroid/content/Context;

    #calls: Lcom/taobao/agoo/TaobaoRegister;->handleError(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/taobao/agoo/TaobaoRegister;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$3;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "504.2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/taobao/agoo/ISubscribe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 17
    .parameter "content"

    .prologue
    .line 320
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 322
    .local v3, json:Lorg/json/JSONObject;
    const-string v13, "status"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, status:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$3;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    const-string v14, "504.2"

    const-string v15, "status == null"

    invoke-interface {v13, v14, v15}, Lcom/taobao/agoo/ISubscribe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v6           #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .end local v10           #status:Ljava/lang/String;
    :goto_0
    return-void

    .line 328
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v6       #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .restart local v10       #status:Ljava/lang/String;
    :cond_0
    const-string v13, "msg_types"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 329
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 330
    .local v11, tmpJson:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 331
    .local v5, msgType:Lcom/taobao/agoo/MsgType;
    const/4 v8, 0x0

    .local v8, name:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, tmpSubscribe:Ljava/lang/String;
    const/4 v9, 0x0

    .line 332
    .local v9, regType:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 333
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    .local v7, n:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 334
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 335
    if-nez v11, :cond_2

    .line 333
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    :cond_2
    const-string v13, "regType"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 339
    const-string v13, "name"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 344
    new-instance v5, Lcom/taobao/agoo/MsgType;

    .end local v5           #msgType:Lcom/taobao/agoo/MsgType;
    invoke-direct {v5}, Lcom/taobao/agoo/MsgType;-><init>()V

    .line 345
    .restart local v5       #msgType:Lcom/taobao/agoo/MsgType;
    invoke-virtual {v5, v8}, Lcom/taobao/agoo/MsgType;->setName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v5, v9}, Lcom/taobao/agoo/MsgType;->setRegType(Ljava/lang/String;)V

    .line 347
    const-string v13, "subscribe"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 348
    const-string v13, "true"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 349
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/taobao/agoo/MsgType;->setSubscribe(Z)V

    .line 351
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const/4 v11, 0x0

    goto :goto_2

    .line 355
    .end local v2           #i:I
    .end local v7           #n:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$3;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    invoke-interface {v13, v10, v6}, Lcom/taobao/agoo/ISubscribe;->onSuccess(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #msgType:Lcom/taobao/agoo/MsgType;
    .end local v6           #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #regType:Ljava/lang/String;
    .end local v10           #status:Ljava/lang/String;
    .end local v11           #tmpJson:Lorg/json/JSONObject;
    .end local v12           #tmpSubscribe:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 357
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "TaobaoRegister"

    const-string v14, "getSubscribe"

    invoke-static {v13, v14, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$3;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    const-string v14, "504.2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parse data error--->["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/taobao/agoo/ISubscribe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
