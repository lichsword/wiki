.class public Lcom/ut/share/data/ShareData;
.super Ljava/lang/Object;
.source "ShareData.java"


# instance fields
.field private mEncodeEntity:Lcom/ut/share/utils/a;

.field private mLink:Ljava/lang/String;

.field private mMessageText:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mPic:Landroid/graphics/Bitmap;

.field private mPicUri:Landroid/net/Uri;

.field private mQRCodeUri:Landroid/net/Uri;

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

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThumbPicUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWrappedLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/share/data/ShareData;->mShareParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "platform"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 74
    new-instance v0, Lcom/ut/share/data/b;

    invoke-direct {v0, p1, p2}, Lcom/ut/share/data/b;-><init>(Lcom/ut/share/SharePlatform;Ljava/lang/String;)V

    .line 75
    .local v0, pk:Lcom/ut/share/data/b;
    iget-object v1, p0, Lcom/ut/share/data/ShareData;->mShareParams:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "platform"
    .parameter "key"

    .prologue
    .line 89
    new-instance v0, Lcom/ut/share/data/b;

    invoke-direct {v0, p1, p2}, Lcom/ut/share/data/b;-><init>(Lcom/ut/share/SharePlatform;Ljava/lang/String;)V

    .line 90
    .local v0, pk:Lcom/ut/share/data/b;
    iget-object v1, p0, Lcom/ut/share/data/ShareData;->mShareParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/ut/share/data/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mShareParams:Ljava/util/Map;

    return-object v0
.end method

.method public getEncodeEntity()Lcom/ut/share/utils/a;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mEncodeEntity:Lcom/ut/share/utils/a;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mPic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPicUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mPicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQRCodeUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mQRCodeUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mThumbPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mWrappedLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomParams(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/ut/share/data/b;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, shareParams:Ljava/util/Map;,"Ljava/util/Map<Lcom/ut/share/data/b;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ut/share/data/ShareData;->mShareParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setEncodeInfo(Lcom/ut/share/utils/a;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mEncodeEntity:Lcom/ut/share/utils/a;

    .line 36
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .parameter "messageText"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mMessageText:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPic(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mPic:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method

.method public setPicUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "picUri"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mPicUri:Landroid/net/Uri;

    .line 67
    return-void
.end method

.method public setQRCodeUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "qRCodeUri"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mQRCodeUri:Landroid/net/Uri;

    .line 63
    return-void
.end method

.method public setShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pageName"
    .parameter "menuTitle"
    .parameter "subject"
    .parameter "shareText"
    .parameter "link"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mPageName:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/ut/share/data/ShareData;->mTitle:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/ut/share/data/ShareData;->mSubject:Ljava/lang/String;

    .line 109
    if-eqz p4, :cond_0

    .line 110
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/share/data/ShareData;->mText:Ljava/lang/String;

    .line 114
    :goto_0
    iput-object p5, p0, Lcom/ut/share/data/ShareData;->mLink:Ljava/lang/String;

    .line 115
    return-void

    .line 112
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/share/data/ShareData;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mText:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setThumbPicUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "picUrl"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mThumbPicUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setWrappedLink(Ljava/lang/String;)V
    .locals 0
    .parameter "wrappedLink"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ut/share/data/ShareData;->mWrappedLink:Ljava/lang/String;

    .line 59
    return-void
.end method
