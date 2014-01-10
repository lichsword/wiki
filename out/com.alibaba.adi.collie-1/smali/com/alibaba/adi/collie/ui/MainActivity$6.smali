.class Lcom/alibaba/adi/collie/ui/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;->checkAppOnSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

.field private final synthetic val$stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->val$stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$9(Lcom/alibaba/adi/collie/ui/MainActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelKeepLock()V

    .line 1453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v0, detailIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1455
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1456
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$6;->val$stepDialog:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->cancel()V

    .line 1457
    return-void
.end method
