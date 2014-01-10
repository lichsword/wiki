.class Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;
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
    name = "AsyncDAsyncDataLstProxy"
.end annotation


# instance fields
.field m_lst:Landroid/taobao/apirequest/AsyncDataListener;

.field m_ostream:Ljava/io/OutputStream;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;Landroid/taobao/apirequest/AsyncDataListener;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "lst"
    .parameter "ostream"

    .prologue
    .line 621
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p2, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_lst:Landroid/taobao/apirequest/AsyncDataListener;

    .line 623
    iput-object p3, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_ostream:Ljava/io/OutputStream;

    .line 624
    return-void
.end method


# virtual methods
.method public onDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 4
    .parameter "res"

    .prologue
    .line 640
    iget v1, p1, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_0

    .line 642
    new-instance p1, Landroid/taobao/apirequest/ApiResult;

    .end local p1
    const/16 v1, 0xc8

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroid/taobao/apirequest/ApiResult;-><init>(ILjava/lang/String;[B)V

    .line 645
    .restart local p1
    :cond_0
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_ostream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 647
    :try_start_0
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_ostream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 648
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_ostream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_lst:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_lst:Landroid/taobao/apirequest/AsyncDataListener;

    invoke-interface {v1, p1}, Landroid/taobao/apirequest/AsyncDataListener;->onDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    .line 656
    :cond_2
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1
    .parameter "desc"
    .parameter "size"
    .parameter "totoal"

    .prologue
    .line 632
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_lst:Landroid/taobao/apirequest/AsyncDataListener;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$AsyncDAsyncDataLstProxy;->m_lst:Landroid/taobao/apirequest/AsyncDataListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/taobao/apirequest/AsyncDataListener;->onProgress(Ljava/lang/String;II)V

    .line 634
    :cond_0
    return-void
.end method
