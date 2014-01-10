.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    .line 182
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
    .line 210
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$7(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->getSeekBarCurProcessTargetPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;I)I

    move-result v1

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$8(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;I)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->showSeekDialog(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    const/4 v2, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Z)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    .local v0, thumbDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 203
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumbOffset(I)V

    .line 205
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->scrollToPage(ILjava/lang/Boolean;)V
    invoke-static {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;ILjava/lang/Boolean;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z
    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Z)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->hideSeekDialog()V

    .line 191
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, thumbDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setThumbOffset(I)V

    .line 195
    return-void
.end method
