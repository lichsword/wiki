.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusCancel()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    .line 96
    .local v0, smooth:Z
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onStatusLockSuccess()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->doUnlockAnim()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$0(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    .line 85
    return-void
.end method
