.class Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;
.super Ljava/lang/Object;
.source "TipsBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;

.field private final synthetic val$layoutView:Landroid/view/ViewGroup;

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;->this$2:Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;->val$layoutView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;->val$textView:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;->val$layoutView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method
