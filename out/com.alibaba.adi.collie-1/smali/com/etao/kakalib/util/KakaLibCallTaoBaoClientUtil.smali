.class public Lcom/etao/kakalib/util/KakaLibCallTaoBaoClientUtil;
.super Ljava/lang/Object;
.source "KakaLibCallTaoBaoClientUtil.java"


# static fields
.field private static final TAOBAO_ANDROID_DOWNLOAD_URL:Ljava/lang/String; = "http://m.taobao.com/channel/act/sale/tbdlhuoyan.html"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goTaobaoClientItemDetailActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "url"

    .prologue
    .line 35
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v2, "CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f20\u7ed9\u4e3b\u5ba2\u7684QR\u7ed3\u679c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "result_format"

    const-string v3, "QR_CODE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "com.taobao.taobao"

    const-string v3, "com.taobao.tao.ScanResultActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TAG"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5f00\u6dd8\u5b9dcom.taobao.tao.ScanResultActivity\u9875\u9762\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static goTaobaoClientSearchListActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "title"

    .prologue
    .line 12
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.taobao.taobao"

    .line 14
    const-string v3, "com.taobao.tao.SearchListActivity"

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    if-eqz p1, :cond_0

    .line 16
    const-string v2, "search"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TAG"

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5f00\u6dd8\u5b9dcom.taobao.tao.SearchListActivity\u9875\u9762\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "http://m.taobao.com/channel/act/sale/tbdlhuoyan.html"

    .line 26
    invoke-static {p0, v2}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
