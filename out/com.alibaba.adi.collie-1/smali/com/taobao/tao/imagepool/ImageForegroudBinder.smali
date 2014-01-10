.class public Lcom/taobao/tao/imagepool/ImageForegroudBinder;
.super Ljava/lang/Object;
.source "ImageForegroudBinder.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/ImageBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindImg2View(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Z
    .locals 2
    .parameter "d"
    .parameter "view"

    .prologue
    .line 24
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 26
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 30
    .restart local p2
    :cond_0
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageForegroudBinder::bindImg2View view is not a ImageView!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbind(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 38
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 44
    .restart local p1
    :cond_0
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImageForegroudBinder::unbind view is not a ImageView!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
