.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$2;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusCancel()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onStatusLockSuccess()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onUnlocked()V

    .line 309
    return-void
.end method
