.class final Lcom/taobao/agoo/TaobaoRegister$1;
.super Lorg/android/agoo/net/mtop/MtopResponseHandler;
.source "TaobaoRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/agoo/TaobaoRegister;->bindUser(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/IBindUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bindUser:Lcom/taobao/agoo/IBindUser;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/agoo/IBindUser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$bindUser:Lcom/taobao/agoo/IBindUser;

    invoke-direct {p0}, Lorg/android/agoo/net/mtop/MtopResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 200
    const-string v0, "TaobaoRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "504.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$context:Landroid/content/Context;

    #calls: Lcom/taobao/agoo/TaobaoRegister;->handleError(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/taobao/agoo/TaobaoRegister;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$bindUser:Lcom/taobao/agoo/IBindUser;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$bindUser:Lcom/taobao/agoo/IBindUser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "504.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/taobao/agoo/IBindUser;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, json:Lorg/json/JSONObject;
    const-string v2, "push_user_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, pushUserToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$context:Landroid/content/Context;

    #calls: Lcom/taobao/agoo/TaobaoRegister;->setPushUserToken(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/taobao/agoo/TaobaoRegister;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$bindUser:Lcom/taobao/agoo/IBindUser;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/taobao/agoo/TaobaoRegister$1;->val$bindUser:Lcom/taobao/agoo/IBindUser;

    invoke-interface {v2}, Lcom/taobao/agoo/IBindUser;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #json:Lorg/json/JSONObject;
    .end local v1           #pushUserToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v2

    goto :goto_0
.end method
