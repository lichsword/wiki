.class Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$2;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;-><init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;ILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;->onGridItemClick(Landroid/view/View;)V

    .line 57
    return-void
.end method
