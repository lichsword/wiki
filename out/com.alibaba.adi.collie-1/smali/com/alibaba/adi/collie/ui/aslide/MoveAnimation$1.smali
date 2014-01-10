.class Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;
.super Landroid/os/Handler;
.source "MoveAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->move(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Landroid/os/Message;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$1(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$1(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;->onMoveingCallback(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$3(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$3(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;->onMoveingCallback(I)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->move(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Landroid/os/Message;)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$4(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Z)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$1(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$1(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$5(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;->onMoveEndCallback(IF)V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$4(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Z)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$3(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$3(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;->onMoveEndCallback(I)V

    goto/16 :goto_0

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$4(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Z)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->decelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$7(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->decelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$7(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;->onMoveEndCallback(I)V

    goto/16 :goto_0

    .line 122
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$4(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Z)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->accelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$8(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->accelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$8(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$9(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$5(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F

    move-result v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;->onMoveEndCallback(IF)V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
