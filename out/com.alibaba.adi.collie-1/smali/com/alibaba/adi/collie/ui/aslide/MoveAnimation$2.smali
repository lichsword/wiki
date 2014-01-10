.class Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inRebound(FFFIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

.field private final synthetic val$rebounda:F

.field private final synthetic val$speedk:F


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->val$rebounda:F

    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->val$speedk:F

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
    .locals 1
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    return-object v0
.end method


# virtual methods
.method public onMoveEndCallback(IF)V
    .locals 5
    .parameter "offsetY"
    .parameter "speed"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->val$rebounda:F

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->val$speedk:F

    div-float v2, p2, v2

    const/high16 v3, 0x3f80

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inThrowUp(FFFI)V

    .line 816
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2$1;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;)V

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->access$21(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;)V

    .line 834
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 810
    return-void
.end method
