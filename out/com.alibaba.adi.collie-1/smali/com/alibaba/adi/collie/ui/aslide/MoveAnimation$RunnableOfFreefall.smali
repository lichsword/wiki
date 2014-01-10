.class Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableOfFreefall"
.end annotation


# instance fields
.field private moveDirection:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V
    .locals 0
    .parameter
    .parameter "direction"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->moveDirection:I

    .line 534
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$10(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$11(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 542
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$5(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$12(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$13(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 544
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$14(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 546
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$16(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 547
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$14(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$17(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$17(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    float-to-int v2, v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 550
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 551
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 552
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->moveDirection:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 553
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->moveDirection:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->moveDirection:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    neg-int v2, v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 557
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 558
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 565
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
