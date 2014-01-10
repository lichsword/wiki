.class public Lcom/ut/share/a/c;
.super Ljava/lang/Object;
.source "ShareWeixinController.java"


# instance fields
.field private pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 43
    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "title"
    .parameter "text"
    .parameter "picPath"
    .parameter "url"
    .parameter "thumbNailSize"
    .parameter "isTimeline"

    .prologue
    const/4 v4, 0x1

    .line 104
    new-instance v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 105
    .local v3, webpage:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    iput-object p4, v3, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0, v3}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 107
    .local v0, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 108
    iput-object p2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 109
    if-eqz p3, :cond_0

    .line 110
    invoke-static {p3, p5, p5, v4}, Lcom/ut/share/a/d;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 113
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 114
    .local v1, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v5, "webpage"

    invoke-static {v5}, Lcom/ut/share/a/d;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 115
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 116
    if-eqz p6, :cond_1

    :goto_0
    iput v4, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 117
    iget-object v4, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 118
    return-void

    .line 116
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "title"
    .parameter "text"
    .parameter "isTimeline"

    .prologue
    .line 68
    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    .line 69
    .local v2, textObj:Lcom/tencent/mm/sdk/openapi/WXTextObject;
    iput-object p2, v2, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 73
    .local v0, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 76
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 77
    iput-object p2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 80
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 81
    .local v1, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v3, "text"

    invoke-static {v3}, Lcom/ut/share/a/d;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 82
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 83
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 86
    iget-object v3, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 87
    return-void

    .line 83
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public eg()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eh()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/share/a/c;->pC:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x21020001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
