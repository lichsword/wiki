.class public Lcom/ut/share/a/a;
.super Ljava/lang/Object;
.source "ShareLaiwangController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private pA:Ljava/lang/String;

.field private pz:Lcom/laiwang/openapi/ILWAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "appId"
    .parameter "secretId"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/laiwang/openapi/LWAPIFactory;->createLWAPI()Lcom/laiwang/openapi/ILWAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/share/a/a;->pz:Lcom/laiwang/openapi/ILWAPI;

    .line 43
    iput-object p2, p0, Lcom/ut/share/a/a;->pA:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/ut/share/a/a;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/ut/share/a/a;->pz:Lcom/laiwang/openapi/ILWAPI;

    const v4, 0x20131023

    const-string v5, "taobao"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/laiwang/openapi/ILWAPI;->registerAPP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "version"
    .parameter "title"
    .parameter "text"
    .parameter "chat"
    .parameter "thumbBMP"
    .parameter "thumbpicPath"
    .parameter "picUrl"
    .parameter "url"
    .parameter "laiwangFrom"
    .parameter "shareType"

    .prologue
    .line 71
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p8

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-static/range {v0 .. v8}, Lcom/laiwang/openapi/LWAPIFactory;->createComMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/openapi/message/IILWMessage;

    move-result-object v9

    .line 73
    .local v9, lwMessage:Lcom/laiwang/openapi/message/IILWMessage;
    iget-object v0, p0, Lcom/ut/share/a/a;->pA:Ljava/lang/String;

    invoke-interface {v9, v0}, Lcom/laiwang/openapi/message/IILWMessage;->setAppkey(Ljava/lang/String;)V

    .line 74
    const-string v0, "laiwang.share.sdk.1111"

    invoke-interface {v9, v0}, Lcom/laiwang/openapi/message/IILWMessage;->setMessageActiviy(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/ut/share/a/a;->pz:Lcom/laiwang/openapi/ILWAPI;

    iget-object v1, p0, Lcom/ut/share/a/a;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v9, p1}, Lcom/laiwang/openapi/ILWAPI;->transactData(Landroid/content/Context;Lcom/laiwang/openapi/message/IILWMessage;I)Z

    .line 76
    return-void
.end method

.method public ee()Z
    .locals 2

    .prologue
    .line 51
    const-string v0, "mips"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
