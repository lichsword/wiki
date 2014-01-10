.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 178
    const-string v2, "ConfirmToDeleteOneWallpaper"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v2

    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {v3, v2, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v2

    if-gtz v2, :cond_0

    .line 181
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->selectRandomly()V

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpapers_bounce:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->getDisplayItems()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    .line 186
    .local v0, asyncLoadImage:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 187
    .local v1, future:Ljava/util/concurrent/Future;
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    const-string v2, "WallpaperManagerX"

    const-string v3, "canceling AsyncLoadImage ..."

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->notifyDataSetChanged()V

    .line 192
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->targetIndex:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;)I

    move-result v3

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->updatePageInfos(I)V
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;I)V

    .line 194
    .end local v0           #asyncLoadImage:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;
    .end local v1           #future:Ljava/util/concurrent/Future;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    const/4 v3, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->mInDeleting:Z
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;Z)V

    .line 195
    return-void
.end method
