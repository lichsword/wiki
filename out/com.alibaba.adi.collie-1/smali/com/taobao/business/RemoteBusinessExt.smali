.class public Lcom/taobao/business/RemoteBusinessExt;
.super Lcom/taobao/business/BaseRemoteBusiness;
.source "RemoteBusinessExt.java"

# interfaces
.implements Landroid/taobao/apirequest/MultiTaskAsyncDataListener;


# instance fields
.field protected mApiProxyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/taobao/apirequest/ApiID;",
            "Landroid/taobao/apirequest/ApiProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/taobao/apirequest/ApiID;",
            "Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronization:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/business/BaseRemoteBusiness;-><init>(Landroid/app/Application;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mSynchronization:Z

    .line 29
    return-void
.end method

.method private processMessageWrapper(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V
    .locals 2
    .parameter "wrapper"

    .prologue
    .line 266
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/taobao/business/RemoteBusinessExt;->onSuccess(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/business/RemoteBusinessExt;->onError(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0, p1}, Lcom/taobao/business/RemoteBusinessExt;->onError(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(Landroid/taobao/apirequest/ApiID;)V
    .locals 2
    .parameter "apiId"

    .prologue
    .line 52
    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, p1, v1}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 53
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiProxy;

    .line 54
    .local v0, proxy:Landroid/taobao/apirequest/ApiProxy;
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/ApiProxy;->cancelApiCall(Landroid/taobao/apirequest/ApiID;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    :cond_1
    invoke-super {p0}, Lcom/taobao/business/BaseRemoteBusiness;->destroy()V

    .line 48
    return-void
.end method

.method public getRequestStatus(Landroid/taobao/apirequest/ApiID;)Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;
    .locals 1
    .parameter "apiId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 243
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mHandler:Landroid/taobao/util/SafeHandler;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v3

    .line 248
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;

    if-eqz v1, :cond_0

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;

    .line 250
    .local v0, message:Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    if-nez v1, :cond_2

    .line 252
    iget-object v1, v0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    sget-object v2, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v1, v2}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    goto :goto_0

    .line 256
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/taobao/business/RemoteBusinessExt;->processMessageWrapper(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V

    goto :goto_0
.end method

.method public onDataArrive(Ljava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V
    .locals 9
    .parameter "apicontext"
    .parameter "res"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mHandler:Landroid/taobao/util/SafeHandler;

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    :cond_0
    move-object v7, p1

    .line 207
    check-cast v7, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;

    .line 208
    .local v7, contextWrapper:Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;
    const/4 v2, 0x0

    .line 209
    .local v2, requestDo:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 210
    .local v3, apiId:Landroid/taobao/apirequest/ApiID;
    const/4 v5, 0x0

    .line 211
    .local v5, context:Ljava/lang/Object;
    const/4 v4, -0x1

    .line 212
    .local v4, requestType:I
    if-eqz v7, :cond_1

    .line 213
    iget-object v2, v7, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestDo:Ljava/lang/Object;

    .line 214
    iget-object v3, v7, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    .line 215
    iget v4, v7, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestType:I

    .line 216
    iget-object v5, v7, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->context:Ljava/lang/Object;

    .line 218
    .end local v2           #requestDo:Ljava/lang/Object;
    .end local v5           #context:Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "onDataArrive apiResult == null."

    invoke-static {v1, v6}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;-><init>(Lcom/taobao/business/BaseRemoteBusiness;Ljava/lang/Object;Landroid/taobao/apirequest/ApiID;ILjava/lang/Object;Landroid/taobao/apirequest/ApiResult;)V

    .line 224
    .local v0, wrapper:Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;
    iget-boolean v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mSynchronization:Z

    if-eqz v1, :cond_3

    .line 225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 226
    .local v8, message:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v8, Landroid/os/Message;->what:I

    .line 227
    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mHandler:Landroid/taobao/util/SafeHandler;

    invoke-virtual {v1, v8}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 231
    .end local v8           #message:Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/business/RemoteBusinessExt;->processMessageWrapper(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V

    goto :goto_0
.end method

.method protected onError(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 283
    iget-object v0, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 284
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    iget-object v2, v2, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorDesc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    iget-object v2, v2, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " httpResultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    iget v2, v2, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    iget-object v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->context:Ljava/lang/Object;

    iget v3, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->requestType:I

    iget-object v4, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    iget-object v5, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/taobao/business/IRemoteBusinessRequestListener;->onError(Lcom/taobao/business/BaseRemoteBusiness;Ljava/lang/Object;ILandroid/taobao/apirequest/ApiID;Landroid/taobao/apirequest/ApiResult;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 0
    .parameter "apicontext"
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 181
    return-void
.end method

.method protected onSuccess(Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 306
    iget-object v0, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 307
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess requestType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    iget-object v1, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->context:Ljava/lang/Object;

    iget v2, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->requestType:I

    iget-object v3, p1, Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;->apiResult:Landroid/taobao/apirequest/ApiResult;

    iget-object v3, v3, Landroid/taobao/apirequest/ApiResult;->data:Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/taobao/business/IRemoteBusinessRequestListener;->onSuccess(Lcom/taobao/business/BaseRemoteBusiness;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 313
    :cond_0
    return-void
.end method

.method public retryRequest(Landroid/taobao/apirequest/ApiID;)V
    .locals 2
    .parameter "apiId"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiProxy;

    .line 64
    .local v0, proxy:Landroid/taobao/apirequest/ApiProxy;
    if-eqz v0, :cond_0

    .line 65
    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, p1, v1}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/ApiProxy;->asyncRetryApiCall(Landroid/taobao/apirequest/ApiID;)Landroid/taobao/apirequest/ApiID;

    .line 68
    :cond_0
    return-void
.end method

.method protected setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V
    .locals 1
    .parameter "apiId"
    .parameter "status"

    .prologue
    .line 78
    sget-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    if-ne p2, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/taobao/business/RemoteBusinessExt;->mRequestStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public setSynchronization(Z)V
    .locals 0
    .parameter "syn"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/taobao/business/RemoteBusinessExt;->mSynchronization:Z

    .line 192
    return-void
.end method

.method protected startRequest(ILjava/lang/Object;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .local p3, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 99
    sget-object v6, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/business/RemoteBusinessExt;->startRequest(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method protected startRequest(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "context"
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 93
    .local p4, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    sget-object v6, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/business/RemoteBusinessExt;->startRequest(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method protected startRequest(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;
    .locals 4
    .parameter "baseUrl"
    .parameter "apiProperty"
    .parameter "context"
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .parameter "requestMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/taobao/apirequest/ApiProperty;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/taobao/business/BaseRemoteBusiness$RequestMode;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 151
    .local p6, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;

    invoke-direct {v2, p0}, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;-><init>(Lcom/taobao/business/BaseRemoteBusiness;)V

    .line 152
    .local v2, contextWrapper:Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;
    new-instance v1, Landroid/taobao/apirequest/ApiProxy;

    invoke-direct {v1, v2}, Landroid/taobao/apirequest/ApiProxy;-><init>(Ljava/lang/Object;)V

    .line 154
    .local v1, apiProxy:Landroid/taobao/apirequest/ApiProxy;
    iput-object p5, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestDo:Ljava/lang/Object;

    .line 155
    iput-object p3, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->context:Ljava/lang/Object;

    .line 156
    iput p4, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestType:I

    .line 158
    sget-object v3, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    if-ne p7, v3, :cond_0

    .line 160
    invoke-virtual {v1, p5, p6, p0, p2}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 166
    .local v0, apiId:Landroid/taobao/apirequest/ApiID;
    :goto_0
    iput-object v0, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    .line 167
    iget-object v3, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v3, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v0, v3}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 169
    return-object v0

    .line 163
    .end local v0           #apiId:Landroid/taobao/apirequest/ApiID;
    :cond_0
    invoke-virtual {v1, p5, p6, p0, p2}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .restart local v0       #apiId:Landroid/taobao/apirequest/ApiID;
    goto :goto_0
.end method

.method protected startRequest(Ljava/lang/String;Landroid/taobao/apirequest/ApiProxy;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;
    .locals 3
    .parameter "baseUrl"
    .parameter "apiProxy"
    .parameter "context"
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .parameter "requestMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/taobao/apirequest/ApiProxy;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/taobao/business/BaseRemoteBusiness$RequestMode;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 129
    .local p6, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;

    invoke-direct {v1, p0}, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;-><init>(Lcom/taobao/business/BaseRemoteBusiness;)V

    .line 130
    .local v1, contextWrapper:Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;
    invoke-virtual {p2, v1}, Landroid/taobao/apirequest/ApiProxy;->setApicontext(Ljava/lang/Object;)V

    .line 132
    iput-object p5, v1, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestDo:Ljava/lang/Object;

    .line 133
    iput-object p3, v1, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->context:Ljava/lang/Object;

    .line 134
    iput p4, v1, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestType:I

    .line 136
    sget-object v2, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    if-ne p7, v2, :cond_0

    .line 138
    invoke-virtual {p2, p1, p5, p6, p0}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 142
    .local v0, apiId:Landroid/taobao/apirequest/ApiID;
    :goto_0
    iput-object v0, v1, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    .line 143
    iget-object v2, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v0, v2}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 145
    return-object v0

    .line 140
    .end local v0           #apiId:Landroid/taobao/apirequest/ApiID;
    :cond_0
    invoke-virtual {p2, p1, p5, p6, p0}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .restart local v0       #apiId:Landroid/taobao/apirequest/ApiID;
    goto :goto_0
.end method

.method protected startRequest(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "baseUrl"
    .parameter "context"
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 87
    .local p5, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v6, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/business/RemoteBusinessExt;->startRequest(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method protected startRequest(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;Lcom/taobao/business/BaseRemoteBusiness$RequestMode;)Landroid/taobao/apirequest/ApiID;
    .locals 4
    .parameter "baseUrl"
    .parameter "context"
    .parameter "requestType"
    .parameter "requestDo"
    .parameter
    .parameter "requestMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/taobao/business/BaseRemoteBusiness$RequestMode;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 106
    .local p5, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;

    invoke-direct {v2, p0}, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;-><init>(Lcom/taobao/business/BaseRemoteBusiness;)V

    .line 107
    .local v2, contextWrapper:Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;
    new-instance v1, Landroid/taobao/apirequest/ApiProxy;

    invoke-direct {v1, v2}, Landroid/taobao/apirequest/ApiProxy;-><init>(Ljava/lang/Object;)V

    .line 109
    .local v1, apiProxy:Landroid/taobao/apirequest/ApiProxy;
    iput-object p4, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestDo:Ljava/lang/Object;

    .line 110
    iput-object p2, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->context:Ljava/lang/Object;

    .line 111
    iput p3, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->requestType:I

    .line 113
    sget-object v3, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    if-ne p6, v3, :cond_0

    .line 115
    invoke-virtual {v1, p1, p4, p5, p0}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 120
    .local v0, apiId:Landroid/taobao/apirequest/ApiID;
    :goto_0
    iput-object v0, v2, Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;->apiId:Landroid/taobao/apirequest/ApiID;

    .line 121
    iget-object v3, p0, Lcom/taobao/business/RemoteBusinessExt;->mApiProxyMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v3, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {p0, v0, v3}, Lcom/taobao/business/RemoteBusinessExt;->setRequestStatus(Landroid/taobao/apirequest/ApiID;Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;)V

    .line 123
    return-object v0

    .line 117
    .end local v0           #apiId:Landroid/taobao/apirequest/ApiID;
    :cond_0
    invoke-virtual {v1, p1, p4, p5, p0}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .restart local v0       #apiId:Landroid/taobao/apirequest/ApiID;
    goto :goto_0
.end method
