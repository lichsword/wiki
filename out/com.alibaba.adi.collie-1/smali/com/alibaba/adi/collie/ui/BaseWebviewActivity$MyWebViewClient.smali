.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BaseWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->loadingImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->access$0(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->loadingImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->access$0(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 116
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v1, "\u7f51\u9875\u52a0\u8f7d\u51fa\u9519\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
