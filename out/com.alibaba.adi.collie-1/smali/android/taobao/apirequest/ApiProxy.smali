.class public Landroid/taobao/apirequest/ApiProxy;
.super Ljava/lang/Object;
.source "ApiProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiProxy$ProxyListener;,
        Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiProxy"


# instance fields
.field apiName:Ljava/lang/String;

.field apicontext:Ljava/lang/Object;

.field ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

.field private listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

.field mych:Landroid/taobao/apirequest/MTOPConnectorHelper;

.field topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "apicontext"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "apicontext"
    .parameter "apiName"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/apirequest/ApiProxy;)Landroid/taobao/apirequest/MultiTaskAsyncDataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    return-object v0
.end method


# virtual methods
.method public asyncApiCall(Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    .locals 1
    .parameter "inputDO"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/taobao/apirequest/MultiTaskAsyncDataListener;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "inputDO"
    .parameter
    .parameter "listener"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/taobao/apirequest/MultiTaskAsyncDataListener;",
            "Landroid/taobao/apirequest/ApiProperty;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .local p2, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 194
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;)Landroid/taobao/apirequest/ApiID;
    .locals 7
    .parameter "baseUrl"
    .parameter "inputDO"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/taobao/apirequest/MultiTaskAsyncDataListener;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v5, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v5}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)Landroid/taobao/apirequest/ApiID;
    .locals 8
    .parameter "baseUrl"
    .parameter "inputDO"
    .parameter
    .parameter "listener"
    .parameter "property"
    .parameter "convertor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/taobao/apirequest/MultiTaskAsyncDataListener;",
            "Landroid/taobao/apirequest/ApiProperty;",
            "Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/taobao/apirequest/ApiProxy;->asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;Ljava/lang/String;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/taobao/apirequest/MultiTaskAsyncDataListener;Landroid/taobao/apirequest/ApiProperty;Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;Ljava/lang/String;)Landroid/taobao/apirequest/ApiID;
    .locals 5
    .parameter "baseUrl"
    .parameter "inputDO"
    .parameter
    .parameter "listener"
    .parameter "property"
    .parameter "convertor"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/taobao/apirequest/MultiTaskAsyncDataListener;",
            "Landroid/taobao/apirequest/ApiProperty;",
            "Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;",
            "Ljava/lang/String;",
            ")",
            "Landroid/taobao/apirequest/ApiID;"
        }
    .end annotation

    .prologue
    .local p3, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 113
    if-nez p5, :cond_0

    .line 114
    new-instance p5, Landroid/taobao/apirequest/ApiProperty;

    .end local p5
    invoke-direct {p5}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 116
    .restart local p5
    :cond_0
    iput-object p4, p0, Landroid/taobao/apirequest/ApiProxy;->listener:Landroid/taobao/apirequest/MultiTaskAsyncDataListener;

    .line 118
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->apiName:Ljava/lang/String;

    .line 122
    :cond_1
    iget-boolean v1, p5, Landroid/taobao/apirequest/ApiProperty;->m_bTop:Z

    if-eqz v1, :cond_3

    .line 124
    new-instance v1, Landroid/taobao/apirequest/top/TopConnectorHelper;

    invoke-direct {v1, p3, p1}, Landroid/taobao/apirequest/top/TopConnectorHelper;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    .line 125
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    invoke-virtual {v1, p2}, Landroid/taobao/apirequest/top/TopConnectorHelper;->setInputObj(Ljava/lang/Object;)V

    .line 126
    iput v3, p5, Landroid/taobao/apirequest/ApiProperty;->m_priority:I

    .line 127
    if-eqz p6, :cond_2

    .line 128
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    invoke-virtual {v1, p6}, Landroid/taobao/apirequest/top/TopConnectorHelper;->setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V

    .line 130
    :cond_2
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    invoke-virtual {v2}, Landroid/taobao/apirequest/top/TopConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/taobao/apirequest/ApiProxy$ProxyListener;

    iget-object v4, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    invoke-direct {v3, p0, v4, p5}, Landroid/taobao/apirequest/ApiProxy$ProxyListener;-><init>(Landroid/taobao/apirequest/ApiProxy;Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V

    invoke-virtual {v1, v2, v3, p5}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 132
    .local v0, apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->topConnectorHelp:Landroid/taobao/apirequest/top/TopConnectorHelper;

    iput-object v1, v0, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    .line 152
    :goto_0
    iput-object p5, v0, Landroid/taobao/apirequest/ApiID;->m_apiProperty:Landroid/taobao/apirequest/ApiProperty;

    .line 153
    return-object v0

    .line 135
    .end local v0           #apiID:Landroid/taobao/apirequest/ApiID;
    :cond_3
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->mych:Landroid/taobao/apirequest/MTOPConnectorHelper;

    if-eqz v1, :cond_6

    .line 136
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->mych:Landroid/taobao/apirequest/MTOPConnectorHelper;

    iput-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    .line 140
    :goto_1
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v1, p2}, Landroid/taobao/apirequest/MTOPConnectorHelper;->setInputObj(Ljava/lang/Object;)V

    .line 141
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 142
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v1, p7}, Landroid/taobao/apirequest/MTOPConnectorHelper;->updateSid(Ljava/lang/String;)V

    .line 143
    :cond_4
    iput v3, p5, Landroid/taobao/apirequest/ApiProperty;->m_priority:I

    .line 144
    if-eqz p6, :cond_5

    .line 145
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v1, p6}, Landroid/taobao/apirequest/MTOPConnectorHelper;->setConvertor(Landroid/taobao/apirequest/ApiProxy$DataStrConvertor;)V

    .line 147
    :cond_5
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v2}, Landroid/taobao/apirequest/MTOPConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/taobao/apirequest/ApiProxy$ProxyListener;

    iget-object v4, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-direct {v3, p0, v4, p5}, Landroid/taobao/apirequest/ApiProxy$ProxyListener;-><init>(Landroid/taobao/apirequest/ApiProxy;Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V

    invoke-virtual {v1, v2, v3, p5}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 149
    .restart local v0       #apiID:Landroid/taobao/apirequest/ApiID;
    iget-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    iput-object v1, v0, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    goto :goto_0

    .line 138
    .end local v0           #apiID:Landroid/taobao/apirequest/ApiID;
    :cond_6
    new-instance v1, Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-direct {v1, p3, p1}, Landroid/taobao/apirequest/MTOPConnectorHelper;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    goto :goto_1
.end method

.method public asyncRetryApiCall(Landroid/taobao/apirequest/ApiID;)Landroid/taobao/apirequest/ApiID;
    .locals 5
    .parameter "apiID"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    iget-object v1, p1, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v1}, Landroid/taobao/apirequest/MTOPConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/taobao/apirequest/ApiProxy$ProxyListener;

    iget-object v3, p1, Landroid/taobao/apirequest/ApiID;->m_mtopConnectorHelper:Landroid/taobao/apirequest/MTOPConnectorHelper;

    iget-object v4, p1, Landroid/taobao/apirequest/ApiID;->m_apiProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v2, p0, v3, v4}, Landroid/taobao/apirequest/ApiProxy$ProxyListener;-><init>(Landroid/taobao/apirequest/ApiProxy;Landroid/taobao/apirequest/MTOPConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V

    iget-object v3, p1, Landroid/taobao/apirequest/ApiID;->m_apiProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v0, v1, v2, v3}, Landroid/taobao/apirequest/ApiRequestMgr;->asyncConnect(Ljava/lang/String;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiID;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelApiCall(Landroid/taobao/apirequest/ApiID;)Z
    .locals 1
    .parameter "apiID"

    .prologue
    .line 218
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/ApiRequestMgr;->cancelConnect(Landroid/taobao/apirequest/ApiID;)Z

    move-result v0

    return v0
.end method

.method public setApicontext(Ljava/lang/Object;)V
    .locals 0
    .parameter "apicontext"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProxy;->apicontext:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method setExcludeDataParam(Landroid/taobao/util/Parameter;)V
    .locals 1
    .parameter "mParam"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/taobao/apirequest/ApiProxy;->ch:Landroid/taobao/apirequest/MTOPConnectorHelper;

    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/MTOPConnectorHelper;->setExcludeDataParam(Landroid/taobao/util/Parameter;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setMtopConnectHelper(Landroid/taobao/apirequest/MTOPConnectorHelper;)V
    .locals 0
    .parameter "myHelper"

    .prologue
    .line 159
    iput-object p1, p0, Landroid/taobao/apirequest/ApiProxy;->mych:Landroid/taobao/apirequest/MTOPConnectorHelper;

    .line 160
    return-void
.end method
