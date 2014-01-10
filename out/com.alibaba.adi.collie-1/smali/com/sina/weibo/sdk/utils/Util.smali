.class public Lcom/sina/weibo/sdk/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CANCEL_CHINESS:Ljava/lang/String; = "\u4ee5\u540e\u518d\u8bf4"

.field private static final CANCEL_ENGLISH:Ljava/lang/String; = "Download Later"

.field private static final OK_CHINESS:Ljava/lang/String; = "\u73b0\u5728\u4e0b\u8f7d"

.field private static final OK_ENGLISH:Ljava/lang/String; = "Download Now"

.field private static final PROMPT_CHINESS:Ljava/lang/String; = "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

.field private static final PROMPT_ENGLISH:Ljava/lang/String; = "Sina Weibo client is not installed, download now?"

.field private static final TITLE_CHINESS:Ljava/lang/String; = "\u63d0\u793a"

.field private static final TITLE_ENGLISH:Ljava/lang/String; = "Notice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/Util;->downloadWeibo(Landroid/app/Activity;)V

    return-void
.end method

.method public static createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
    .locals 6
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 55
    const-string v4, "\u63d0\u793a"

    .line 56
    .local v4, title:Ljava/lang/String;
    const-string v3, "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

    .line 57
    .local v3, prompt:Ljava/lang/String;
    const-string v2, "\u73b0\u5728\u4e0b\u8f7d"

    .line 58
    .local v2, ok:Ljava/lang/String;
    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    .line 60
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/Util;->isChineseLocale(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    const-string v4, "Notice"

    .line 62
    const-string v3, "Sina Weibo client is not installed, download now?"

    .line 63
    const-string v2, "Download Now"

    .line 64
    const-string v1, "Download Later"

    .line 67
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance v5, Lcom/sina/weibo/sdk/utils/Util$1;

    invoke-direct {v5, p0}, Lcom/sina/weibo/sdk/utils/Util$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v5, Lcom/sina/weibo/sdk/utils/Util$2;

    invoke-direct {v5, p1}, Lcom/sina/weibo/sdk/utils/Util$2;-><init>(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 95
    return-void
.end method

.method private static downloadWeibo(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    const-string v2, "http://app.sina.cn/appdetail.php?appID=84560"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, url:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static generateId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 38
    const/16 v6, 0x40

    .line 37
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    move-object v3, v4

    .line 49
    .end local v0           #j:I
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return-object v3

    .line 39
    :catch_0
    move-exception v1

    .local v1, localNameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v4

    .line 40
    goto :goto_1

    .line 43
    .end local v1           #localNameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #j:I
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 45
    .local v3, str:[B
    if-nez v3, :cond_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isChineseLocale(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 100
    .local v1, locale:Ljava/util/Locale;
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    .end local v1           #locale:Ljava/util/Locale;
    :cond_0
    :goto_0
    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
