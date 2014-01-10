.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;
.super Ljava/lang/Object;
.source "QrCodeWebLinkResultDialog.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->mWebLink:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QrCodeWebLinkResultDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method
