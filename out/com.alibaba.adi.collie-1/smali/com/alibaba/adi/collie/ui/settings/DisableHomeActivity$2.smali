.class Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 234
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysDefaultLauncher()Landroid/content/ComponentName;

    move-result-object v2

    .line 235
    .local v2, homeName:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 236
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getSysLauncherComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 238
    :cond_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "step1Dialog: name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, detailIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
