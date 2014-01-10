.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog$1;
.super Ljava/lang/Object;
.source "QRCodeErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;-><init>(Landroid/content/Context;Lcom/etao/kakalib/KakaLibScanController;Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeErrorDialog;->close(Z)V

    .line 35
    return-void
.end method
