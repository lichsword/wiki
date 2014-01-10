.class public Lcom/ut/share/ShareAPI;
.super Ljava/lang/Object;
.source "ShareAPI.java"


# static fields
.field private static initShortUrlMtd:Ljava/lang/reflect/Method;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisablePlatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;"
        }
    .end annotation
.end field

.field private mLaiwangAppID:Ljava/lang/String;

.field private mLaiwangSecretID:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mShareParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ut/share/data/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mShareView:Lcom/ut/share/view/ShareView;

.field private mWangxinAppID:Ljava/lang/String;

.field private mWeixinAppID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 131
    :try_start_0
    const-string v2, "com.taobao.wireless.tbShortUrl.util.ShortUrlUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, clzsuu:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 133
    const-string v2, "xmlInit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/ut/share/ShareAPI;->initShortUrlMtd:Ljava/lang/reflect/Method;

    .line 134
    sget-object v2, Lcom/ut/share/ShareAPI;->initShortUrlMtd:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "[shortUrl]initXML reflect error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ut/share/view/ShareView;)V
    .locals 2
    .parameter "activity"
    .parameter "pageName"
    .parameter "shareView"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/share/ShareAPI;->mShareParams:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ut/share/ShareAPI;->mDisablePlatforms:Ljava/util/Set;

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/ut/share/ShareAPI;->mActivity:Landroid/app/Activity;

    .line 120
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageName must not be null/empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iput-object p2, p0, Lcom/ut/share/ShareAPI;->mPageName:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/ut/share/ShareAPI;->mShareView:Lcom/ut/share/view/ShareView;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ut/share/view/ShareView;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "pageName"
    .parameter "shareView"
    .parameter "weixinAppID"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/ut/share/ShareAPI;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/ut/share/view/ShareView;)V

    .line 156
    iput-object p4, p0, Lcom/ut/share/ShareAPI;->mWeixinAppID:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public addCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "platform"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    new-instance v0, Lcom/ut/share/data/b;

    invoke-direct {v0, p1, p2}, Lcom/ut/share/data/b;-><init>(Lcom/ut/share/SharePlatform;Ljava/lang/String;)V

    .line 90
    .local v0, pk:Lcom/ut/share/data/b;
    iget-object v1, p0, Lcom/ut/share/ShareAPI;->mShareParams:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public setDisableSharePlatforms(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, platforms:Ljava/util/Set;,"Ljava/util/Set<Lcom/ut/share/SharePlatform;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mDisablePlatforms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public setLaiwangAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "laiwangAppID"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ut/share/ShareAPI;->mLaiwangAppID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLaiwangSecretID(Ljava/lang/String;)V
    .locals 0
    .parameter "laiwangSecretID"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ut/share/ShareAPI;->mLaiwangSecretID:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWangxinAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "wangxinAppID"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ut/share/ShareAPI;->mWangxinAppID:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setWeixinAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "weixinAppID"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ut/share/ShareAPI;->mWeixinAppID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public share(Lcom/ut/share/SharePlatform;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .parameter "platform"
    .parameter "text"
    .parameter "pic"
    .parameter "link"

    .prologue
    .line 212
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ut/share/ShareAPI;->share(Lcom/ut/share/SharePlatform;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    .line 213
    return-void
.end method

.method public share(Lcom/ut/share/SharePlatform;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 11
    .parameter "platform"
    .parameter "text"
    .parameter "pic"
    .parameter "link"
    .parameter "genQRCode"
    .parameter "centerLogo"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharePlatform must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const/4 v3, 0x0

    .line 231
    .local v3, smsText:Ljava/lang/String;
    sget-object v0, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    if-ne p1, v0, :cond_1

    .line 232
    move-object v3, p2

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mPageName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/ut/share/ShareAPI;->mShareParams:Ljava/util/Map;

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/ut/share/component/ShareAPIHelper;->genShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/util/Map;)Lcom/ut/share/data/ShareData;

    move-result-object v9

    .line 235
    .local v9, data:Lcom/ut/share/data/ShareData;
    new-instance v10, Lcom/ut/share/component/ShareProcessor;

    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v0, v9}, Lcom/ut/share/component/ShareProcessor;-><init>(Landroid/app/Activity;Lcom/ut/share/data/ShareData;)V

    .line 236
    .local v10, processor:Lcom/ut/share/component/ShareProcessor;
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mWeixinAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/ShareProcessor;->setWeixinAppID(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mWangxinAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/ShareProcessor;->setWangxinAppID(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mLaiwangAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/ShareProcessor;->setLaiwangAppID(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mLaiwangSecretID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/ShareProcessor;->setLaiwangSecretID(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mDisablePlatforms:Ljava/util/Set;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/ShareProcessor;->setDisableSharePlatforms(Ljava/util/Set;)V

    .line 241
    invoke-virtual {v10, p1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/SharePlatform;)V

    .line 242
    return-void
.end method

.method public shareWithView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "text"
    .parameter "smsText"
    .parameter "pic"
    .parameter "link"

    .prologue
    .line 171
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ut/share/ShareAPI;->shareWithView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    .line 172
    return-void
.end method

.method public shareWithView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 11
    .parameter "title"
    .parameter "text"
    .parameter "smsText"
    .parameter "pic"
    .parameter "link"
    .parameter "genQRCode"
    .parameter "centerLogo"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mShareView:Lcom/ut/share/view/ShareView;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shareView must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mPageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/ut/share/ShareAPI;->mShareParams:Ljava/util/Map;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/ut/share/component/ShareAPIHelper;->genShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/util/Map;)Lcom/ut/share/data/ShareData;

    move-result-object v9

    .line 193
    .local v9, data:Lcom/ut/share/data/ShareData;
    new-instance v10, Lcom/ut/share/component/a;

    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ut/share/ShareAPI;->mShareView:Lcom/ut/share/view/ShareView;

    invoke-direct {v10, v0, v1, v9}, Lcom/ut/share/component/a;-><init>(Landroid/app/Activity;Lcom/ut/share/view/ShareView;Lcom/ut/share/data/ShareData;)V

    .line 194
    .local v10, menu:Lcom/ut/share/component/a;
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mWeixinAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/a;->setWeixinAppID(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mWangxinAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/a;->setWangxinAppID(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mLaiwangAppID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/a;->setLaiwangAppID(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mLaiwangSecretID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/a;->setLaiwangSecretID(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/ut/share/ShareAPI;->mDisablePlatforms:Ljava/util/Set;

    invoke-virtual {v10, v0}, Lcom/ut/share/component/a;->setDisableSharePlatforms(Ljava/util/Set;)V

    .line 199
    invoke-virtual {v10}, Lcom/ut/share/component/a;->eb()V

    .line 200
    return-void
.end method
