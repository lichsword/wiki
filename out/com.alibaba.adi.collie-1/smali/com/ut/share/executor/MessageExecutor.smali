.class public Lcom/ut/share/executor/MessageExecutor;
.super Lcom/ut/share/executor/Executor;
.source "MessageExecutor.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V
    .locals 0
    .parameter "context"
    .parameter "spt"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 15
    return-void
.end method

.method private shareSMSKitKatOrAfter(Ljava/lang/String;)Z
    .locals 4
    .parameter "shareContent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/ut/share/executor/MessageExecutor;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, defaultSmsPackageName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, sendIntent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/ut/share/executor/MessageExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v3, 0x1

    .line 62
    .end local v0           #defaultSmsPackageName:Ljava/lang/String;
    .end local v2           #sendIntent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private shareSMSbeforeKitKat(Ljava/lang/String;)Z
    .locals 4
    .parameter "shareContent"

    .prologue
    .line 34
    const-string v3, "smsto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 35
    .local v2, smsToUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sms_body"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/ut/share/executor/MessageExecutor;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doShare()Z
    .locals 3

    .prologue
    .line 20
    const-string v0, ""

    .line 21
    .local v0, shareContent:Ljava/lang/String;
    iget-object v1, p0, Lcom/ut/share/executor/MessageExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getMessageText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ut/share/executor/MessageExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/share/executor/MessageExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_1

    .line 27
    invoke-direct {p0, v0}, Lcom/ut/share/executor/MessageExecutor;->shareSMSKitKatOrAfter(Ljava/lang/String;)Z

    move-result v1

    .line 29
    :goto_1
    return v1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ut/share/executor/MessageExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/share/executor/MessageExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0, v0}, Lcom/ut/share/executor/MessageExecutor;->shareSMSbeforeKitKat(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
