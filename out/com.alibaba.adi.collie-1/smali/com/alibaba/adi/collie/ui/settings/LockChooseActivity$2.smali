.class Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 42
    const-string v1, "PictureUnlock"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/LockPatternActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    const v2, 0x7f040013

    const v3, 0x7f040014

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method
