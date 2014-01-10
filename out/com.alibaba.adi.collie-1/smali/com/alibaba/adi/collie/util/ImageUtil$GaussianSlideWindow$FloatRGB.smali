.class Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatRGB"
.end annotation


# instance fields
.field b:F

.field g:F

.field r:F

.field final synthetic this$1:Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;FFF)V
    .locals 0
    .parameter
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->this$1:Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p2, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->r:F

    .line 425
    iput p3, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->g:F

    .line 426
    iput p4, p0, Lcom/alibaba/adi/collie/util/ImageUtil$GaussianSlideWindow$FloatRGB;->b:F

    .line 427
    return-void
.end method
