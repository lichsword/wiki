.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;
.super Ljava/lang/Object;
.source "BindAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 151
    const-string v1, "TryToUnBindingTaobao_AccountManage"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/dialog/UnbindDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method
