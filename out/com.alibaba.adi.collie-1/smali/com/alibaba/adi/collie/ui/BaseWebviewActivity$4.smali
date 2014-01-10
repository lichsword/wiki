.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

.field private touchStartX:F

.field private touchStartY:F


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartX:F

    .line 367
    iput v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartY:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v4, 0x4270

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0800b6

    if-ne v2, v3, :cond_0

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 373
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 375
    .local v1, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 387
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v2}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->isShowing()Z

    move-result v2

    return v2

    .line 377
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    iput v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartX:F

    .line 378
    iput v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartY:F

    goto :goto_0

    .line 381
    :pswitch_1
    iget v2, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iget v2, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->touchStartY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v2}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->closeKeyGuard()V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
