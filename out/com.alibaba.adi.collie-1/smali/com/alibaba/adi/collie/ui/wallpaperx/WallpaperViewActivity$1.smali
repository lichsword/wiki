.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$1;
.super Ljava/lang/Object;
.source "WallpaperViewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->initRenderPager()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 90
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "i"
    .parameter "v"
    .parameter "i2"

    .prologue
    .line 80
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->updatePageInfos(I)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;I)V

    .line 85
    return-void
.end method
