.class Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;
.super Ljava/lang/Object;
.source "TipsBox.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/view/TipsBox$1;

.field private final synthetic val$layoutView:Landroid/view/ViewGroup;

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/TipsBox$1;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->this$1:Lcom/alibaba/adi/collie/ui/view/TipsBox$1;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->val$layoutView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->val$textView:Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->val$layoutView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;-><init>(Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 51
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 46
    return-void
.end method
