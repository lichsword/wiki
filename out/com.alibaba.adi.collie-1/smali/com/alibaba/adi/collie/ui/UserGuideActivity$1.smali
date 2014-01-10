.class Lcom/alibaba/adi/collie/ui/UserGuideActivity$1;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/UserGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/UserGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 51
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 56
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/UserGuideActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/UserGuideActivity;

    #calls: Lcom/alibaba/adi/collie/ui/UserGuideActivity;->activeDot(I)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/UserGuideActivity;->access$2(Lcom/alibaba/adi/collie/ui/UserGuideActivity;I)V

    .line 61
    return-void
.end method
