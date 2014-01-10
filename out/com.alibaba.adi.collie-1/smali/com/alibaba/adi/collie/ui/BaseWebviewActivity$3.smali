.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$3;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;


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


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusConfirmInit()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onStatusConfirmInputError()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public onStatusConfirmLastPassword()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onStatusConfirmPasswordSuccess()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onUnlocked()V

    .line 361
    return-void
.end method

.method public onStatusInit()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onStatusInitInputError()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onStatusInitInputSuccess()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
