.class public Lcom/alibaba/adi/collie/util/ToutiaoUtil;
.super Ljava/lang/Object;
.source "ToutiaoUtil.java"


# static fields
.field private static final TOUTIAO_PKG:Ljava/lang/String; = "com.ss.android.article.news"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callBrowster(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "urlForWap"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/util/Tools;->startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static invokeAPP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "urlForApp"
    .parameter "urlForWap"

    .prologue
    .line 21
    const-string v2, "com.ss.android.article.news"

    invoke-static {p0, v2}, Lcom/alibaba/adi/collie/util/PhoneUtil;->packageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-static {p0, p2}, Lcom/alibaba/adi/collie/util/ToutiaoUtil;->callBrowster(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 39
    :goto_0
    return v2

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v2, 0x1

    goto :goto_0

    .line 34
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    invoke-static {p0, p2}, Lcom/alibaba/adi/collie/util/ToutiaoUtil;->callBrowster(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 39
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {p0, p2}, Lcom/alibaba/adi/collie/util/ToutiaoUtil;->callBrowster(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
