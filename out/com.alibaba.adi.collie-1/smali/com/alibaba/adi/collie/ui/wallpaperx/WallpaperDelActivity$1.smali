.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$1;
.super Ljava/lang/Object;
.source "WallpaperDelActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->initListeners()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 126
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "i"
    .parameter "v"
    .parameter "i2"

    .prologue
    .line 117
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    add-int/lit8 v1, p1, 0x1

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSeekbarProcsssToPageNum(I)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;I)V

    .line 121
    return-void
.end method
