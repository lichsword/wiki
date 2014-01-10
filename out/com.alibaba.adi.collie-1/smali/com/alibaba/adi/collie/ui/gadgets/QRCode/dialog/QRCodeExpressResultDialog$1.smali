.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog$1;
.super Ljava/lang/Object;
.source "QRCodeExpressResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeExpressResultDialog;->close(Z)V

    .line 54
    return-void
.end method
