.class Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;
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

.field private final synthetic val$launcherAdapter:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->val$launcherAdapter:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 295
    sget-object v2, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chooserDialog: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->val$launcherAdapter:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;

    invoke-virtual {v2, p2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 298
    .local v1, itemInfo:Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 299
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 298
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v0, defName:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->setDefaultLauncher(Landroid/content/ComponentName;)V
    invoke-static {v2, v0}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Landroid/content/ComponentName;)V

    .line 301
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->mLauncherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;)Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->setDefaultLauncher(Landroid/content/ComponentName;)V

    .line 302
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$4;->val$launcherAdapter:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;

    invoke-virtual {v2, p2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->setCheckedItem(I)V

    .line 303
    return-void
.end method
