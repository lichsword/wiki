.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;
.super Ljava/lang/Object;
.source "WallpaperDelActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->viewPagerPageSum:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->getSeekBarCurProcessTargetPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;I)I

    move-result v1

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$7(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->showSeekDialog(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    const/4 v2, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;Z)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, thumbDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumbOffset(I)V

    .line 152
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setCurrentItem(I)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->targetPageNum:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)I

    move-result v2

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->setSeekbarProcsssToPageNum(I)V
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;I)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->isTouchSeeked:Z
    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;Z)V

    .line 138
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->hideSeekDialog()V

    .line 139
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, thumbDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumbOffset(I)V

    .line 143
    return-void
.end method
