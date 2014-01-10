.class Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;
.super Ljava/lang/Object;
.source "DisableHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    const/4 v2, 0x1

    .line 79
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->finish()V

    .line 82
    return-void
.end method
