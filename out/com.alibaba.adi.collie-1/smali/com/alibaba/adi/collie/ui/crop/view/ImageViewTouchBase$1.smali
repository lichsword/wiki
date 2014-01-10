.class Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->val$bitmap:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    iput-boolean p3, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->val$resetSupp:Z

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->val$bitmap:Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;

    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/alibaba/adi/collie/ui/crop/view/RotateBitmap;Z)V

    .line 163
    return-void
.end method
