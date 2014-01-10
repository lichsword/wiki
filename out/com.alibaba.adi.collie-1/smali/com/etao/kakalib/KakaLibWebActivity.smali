.class public Lcom/etao/kakalib/KakaLibWebActivity;
.super Landroid/app/Activity;
.source "KakaLibWebActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/etao/kakalib/KakaLibWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/KakaLibWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Lcom/etao/kakalib/KakaLibWebActivity$1;

    invoke-direct {v0, p0}, Lcom/etao/kakalib/KakaLibWebActivity$1;-><init>(Lcom/etao/kakalib/KakaLibWebActivity;)V

    iput-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private init(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "kakalib_webview"

    .line 78
    const v2, 0x7f0a0064

    .line 77
    invoke-static {p0, v1, v2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/etao/kakalib/KakaLibWebActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    sget-object v1, Lcom/etao/kakalib/KakaLibWebActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "will load url + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 26
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/etao/kakalib/KakaLibWebActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v7, "kakalib_web"

    .line 29
    const v8, 0x7f03001b

    .line 28
    invoke-static {p0, v7, v8}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/etao/kakalib/KakaLibWebActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 31
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 33
    .local v6, uri:Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcom/etao/kakalib/KakaLibWebActivity;->init(Landroid/net/Uri;)V

    .line 37
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    const-string v7, "buttonWebViewBack"

    .line 38
    const v8, 0x7f0a0062

    .line 37
    invoke-static {p0, v7, v8}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, backButtonId:I
    invoke-virtual {p0, v1}, Lcom/etao/kakalib/KakaLibWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, backButton:Landroid/view/View;
    const-string v7, "buttonWebViewForward"

    .line 41
    const v8, 0x7f0a0063

    .line 40
    invoke-static {p0, v7, v8}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 42
    .local v3, forwardButtonID:I
    invoke-virtual {p0, v3}, Lcom/etao/kakalib/KakaLibWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, forWardButton:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    new-instance v5, Lcom/etao/kakalib/KakaLibWebActivity$2;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/etao/kakalib/KakaLibWebActivity$2;-><init>(Lcom/etao/kakalib/KakaLibWebActivity;IILandroid/view/View;)V

    .line 68
    .local v5, navButtonClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void

    .line 35
    .end local v0           #backButton:Landroid/view/View;
    .end local v1           #backButtonId:I
    .end local v2           #forWardButton:Landroid/view/View;
    .end local v3           #forwardButtonID:I
    .end local v5           #navButtonClickListener:Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {p0}, Lcom/etao/kakalib/KakaLibWebActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 89
    return-void
.end method
