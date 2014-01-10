.class Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "UserGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/UserGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;->this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;-><init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 126
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;->this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/UserGuideActivity;->stepLayouts:[I
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->access$0(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity$ViewPagerAdapter;->this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    #calls: Lcom/alibaba/adi/collie/ui/UserGuideActivity;->renderPagerItem(I)Landroid/view/View;
    invoke-static {v1, p2}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->access$1(Lcom/alibaba/adi/collie/ui/UserGuideActivity;I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, pagerItem:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 143
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
