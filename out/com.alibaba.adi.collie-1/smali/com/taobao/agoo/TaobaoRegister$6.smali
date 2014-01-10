.class final Lcom/taobao/agoo/TaobaoRegister$6;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "TaobaoRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/TaobaoRegister;->getMessageContent(Landroid/content/Context;[Ljava/lang/String;Lcom/taobao/agoo/IMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/taobao/agoo/IMessageHandler;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/IMessageHandler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$handler:Lcom/taobao/agoo/IMessageHandler;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$handler:Lcom/taobao/agoo/IMessageHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "504.2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/taobao/agoo/IMessageHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 12
    .parameter "content"

    .prologue
    .line 648
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, json:Lorg/json/JSONObject;
    const-string v8, "message_list"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 650
    .local v3, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 651
    .local v4, len:I
    const/4 v6, 0x0

    .line 652
    .local v6, message:Ljava/lang/String;
    const/4 v7, 0x0

    .line 653
    .local v7, tmpJson:Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 655
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 656
    if-nez v7, :cond_1

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 660
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 663
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v7, 0x0

    goto :goto_1

    .line 666
    :cond_2
    iget-object v8, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$handler:Lcom/taobao/agoo/IMessageHandler;

    invoke-interface {v8, v5}, Lcom/taobao/agoo/IMessageHandler;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v1           #i:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #len:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #tmpJson:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$context:Landroid/content/Context;

    invoke-static {v8, p1}, Lorg/android/agoo/log/UTHelper;->messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    const-string v8, "TaobaoRegister"

    const-string v9, "handlerMessage"

    invoke-static {v8, v9, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    iget-object v8, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$handler:Lcom/taobao/agoo/IMessageHandler;

    const-string v9, "504.5"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse data error--->["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/taobao/agoo/IMessageHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
