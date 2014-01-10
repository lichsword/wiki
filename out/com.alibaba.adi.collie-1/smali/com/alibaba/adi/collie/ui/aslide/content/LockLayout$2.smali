.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusConfirmInit()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onStatusConfirmInputError()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onStatusConfirmLastPassword()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onStatusConfirmPasswordSuccess()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->doUnlockAnim()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$0(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    .line 138
    return-void
.end method

.method public onStatusInit()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onStatusInitInputError()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onStatusInitInputSuccess()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
