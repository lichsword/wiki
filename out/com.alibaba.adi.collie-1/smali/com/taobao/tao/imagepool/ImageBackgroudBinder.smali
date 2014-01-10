.class public Lcom/taobao/tao/imagepool/ImageBackgroudBinder;
.super Ljava/lang/Object;
.source "ImageBackgroudBinder.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/ImageBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindImg2View(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 1
    .parameter "d"
    .parameter "view"

    .prologue
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public unbind(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
