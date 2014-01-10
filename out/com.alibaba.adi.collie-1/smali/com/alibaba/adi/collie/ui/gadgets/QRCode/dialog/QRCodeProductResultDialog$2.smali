.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;
.super Ljava/lang/Object;
.source "QRCodeProductResultDialog.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    const-string v0, "http://s.m.taobao.com/search.htm?q="

    .line 125
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/Tools;->startUrlPreferTaobao(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void

    .line 127
    .restart local v0       #url:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOnLineTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->mProductInfo:Lcom/etao/kakalib/api/beans/ProductInfo;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/dialog/QRCodeProductResultDialog;)Lcom/etao/kakalib/api/beans/ProductInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOnLineTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_0
.end method
