.class public Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
.super Ljava/lang/Object;
.source "ShareWeixinController.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "wx3a253ecafaf4ae75"

.field private static final TIMELINE_SUPPORTED_VERSION:I = 0x21020001

.field private static checkValue:I


# instance fields
.field private mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "wx3a253ecafaf4ae75"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 40
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wx3a253ecafaf4ae75"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 41
    return-void
.end method

.method public static checkState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 46
    sget v3, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkValue:I

    if-nez v3, :cond_2

    .line 47
    const-string v3, "wx3a253ecafaf4ae75"

    invoke-static {p0, v3, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    .line 48
    .local v1, mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v3, "wx3a253ecafaf4ae75"

    invoke-interface {v1, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 49
    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 50
    .local v0, b:Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    :cond_1
    sput v2, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkValue:I

    .line 52
    .end local v0           #b:Z
    .end local v1           #mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    :cond_2
    return-void
.end method


# virtual methods
.method public isWXAppSupportSession()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkState(Landroid/content/Context;)V

    .line 56
    sget v0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWXAppSupportTimeline()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkState(Landroid/content/Context;)V

    .line 61
    sget v0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->checkValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x21020001

    .line 61
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shareHypeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 9
    .parameter "title"
    .parameter "description"
    .parameter "picPath"
    .parameter "url"
    .parameter "thumbNailSize"
    .parameter "isTimeline"
    .parameter "needScale"

    .prologue
    .line 108
    new-instance v5, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v5}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 109
    .local v5, webpage:Lcom/tencent/mm/sdk/openapi/WXWebpageObject;
    iput-object p4, v5, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 110
    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v2, v5}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 111
    .local v2, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object p1, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 112
    iput-object p2, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, thumb:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_1

    .line 115
    const/4 v6, 0x1

    invoke-static {p3, p5, p5, v6}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinUtils;->extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 130
    new-instance v3, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 131
    .local v3, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v6, "webpage"

    invoke-static {v6}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinUtils;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 132
    iput-object v2, v3, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 133
    if-eqz p6, :cond_2

    const/4 v6, 0x1

    :goto_1
    iput v6, v3, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 134
    iget-object v6, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v6, v3}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 135
    return-void

    .line 117
    .end local v3           #req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    :cond_1
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    move-object v4, v0

    .line 125
    const-string v6, "/mnt/sdcard/taoapp/b.png"

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->saveBitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    goto :goto_0

    .line 133
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .restart local v3       #req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "title"
    .parameter "text"
    .parameter "isTimeline"

    .prologue
    .line 75
    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    .line 76
    .local v2, textObj:Lcom/tencent/mm/sdk/openapi/WXTextObject;
    iput-object p2, v2, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 80
    .local v0, msg:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    iput-object v2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 83
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 84
    iput-object p2, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 88
    .local v1, req:Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;
    const-string v3, "text"

    invoke-static {v3}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinUtils;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 89
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 90
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 93
    iget-object v3, p0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->mAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    .line 94
    return-void

    .line 90
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
