.class public Lcom/alibaba/adi/collie/share/control/ShareBusiness;
.super Ljava/lang/Object;
.source "ShareBusiness.java"


# static fields
.field private static dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dismiss()V

    .line 64
    :cond_0
    return-void
.end method

.method public static shareBitmapCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "link"
    .parameter "bitmap"
    .parameter "icon"

    .prologue
    .line 27
    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 28
    new-instance v0, Lcom/alibaba/adi/collie/share/control/ShareData;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/share/control/ShareData;-><init>()V

    .line 29
    .local v0, data:Lcom/alibaba/adi/collie/share/control/ShareData;
    iput-object p1, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    .line 30
    iput-object p2, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    .line 31
    iput-object p3, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcLargeBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object p4, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcSmallBitmap:Landroid/graphics/Bitmap;

    .line 33
    sget-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->setShareData(Lcom/alibaba/adi/collie/share/control/ShareData;)V

    .line 34
    sget-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->showShareList()V

    .line 35
    return-void
.end method

.method public static shareViewCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "link"
    .parameter "v"
    .parameter "icon"

    .prologue
    .line 51
    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 52
    new-instance v0, Lcom/alibaba/adi/collie/share/control/ShareData;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/share/control/ShareData;-><init>()V

    .line 53
    .local v0, data:Lcom/alibaba/adi/collie/share/control/ShareData;
    iput-object p1, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mText:Ljava/lang/String;

    .line 54
    iput-object p2, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    .line 55
    invoke-static {p3}, Lcom/alibaba/adi/collie/util/ImageUtil;->screenShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcLargeBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object p4, v0, Lcom/alibaba/adi/collie/share/control/ShareData;->mSrcSmallBitmap:Landroid/graphics/Bitmap;

    .line 57
    sget-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->setShareData(Lcom/alibaba/adi/collie/share/control/ShareData;)V

    .line 58
    sget-object v1, Lcom/alibaba/adi/collie/share/control/ShareBusiness;->dialog:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->showShareList()V

    .line 59
    return-void
.end method
