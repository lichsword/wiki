.class public Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;
.super Landroid/content/ContextWrapper;
.source "ContextWrapperEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mEdgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mGlowDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourcesEdgeEffect:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "color"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 28
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mColor:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;-><init>(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mResourcesEdgeEffect:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mColor:I

    return v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mResourcesEdgeEffect:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;

    return-object v0
.end method

.method public setEdgeEffectColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mColor:I

    .line 35
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_1
    return-void
.end method
