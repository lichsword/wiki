.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;
.super Ljava/lang/Object;
.source "BindAccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTUpdateUserAccount(Ljava/lang/String;)V

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->unbindWeiboAccount(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;->this$1:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    move-result-object v0

    #calls: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->refreshBinding()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    .line 197
    return-void
.end method
