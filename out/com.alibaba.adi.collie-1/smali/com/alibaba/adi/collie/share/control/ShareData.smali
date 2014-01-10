.class public Lcom/alibaba/adi/collie/share/control/ShareData;
.super Ljava/lang/Object;
.source "ShareData.java"


# instance fields
.field public mDstLargeUri:Landroid/net/Uri;

.field public mDstQRCodeUri:Landroid/net/Uri;

.field public mDstSmallUri:Landroid/net/Uri;

.field public mEncodeEntity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

.field public mLink:Ljava/lang/String;

.field public mSrcAssetPath:Ljava/lang/String;

.field public mSrcLargeBitmap:Landroid/graphics/Bitmap;

.field public mSrcSmallBitmap:Landroid/graphics/Bitmap;

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEncodeInfo(Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareData;->mEncodeEntity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

    .line 26
    return-void
.end method

.method public setShareInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "shareText"
    .parameter "linkForWeixin"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    .line 47
    return-void
.end method
