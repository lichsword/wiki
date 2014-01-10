.class Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;
.super Ljava/lang/Object;
.source "LockChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 52
    const-string v1, "PinUnlock"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/LockNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    const v2, 0x7f040013

    const v3, 0x7f040014

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->overridePendingTransition(II)V

    .line 57
    return-void
.end method
