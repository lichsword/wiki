.class Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->onMoveEndCallback(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;->this$1:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(I)V
    .locals 2
    .parameter "offsetY"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;->this$1:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->reboundListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$20(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;->this$1:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->reboundListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$20(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;->this$1:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;->onMoveEndCallback(I)V

    .line 831
    :cond_0
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 822
    return-void
.end method
