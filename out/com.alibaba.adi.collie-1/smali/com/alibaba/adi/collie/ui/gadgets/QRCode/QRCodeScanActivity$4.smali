.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;
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
        "Lcom/etao/kakalib/api/beans/ProductInfo;",
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 460
    invoke-direct {p0}, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    return-object v0
.end method


# virtual methods
.method public onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "productInfo"
    .parameter "s"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;Lcom/etao/kakalib/api/beans/ProductInfo;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public bridge synthetic onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/api/beans/ProductInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->onHttpLoadingEnded(Lcom/etao/kakalib/api/beans/ProductInfo;Ljava/lang/String;)V

    return-void
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    new-instance v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4$2;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method
