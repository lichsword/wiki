.class Lcom/alibaba/adi/collie/util/SimpleAnimator$1;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/util/SimpleAnimator;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/util/SimpleAnimator;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator$1;->this$0:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator$1;->this$0:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->update()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator$1;->this$0:Lcom/alibaba/adi/collie/util/SimpleAnimator;

    #getter for: Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->access$0(Lcom/alibaba/adi/collie/util/SimpleAnimator;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_0
    return-void
.end method
