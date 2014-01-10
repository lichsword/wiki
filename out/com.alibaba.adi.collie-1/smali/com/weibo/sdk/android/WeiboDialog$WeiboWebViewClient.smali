.class Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WeiboDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weibo/sdk/android/WeiboDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboWebViewClient"
.end annotation


# instance fields
.field private isCallBacked:Z

.field final synthetic this$0:Lcom/weibo/sdk/android/WeiboDialog;


# direct methods
.method private constructor <init>(Lcom/weibo/sdk/android/WeiboDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->isCallBacked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/weibo/sdk/android/WeiboDialog;Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/weibo/sdk/android/WeiboDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 265
    const-string v0, "Weibo-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #getter for: Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/weibo/sdk/android/WeiboDialog;->access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #getter for: Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/weibo/sdk/android/WeiboDialog;->access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #getter for: Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/weibo/sdk/android/WeiboDialog;->access$3(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 246
    const-string v0, "Weibo-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getRedirecturl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-boolean v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->isCallBacked:Z

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->isCallBacked:Z

    .line 250
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboDialog;->dismiss()V

    .line 251
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #calls: Lcom/weibo/sdk/android/WeiboDialog;->handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/weibo/sdk/android/WeiboDialog;->access$1(Lcom/weibo/sdk/android/WeiboDialog;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #getter for: Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/weibo/sdk/android/WeiboDialog;->access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboDialog;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    #getter for: Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v0}, Lcom/weibo/sdk/android/WeiboDialog;->access$0(Lcom/weibo/sdk/android/WeiboDialog;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/weibo/sdk/android/WeiboDialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/weibo/sdk/android/WeiboDialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/weibo/sdk/android/WeiboAuthListener;->onError(Lcom/weibo/sdk/android/WeiboDialogError;)V

    .line 242
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 225
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "address"

    const-string v2, "sms:"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/weibo/sdk/android/WeiboDialog;

    invoke-virtual {v1}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v1, 0x1

    .line 232
    .end local v0           #sendIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
