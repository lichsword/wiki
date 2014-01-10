.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$3;
.super Ljava/lang/Object;
.source "WallpaperDelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 223
    const-string v0, "ConfirmToDeleteALotWallpaper"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v0

    if-gtz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->selectRandomly()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->finish()V

    .line 228
    return-void
.end method
