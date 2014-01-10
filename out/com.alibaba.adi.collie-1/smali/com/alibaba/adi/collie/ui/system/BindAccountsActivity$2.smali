.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
