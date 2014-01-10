.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$3;
.super Ljava/lang/Object;
.source "WallpaperViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 200
    const-string v0, "CancelDeleteWallpaper"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;Z)V

    .line 202
    return-void
.end method
