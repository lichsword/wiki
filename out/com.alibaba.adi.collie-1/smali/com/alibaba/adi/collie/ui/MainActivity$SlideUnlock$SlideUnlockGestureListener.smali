.class Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideUnlockGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1282
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slide \u624b\u52bf onFling"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$1(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$1(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->mMotionEventYList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$1(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #setter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z
    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;Z)V

    .line 1288
    :goto_0
    return v4

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$SlideUnlockGestureListener;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #setter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->intentToUnlockByGesture:Z
    invoke-static {v0, v4}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$2(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;Z)V

    goto :goto_0
.end method
