.class public Lcom/taobao/tao/imagepool/RoundedCornerConvertor;
.super Ljava/lang/Object;
.source "RoundedCornerConvertor.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/BitmapConvertor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "original"

    .prologue
    .line 15
    invoke-static {p1}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
