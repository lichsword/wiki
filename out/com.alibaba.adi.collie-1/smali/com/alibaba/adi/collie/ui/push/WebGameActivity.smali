.class public Lcom/alibaba/adi/collie/ui/push/WebGameActivity;
.super Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.source "WebGameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "http://suopingbao.m.taobao.com/?c=faq"

    return-object v0
.end method
