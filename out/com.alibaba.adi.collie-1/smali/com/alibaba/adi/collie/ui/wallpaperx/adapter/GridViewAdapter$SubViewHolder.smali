.class public Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubViewHolder"
.end annotation


# instance fields
.field animationCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

.field imageMask:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)V
    .locals 0
    .parameter
    .parameter "imgPic"
    .parameter "imgMask"
    .parameter "checkbox"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    .line 251
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->animationCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 252
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageMask:Landroid/widget/ImageView;

    .line 253
    return-void
.end method
