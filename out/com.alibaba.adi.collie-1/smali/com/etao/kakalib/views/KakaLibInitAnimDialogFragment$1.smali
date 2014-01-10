.class Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment$1;
.super Ljava/lang/Object;
.source "KakaLibInitAnimDialogFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->startAnimAndDismisDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;->dismiss()V

    .line 121
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 116
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 112
    return-void
.end method
