.class public Lcom/alibaba/adi/collie/ui/settings/FAQActivity;
.super Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.source "FAQActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://suopingbao.m.taobao.com/?c=faq&v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
