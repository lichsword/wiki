.class Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;
.super Landroid/content/res/Resources;
.source "ContextWrapperEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesEdgeEffect"
.end annotation


# instance fields
.field private overscroll_edge:I

.field private overscroll_glow:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    .line 50
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 45
    const-string v0, "overscroll_edge"

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    .line 46
    const-string v0, "overscroll_glow"

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->getPlatformDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    .line 51
    return-void
.end method

.method private getPlatformDrawableId(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 55
    :try_start_0
    const-string v5, "com.android.internal.R$drawable"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 69
    :goto_0
    return v4

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "[ContextWrapperEdgeEffect].getPlatformDrawableId()"

    const-string v6, "Cannot find internal resource class"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, e1:Ljava/lang/NoSuchFieldException;
    const-string v5, "[ContextWrapperEdgeEffect].getPlatformDrawableId()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Internal resource id does not exist: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v1           #e1:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 64
    .local v2, e2:Ljava/lang/IllegalArgumentException;
    const-string v5, "[ContextWrapperEdgeEffect].getPlatformDrawableId()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot access internal resource id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v2           #e2:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 67
    .local v3, e3:Ljava/lang/IllegalAccessException;
    const-string v5, "[ContextWrapperEdgeEffect].getPlatformDrawableId()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot access internal resource id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_edge:I

    if-ne p1, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->access$0(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mEdgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->access$1(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mColor:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->access$4(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    move-object v1, v0

    .line 86
    :goto_1
    return-object v1

    .line 78
    :cond_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->overscroll_glow:I

    if-ne p1, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->access$2(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect$ResourcesEdgeEffect;->this$0:Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;

    #getter for: Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->mGlowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;->access$3(Lcom/alibaba/adi/collie/ui/view/ContextWrapperEdgeEffect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
