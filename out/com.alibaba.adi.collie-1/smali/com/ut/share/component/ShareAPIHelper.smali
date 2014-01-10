.class public final Lcom/ut/share/component/ShareAPIHelper;
.super Ljava/lang/Object;
.source "ShareAPIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genShareData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/util/Map;)Lcom/ut/share/data/ShareData;
    .locals 7
    .parameter "pageName"
    .parameter "title"
    .parameter "text"
    .parameter "smsText"
    .parameter "pic"
    .parameter "link"
    .parameter "genQRCode"
    .parameter "centerLogo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/ut/share/data/b;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ut/share/data/ShareData;"
        }
    .end annotation

    .prologue
    .line 23
    .local p8, shareParams:Ljava/util/Map;,"Ljava/util/Map<Lcom/ut/share/data/b;Ljava/lang/Object;>;"
    new-instance v0, Lcom/ut/share/data/ShareData;

    invoke-direct {v0}, Lcom/ut/share/data/ShareData;-><init>()V

    .line 24
    .local v0, data:Lcom/ut/share/data/ShareData;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ut/share/data/ShareData;->setShareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p4}, Lcom/ut/share/data/ShareData;->setPic(Landroid/graphics/Bitmap;)V

    .line 26
    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {v0, p3}, Lcom/ut/share/data/ShareData;->setMessageText(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {v0, p8}, Lcom/ut/share/data/ShareData;->setCustomParams(Ljava/util/Map;)V

    .line 31
    if-eqz p6, :cond_2

    .line 32
    new-instance v6, Lcom/ut/share/utils/a;

    const/16 v1, 0xa0

    const/16 v2, 0xa0

    invoke-direct {v6, v0, v1, v2}, Lcom/ut/share/utils/a;-><init>(Lcom/ut/share/data/ShareData;II)V

    .line 33
    .local v6, entity:Lcom/ut/share/utils/a;
    if-eqz p7, :cond_1

    .line 34
    invoke-virtual {v6, p7}, Lcom/ut/share/utils/a;->a(Landroid/graphics/Bitmap;)V

    .line 36
    :cond_1
    invoke-virtual {v0, v6}, Lcom/ut/share/data/ShareData;->setEncodeInfo(Lcom/ut/share/utils/a;)V

    .line 38
    .end local v6           #entity:Lcom/ut/share/utils/a;
    :cond_2
    return-object v0
.end method
