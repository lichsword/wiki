.class Lcom/alibaba/adi/collie/ui/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 307
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/high16 v9, 0x433f

    const/4 v7, 0x0

    .line 311
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 351
    return-void

    .line 313
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 314
    .local v4, wallpapers:[Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 315
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity;->setWallpaper([Landroid/graphics/Bitmap;)V
    invoke-static {v5, v4}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$0(Lcom/alibaba/adi/collie/ui/MainActivity;[Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 319
    .end local v4           #wallpapers:[Landroid/graphics/Bitmap;
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 320
    .local v2, position:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$1(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq v5, v2, :cond_0

    .line 321
    const/4 v3, 0x1

    .line 322
    .local v3, smooth:Z
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$1(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 328
    .end local v2           #position:I
    .end local v3           #smooth:Z
    :pswitch_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$3(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 330
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$3(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$4(Lcom/alibaba/adi/collie/ui/MainActivity;F)V

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 337
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity;)F

    move-result v5

    float-to-int v1, v5

    .line 338
    .local v1, containerTop:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mContainerLayout:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$5(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->screenWidth:I
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$6(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I
    invoke-static {v8}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$3(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 341
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity;)F

    move-result v5

    mul-float/2addr v5, v9

    .line 342
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->screenHeight:I
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$3(Lcom/alibaba/adi/collie/ui/MainActivity;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 341
    add-float/2addr v5, v9

    float-to-int v0, v5

    .line 343
    .local v0, alpha:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity;->setBackgroundAlpha(I)V
    invoke-static {v5, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$7(Lcom/alibaba/adi/collie/ui/MainActivity;I)V

    goto/16 :goto_0

    .line 331
    .end local v0           #alpha:I
    .end local v1           #containerTop:I
    :cond_2
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 332
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/MainActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #setter for: Lcom/alibaba/adi/collie/ui/MainActivity;->offsetY:F
    invoke-static {v5, v7}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$4(Lcom/alibaba/adi/collie/ui/MainActivity;F)V

    goto/16 :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
