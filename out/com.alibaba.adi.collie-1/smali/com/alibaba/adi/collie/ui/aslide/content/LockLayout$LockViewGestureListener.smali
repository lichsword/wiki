.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LockLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 412
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u52bf onFling"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z
    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$1(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 414
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z
    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$2(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 422
    :goto_0
    return v3

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$2(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 427
    const-string v0, "msg"

    const-string v1, "\u624b\u52bf onSingleTapUp"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->isIntentHideWithGesture:Z
    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$1(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$LockViewGestureListener;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #setter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->intentHide:Z
    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$2(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 431
    return v2
.end method
