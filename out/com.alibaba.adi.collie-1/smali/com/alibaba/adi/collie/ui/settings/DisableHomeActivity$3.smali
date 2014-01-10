.class Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;
.super Ljava/lang/Object;
.source "DisableHomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->setLaunchActivity(Landroid/content/ComponentName;)V

    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->isDefaultLauncher()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    .line 270
    const/4 v4, 0x2

    .line 269
    invoke-virtual {v3, v2, v4}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    const v4, 0x7f0a0173

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, dialogTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 274
    const/4 v5, 0x2

    .line 273
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v0           #dialogTitle:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 277
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
