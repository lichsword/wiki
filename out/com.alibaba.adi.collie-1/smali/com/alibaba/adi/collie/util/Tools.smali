.class public Lcom/alibaba/adi/collie/util/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 122
    const-string v2, ""

    .line 124
    .local v2, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 126
    .local v0, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 127
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_1

    .line 128
    :cond_0
    const-string v3, ""

    .line 132
    .end local v0           #pi:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v3

    :cond_1
    move-object v3, v2

    .line 132
    goto :goto_0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/Tools;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .locals 4
    .parameter "pid"

    .prologue
    .line 206
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 207
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 208
    .local v1, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p0, :cond_0

    .line 209
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTaobaoVersionCode()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 85
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 87
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.taobao.taobao"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 88
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 89
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static grade(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 26
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "Couldn\'t launch the market !"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static inViewArea(Landroid/view/View;III)Z
    .locals 10
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "bufferSize"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 165
    if-lez p3, :cond_2

    move v0, p3

    .line 166
    .local v0, BUFFER_SIZE:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v6, v7

    .line 179
    :cond_1
    :goto_1
    return v6

    .line 165
    .end local v0           #BUFFER_SIZE:I
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 169
    .restart local v0       #BUFFER_SIZE:I
    :cond_3
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    :cond_4
    move v6, v7

    .line 170
    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v0, 0x2

    add-int v5, v8, v9

    .line 173
    .local v5, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v0, 0x2

    add-int v1, v8, v9

    .line 174
    .local v1, height:I
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 175
    .local v3, location:[I
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 176
    aget v8, v3, v7

    sub-int v2, v8, v0

    .line 177
    .local v2, left:I
    aget v8, v3, v6

    sub-int v4, v8, v0

    .line 179
    .local v4, top:I
    if-lt p1, v2, :cond_6

    add-int v8, v2, v5

    if-gt p1, v8, :cond_6

    if-lt p2, v4, :cond_6

    add-int v8, v4, v1

    if-le p2, v8, :cond_1

    :cond_6
    move v6, v7

    goto :goto_1
.end method

.method public static inViewOutSideEdge(Landroid/view/View;IIII)Z
    .locals 11
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "bufferSize"
    .parameter "edgeSize"

    .prologue
    .line 183
    if-lez p3, :cond_1

    move v0, p3

    .line 184
    .local v0, BUFFER_SIZE:I
    :goto_0
    if-lez p4, :cond_2

    move v1, p4

    .line 186
    .local v1, EDGE_SIZE:I
    :goto_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_3

    .line 187
    :cond_0
    const/4 v9, 0x0

    .line 201
    :goto_2
    return v9

    .line 183
    .end local v0           #BUFFER_SIZE:I
    .end local v1           #EDGE_SIZE:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    .restart local v0       #BUFFER_SIZE:I
    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    .line 189
    .restart local v1       #EDGE_SIZE:I
    :cond_3
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 190
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 192
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    add-int v8, v9, v10

    .line 193
    .local v8, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    add-int v3, v9, v10

    .line 194
    .local v3, height:I
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 195
    .local v5, location:[I
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 196
    const/4 v9, 0x0

    aget v9, v5, v9

    sub-int v4, v9, v0

    .line 197
    .local v4, left:I
    const/4 v9, 0x1

    aget v9, v5, v9

    sub-int v7, v9, v0

    .line 198
    .local v7, top:I
    add-int v6, v4, v8

    .line 199
    .local v6, right:I
    add-int v2, v7, v3

    .line 201
    .local v2, bottom:I
    if-le p2, v2, :cond_6

    add-int v9, v2, v1

    if-lt p2, v9, :cond_a

    :cond_6
    sub-int v9, v7, v1

    if-le p2, v9, :cond_7

    if-lt p2, v7, :cond_a

    .line 202
    :cond_7
    sub-int v9, v4, v1

    if-le p1, v9, :cond_8

    if-lt p1, v4, :cond_a

    :cond_8
    if-le p1, v6, :cond_9

    add-int v9, v6, v1

    .line 201
    if-lt p1, v9, :cond_a

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public static setAlphaForView(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "alpha"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 150
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/util/Tools;->startUcBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/util/Tools;->startUriActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startHuoYanExpressActivity(Landroid/content/Context;Lcom/etao/kakalib/express/ExpressResult;)V
    .locals 3
    .parameter "context"
    .parameter "expressResult"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etao/kakalib/express/KakaLibExpressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "section"

    iget-object v2, p1, Lcom/etao/kakalib/express/ExpressResult;->stepInfo:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string v1, "company"

    iget-object v2, p1, Lcom/etao/kakalib/express/ExpressResult;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "expressno"

    iget-object v2, p1, Lcom/etao/kakalib/express/ExpressResult;->mExpressCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static startTaobaoClient(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, mIntent:Landroid/content/Intent;
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    const-string v1, "\u672a\u5b89\u88c5\u6b64\u5e94\u7528\u7a0b\u5e8f"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startUcBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v1, mIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "com.UCMobile.main.UCMobile"

    .line 53
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public static startUriActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public static startUrlPreferTaobao(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    const/16 v1, 0x57

    invoke-static {}, Lcom/alibaba/adi/collie/util/Tools;->getTaobaoVersionCode()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 77
    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
