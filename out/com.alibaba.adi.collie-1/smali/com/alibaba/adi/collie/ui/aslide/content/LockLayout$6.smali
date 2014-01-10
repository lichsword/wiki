.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->doUnlockAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(IF)V
    .locals 2
    .parameter "offsetY"
    .parameter "speed"

    .prologue
    .line 554
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v1, "do unlock anim end callback"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    const/4 v1, 0x0

    #calls: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hideCallback(Z)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$6(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$9(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$6;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mOnEventListener:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$9(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;->onHideForUnlockFinish()V

    .line 559
    :cond_0
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 550
    return-void
.end method
