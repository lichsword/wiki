.class Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;
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
    name = "RunnableOfThrowUp"
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
    .line 601
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->moveDirection:I

    .line 603
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 607
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$10(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$11(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 611
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$9(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$5(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$12(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$13(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 613
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$14(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 615
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$16(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 617
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$14(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    if-gez v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    const/4 v2, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 620
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 621
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 622
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->moveDirection:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 623
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->moveDirection:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->moveDirection:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v2

    neg-int v2, v2

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    .line 627
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 628
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 634
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
