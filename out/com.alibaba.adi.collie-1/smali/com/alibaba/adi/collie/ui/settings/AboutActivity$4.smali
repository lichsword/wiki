.class Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "layoutResID"

    const v2, 0x7f030002

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "filename"

    const-string v2, "privacy.txt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    const v2, 0x7f040013

    const v3, 0x7f040014

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->overridePendingTransition(II)V

    .line 113
    return-void
.end method
