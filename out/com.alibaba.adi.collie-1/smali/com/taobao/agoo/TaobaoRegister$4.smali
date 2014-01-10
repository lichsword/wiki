.class final Lcom/taobao/agoo/TaobaoRegister$4;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "TaobaoRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/TaobaoRegister;->updateSubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taobao/agoo/ISubscribe;)V
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
    .line 405
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$4;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$4;->val$context:Landroid/content/Context;

    #calls: Lcom/taobao/agoo/TaobaoRegister;->handleError(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/taobao/agoo/TaobaoRegister;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$4;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

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
    .line 417
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v6, msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v3, json:Lorg/json/JSONObject;
    const-string v13, "status"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, status:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$4;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    const-string v14, "504.2"

    const-string v15, "status == null"

    invoke-interface {v13, v14, v15}, Lcom/taobao/agoo/ISubscribe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v6           #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .end local v10           #status:Ljava/lang/String;
    :goto_0
    return-void

    .line 425
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v6       #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .restart local v10       #status:Ljava/lang/String;
    :cond_0
    const-string v13, "msg_types"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 426
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 427
    .local v11, tmpJson:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 428
    .local v5, msgType:Lcom/taobao/agoo/MsgType;
    const/4 v12, 0x0

    .local v12, tmpSubscribe:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, resultCode:Ljava/lang/String;
    const/4 v8, 0x0

    .line 429
    .local v8, regType:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 430
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    .local v7, n:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 431
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 432
    if-nez v11, :cond_2

    .line 430
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    :cond_2
    const-string v13, "regType"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 436
    const-string v13, "subscribe"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 437
    const-string v13, "resultCode"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 443
    new-instance v5, Lcom/taobao/agoo/MsgType;

    .end local v5           #msgType:Lcom/taobao/agoo/MsgType;
    invoke-direct {v5}, Lcom/taobao/agoo/MsgType;-><init>()V

    .line 444
    .restart local v5       #msgType:Lcom/taobao/agoo/MsgType;
    invoke-virtual {v5, v8}, Lcom/taobao/agoo/MsgType;->setRegType(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v5, v9}, Lcom/taobao/agoo/MsgType;->setResultCode(Ljava/lang/String;)V

    .line 446
    const-string v13, "true"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 447
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/taobao/agoo/MsgType;->setSubscribe(Z)V

    .line 449
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const/4 v11, 0x0

    goto :goto_2

    .line 453
    .end local v2           #i:I
    .end local v7           #n:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$4;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

    invoke-interface {v13, v10, v6}, Lcom/taobao/agoo/ISubscribe;->onSuccess(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #msgType:Lcom/taobao/agoo/MsgType;
    .end local v6           #msgTypes:Ljava/util/List;,"Ljava/util/List<Lcom/taobao/agoo/MsgType;>;"
    .end local v8           #regType:Ljava/lang/String;
    .end local v9           #resultCode:Ljava/lang/String;
    .end local v10           #status:Ljava/lang/String;
    .end local v11           #tmpJson:Lorg/json/JSONObject;
    .end local v12           #tmpSubscribe:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "TaobaoRegister"

    const-string v14, "getSubscribe"

    invoke-static {v13, v14, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/agoo/TaobaoRegister$4;->val$subscribe:Lcom/taobao/agoo/ISubscribe;

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
