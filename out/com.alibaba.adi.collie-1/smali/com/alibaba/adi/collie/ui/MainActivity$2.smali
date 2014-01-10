.class Lcom/alibaba/adi/collie/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "ruibo: remove/add desktop shortcut"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, shortcutIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->removeShortcutDesktop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/FragmentPagerActivity;->removeShortcutDesktop(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->addShortcutToDesktop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method
