.class Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"

# interfaces
.implements Landroid/taobao/apirequest/AsyncDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CHDataListener"
.end annotation


# instance fields
.field mCh:Landroid/taobao/apirequest/ConnectorHelper;

.field mListener:Landroid/taobao/apirequest/AsyncDataListener;

.field mProperty:Landroid/taobao/apirequest/ApiProperty;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;Landroid/taobao/apirequest/AsyncDataListener;Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "ch"
    .parameter "property"

    .prologue
    .line 541
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p2, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mListener:Landroid/taobao/apirequest/AsyncDataListener;

    .line 543
    iput-object p3, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mCh:Landroid/taobao/apirequest/ConnectorHelper;

    .line 545
    iput-object p4, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    .line 546
    return-void
.end method


# virtual methods
.method public onDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 6
    .parameter "res"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mCh:Landroid/taobao/apirequest/ConnectorHelper;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mCh:Landroid/taobao/apirequest/ConnectorHelper;

    iget-object v1, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-interface {v0, v1}, Landroid/taobao/apirequest/ConnectorHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/apirequest/ApiResult;

    .line 563
    .local v2, obj:Landroid/taobao/apirequest/ApiResult;
    if-eqz v2, :cond_0

    .line 565
    iget v0, p1, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v1, v1, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    if-ge v0, v1, :cond_3

    iget v5, p1, Landroid/taobao/apirequest/ApiResult;->expireTime:I

    .line 566
    .local v5, expireTime:I
    :goto_0
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v1}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    iget-object v4, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v4}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/taobao/apirequest/ApiCache;->setCacheData(Ljava/lang/String;Ljava/lang/Object;III)V

    .line 569
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mCh:Landroid/taobao/apirequest/ConnectorHelper;

    invoke-interface {v0}, Landroid/taobao/apirequest/ConnectorHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/apirequest/ApiResMonitor;->report(Landroid/taobao/apirequest/ApiResult;Ljava/lang/String;)V

    .line 576
    .end local v5           #expireTime:I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 577
    move-object p1, v2

    .line 579
    .end local v2           #obj:Landroid/taobao/apirequest/ApiResult;
    :cond_1
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mListener:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mListener:Landroid/taobao/apirequest/AsyncDataListener;

    invoke-interface {v0, p1}, Landroid/taobao/apirequest/AsyncDataListener;->onDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    .line 581
    :cond_2
    return-void

    .line 565
    .restart local v2       #obj:Landroid/taobao/apirequest/ApiResult;
    :cond_3
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    iget v5, v0, Landroid/taobao/apirequest/ApiProperty;->expireTime:I

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 550
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mListener:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$CHDataListener;->mListener:Landroid/taobao/apirequest/AsyncDataListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/apirequest/AsyncDataListener;->onProgress(Ljava/lang/String;II)V

    .line 553
    :cond_0
    return-void
.end method
