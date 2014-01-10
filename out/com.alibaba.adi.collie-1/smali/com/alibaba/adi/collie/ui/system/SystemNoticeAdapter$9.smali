.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setCallItem(Ljava/util/List;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final synthetic val$callOperation:Landroid/widget/LinearLayout;

.field private final synthetic val$iconUpDown:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$callOperation:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$iconUpDown:Landroid/widget/ImageView;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 427
    const-string v2, "MissCall"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, type:I
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$callOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 431
    const/4 v1, 0x1

    .line 432
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$iconUpDown:Landroid/widget/ImageView;

    const v3, 0x7f02009c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 436
    :goto_0
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$callOperation:Landroid/widget/LinearLayout;

    invoke-direct {v0, v2, v1}, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;-><init>(Landroid/view/View;I)V

    .line 437
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 438
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$callOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    return-void

    .line 434
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$9;->val$iconUpDown:Landroid/widget/ImageView;

    const v3, 0x7f0200d5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
