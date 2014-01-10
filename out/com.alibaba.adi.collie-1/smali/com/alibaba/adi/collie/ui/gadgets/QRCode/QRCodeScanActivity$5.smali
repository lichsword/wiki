.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;
.super Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
.source "QRCodeScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
        "<",
        "Lcom/etao/kakalib/api/beans/MailTraceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 498
    invoke-direct {p0}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    return-object v0
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V
    .locals 2
    .parameter "mailTraceWrapper"
    .parameter "s"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;Lcom/etao/kakalib/api/beans/MailTraceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/MailTraceWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/MailTraceWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5$2;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
