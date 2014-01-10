.class Landroid/taobao/apirequest/ApiProxy$ProxyListener;
.super Ljava/lang/Object;
.source "ApiProxy.java"

# interfaces
.implements Landroid/taobao/apirequest/AsyncDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyListener"
.end annotation


# instance fields
.field m_ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

.field m_property:Landroid/taobao/apirequest/ApiProperty;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiProxy;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiProxy;Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V
    .locals 0
    .parameter
    .parameter "ch"
    .parameter "property"

    .prologue
    .line 222
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    .line 224
    iput-object p3, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    .line 225
    return-void
.end method


# virtual methods
.method public onDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 7
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance p1, Landroid/taobao/apirequest/ApiResult;

    .end local p1
    const/16 v0, -0x3e8

    const-string v1, "\u5185\u90e8\u9519\uff1a\u7ed3\u679c\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-direct {p1, v0, v1, v3}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 244
    .restart local p1
    :cond_0
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    if-eqz p1, :cond_7

    instance-of v0, p1, Landroid/taobao/apirequest/ApiResult;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    iget-object v0, p1, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 251
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    iget-object v1, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/MTOPConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/apirequest/ApiResult;

    .line 253
    .local v2, o:Landroid/taobao/apirequest/ApiResult;
    iput-object v3, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 255
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget v0, p1, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    iget v1, v1, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    if-ge v0, v1, :cond_3

    iget v5, p1, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 261
    .local v5, expireTime:I
    :goto_0
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    iget-object v4, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v4}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/taobao/apirequest/ApiCache;->setCacheData(Ljava/lang/String;Ljava/lang/Object;III)V

    .line 280
    .end local v5           #expireTime:I
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    iget-object v1, v1, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/taobao/apirequest/MultiTaskAsyncDataListener;->onDataArrive(Ljava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V

    .line 294
    .end local v2           #o:Landroid/taobao/apirequest/ApiResult;
    :cond_2
    :goto_2
    return-void

    .line 259
    .restart local v2       #o:Landroid/taobao/apirequest/ApiResult;
    :cond_3
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_property:Landroid/taobao/apirequest/ApiProperty;

    iget v5, v0, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    goto :goto_0

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Code,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",DESC,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, errMsg:Ljava/lang/String;
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    if-eqz v0, :cond_5

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",URL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->m_ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v1}, Landroid/taobao/apirequest/MTOPConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    :cond_5
    const-string v0, "TaoSdk.ApiRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api error caught:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "Api_PersistStat"

    const/16 v1, 0x4572

    iget-object v3, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    invoke-static {v0, v1, v3, v6}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 284
    .end local v2           #o:Landroid/taobao/apirequest/ApiResult;
    .end local v6           #errMsg:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    iget-object v1, v1, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/taobao/apirequest/MultiTaskAsyncDataListener;->onDataArrive(Ljava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V

    goto :goto_2

    .line 290
    :cond_7
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    iget-object v1, v1, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/taobao/apirequest/MultiTaskAsyncDataListener;->onDataArrive(Ljava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V

    .line 291
    const-string v0, "ApiProxy"

    const-string v1, "Response obj is null or not instance of ApiResult"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 2
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    #getter for: Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    invoke-static {v0}, Landroid/taobao/apirequest/ApiProxy;->access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy$ProxyListener;->this$0:Landroid/taobao/apirequest/ApiProxy;

    iget-object v1, v1, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/taobao/apirequest/MultiTaskAsyncDataListener;->onProgress(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 234
    :cond_0
    return-void
.end method
