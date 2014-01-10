.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$1;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 179
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "i"
    .parameter "v"
    .parameter "i2"

    .prologue
    .line 170
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->scrollToPage(ILjava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;ILjava/lang/Boolean;)V

    .line 174
    return-void
.end method
