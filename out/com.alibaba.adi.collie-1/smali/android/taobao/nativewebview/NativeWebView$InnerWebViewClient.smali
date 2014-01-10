.class Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NativeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/nativewebview/NativeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/nativewebview/NativeWebView;


# direct methods
.method constructor <init>(Landroid/taobao/nativewebview/NativeWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 669
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isReload:Z
    invoke-static {v1}, Landroid/taobao/nativewebview/NativeWebView;->access$200(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isReload:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$200(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    invoke-super {p0, p1, p2, v0}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 659
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 663
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 796
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 800
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 786
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$300(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$400(Landroid/taobao/nativewebview/NativeWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    :cond_0
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    const/4 v1, 0x0

    #setter for: Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z
    invoke-static {v0, v1}, Landroid/taobao/nativewebview/NativeWebView;->access$302(Landroid/taobao/nativewebview/NativeWebView;Z)Z

    .line 788
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 791
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 767
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pagestart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    iget-object v1, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->url:Ljava/lang/String;
    invoke-static {v1}, Landroid/taobao/nativewebview/NativeWebView;->access$400(Landroid/taobao/nativewebview/NativeWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #setter for: Landroid/taobao/nativewebview/NativeWebView;->refreshSelf:Z
    invoke-static {v0, v1}, Landroid/taobao/nativewebview/NativeWebView;->access$302(Landroid/taobao/nativewebview/NativeWebView;Z)Z

    .line 770
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 773
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 808
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 812
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 693
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 679
    const-string v0, "onReceivedSslError_nativewebview"

    sget v1, Landroid/taobao/common/SDKConstants;->ID_PAGE_NW_SSLERROR:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 682
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .parameter "view"
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 720
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 724
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 649
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 711
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 702
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v0}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 705
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 729
    :try_start_0
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v2}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->isAlive:Z
    invoke-static {v2}, Landroid/taobao/nativewebview/NativeWebView;->access$100(Landroid/taobao/nativewebview/NativeWebView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 730
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    #getter for: Landroid/taobao/nativewebview/NativeWebView;->client:Landroid/webkit/WebViewClient;
    invoke-static {v2}, Landroid/taobao/nativewebview/NativeWebView;->access$000(Landroid/taobao/nativewebview/NativeWebView;)Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 734
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 735
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 761
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 736
    :cond_2
    const-string v2, "wtai://wp/mc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 737
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "wtai://wp/mc;"

    const-string v4, "tel:"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 740
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 744
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    invoke-virtual {v2, p2}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_4
    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 749
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 751
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 755
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Landroid/taobao/nativewebview/NativeWebView$InnerWebViewClient;->this$0:Landroid/taobao/nativewebview/NativeWebView;

    invoke-virtual {v2, p2}, Landroid/taobao/nativewebview/NativeWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
