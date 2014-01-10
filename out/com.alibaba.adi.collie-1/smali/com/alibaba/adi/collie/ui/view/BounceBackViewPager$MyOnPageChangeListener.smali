.class Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;-><init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    const-string v1, "onPageScrollStateChanged(), state=SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPositionOffset:F
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$7(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;F)V

    .line 234
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #setter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPosition:I
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$6(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V

    .line 210
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageScrolled(), mScrollPositionOffset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #setter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollPositionOffset:F
    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$7(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;F)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #setter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mLastPosition:I
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$8(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->invalidateVisibleChilds(I)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$1(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;I)V

    .line 214
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$MyOnPageChangeListener;->this$0:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    #getter for: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->mScrollListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->access$5(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 222
    :cond_0
    return-void
.end method
