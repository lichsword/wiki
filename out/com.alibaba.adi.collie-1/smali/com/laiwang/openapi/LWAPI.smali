.class public Lcom/laiwang/openapi/LWAPI;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Lcom/laiwang/openapi/ILWAPI;


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LWAPI"

.field private static sApp:Landroid/app/Application;

.field private static sLWAPI:Lcom/laiwang/openapi/LWAPI;


# instance fields
.field private appName:Ljava/lang/String;

.field private mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;

.field private mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

.field private mIsLaiwangServiceBinding:Z

.field private mIsLaiwangSupport:Z

.field private mIsLossVersion:Z

.field private mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

.field private mLWAPIClientBroadcastReceiver:Lcom/laiwang/openapi/LWReceiver;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/openapi/LWAPI;->DEBUG:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/laiwang/openapi/LWAPIAccount;

    invoke-direct {v0}, Lcom/laiwang/openapi/LWAPIAccount;-><init>()V

    iput-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    .line 40
    iput-boolean v1, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangSupport:Z

    .line 42
    iput-boolean v1, p0, Lcom/laiwang/openapi/LWAPI;->mIsLossVersion:Z

    .line 64
    new-instance v0, Lcom/laiwang/openapi/IILWAPIChannelProxy;

    invoke-direct {v0}, Lcom/laiwang/openapi/IILWAPIChannelProxy;-><init>()V

    iput-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    .line 65
    new-instance v0, Lcom/laiwang/openapi/IILWAPICallbackImpl;

    invoke-direct {v0}, Lcom/laiwang/openapi/IILWAPICallbackImpl;-><init>()V

    iput-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mMainHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/IILWAPIChannelProxy;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    return-object v0
.end method

.method static synthetic access$1(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/LWAPIAccount;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    return-object v0
.end method

.method static synthetic access$2(Lcom/laiwang/openapi/LWAPI;)Lcom/laiwang/openapi/IILWAPICallbackImpl;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/laiwang/openapi/LWAPI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangSupport:Z

    return-void
.end method

.method static synthetic access$4(Lcom/laiwang/openapi/LWAPI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/laiwang/openapi/LWAPI;->mIsLossVersion:Z

    return-void
.end method

.method public static downloadLaiwangAPK(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "version"

    .prologue
    .line 200
    const v1, 0x20131120

    if-ne p1, v1, :cond_0

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u4eb2,\u4f60\u8fd8\u6ca1\u5b89\u88c5\u6765\u5f80\u5ba2\u6237\u7aef\u54e6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    const-string v1, "\u901f\u901f\u4e0b\u8f7d\u5373\u90012\u5143,\u53c2\u52a0\u5206\u4eab\u8fd8\u53ef\u8d62\u514d\u5355!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/laiwang/openapi/LWAPI$2;

    invoke-direct {v2}, Lcom/laiwang/openapi/LWAPI$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    const-string v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/laiwang/openapi/LWAPI$3;

    invoke-direct {v2}, Lcom/laiwang/openapi/LWAPI$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 224
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v1, "\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7248\u672c\u7684\u6765\u5f80"

    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laiwang/openapi/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "http://m.laiwang.com"

    invoke-static {v1, v2}, Lcom/laiwang/openapi/LWAPIUtils;->invokeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/laiwang/openapi/LWAPI;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/laiwang/openapi/LWAPI;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/laiwang/openapi/LWAPI;->sLWAPI:Lcom/laiwang/openapi/LWAPI;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/laiwang/openapi/LWAPI;

    invoke-direct {v0}, Lcom/laiwang/openapi/LWAPI;-><init>()V

    sput-object v0, Lcom/laiwang/openapi/LWAPI;->sLWAPI:Lcom/laiwang/openapi/LWAPI;

    .line 61
    :cond_0
    sget-object v0, Lcom/laiwang/openapi/LWAPI;->sLWAPI:Lcom/laiwang/openapi/LWAPI;

    return-object v0
.end method

.method private intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "shareType"
    .parameter "iLWMessage"
    .parameter "isDirectIntent"

    .prologue
    .line 99
    const-string v0, "DYNAMIC2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v2, "com.alibaba.android.babylon"

    const-string v3, "com.alibaba.android.babylon.biz.im.activity.LaiwangShareActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/laiwang/openapi/LWAPI;->intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v2, "com.alibaba.android.babylon"

    const-string v3, "com.alibaba.android.babylon.biz.im.activity.RecentIMListActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/laiwang/openapi/LWAPI;->intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)Z

    goto :goto_0
.end method

.method public static prepare(Landroid/app/Application;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 48
    sput-object p0, Lcom/laiwang/openapi/LWAPI;->sApp:Landroid/app/Application;

    .line 50
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public connectLaiwangService(ILjava/lang/String;)Z
    .locals 2
    .parameter "version"
    .parameter "appName"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    new-instance v1, Lcom/laiwang/openapi/LWAPI$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/laiwang/openapi/LWAPI$1;-><init>(Lcom/laiwang/openapi/LWAPI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->bindLaiwangService(Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    .line 135
    iget-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    return v0
.end method

.method protected dialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    const-string v1, "\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/laiwang/openapi/LWAPI$4;

    invoke-direct {v2, p0}, Lcom/laiwang/openapi/LWAPI$4;-><init>(Lcom/laiwang/openapi/LWAPI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/laiwang/openapi/LWAPI$5;

    invoke-direct {v2, p0}, Lcom/laiwang/openapi/LWAPI$5;-><init>(Lcom/laiwang/openapi/LWAPI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method

.method public getApp()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/laiwang/openapi/LWAPI;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)Z
    .locals 11
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "iLWMessage"
    .parameter "isDirectIntent"

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/laiwang/openapi/LWAPIUtils;->getAppPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 149
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_0

    .line 150
    const/4 v9, 0x0

    .line 184
    .end local p4
    :goto_0
    return v9

    .line 153
    .restart local p4
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .local v6, resolveIntent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 158
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 160
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    .line 161
    const/4 v9, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 165
    .local v8, tempPackageName:Ljava/lang/String;
    move-object v1, p3

    .line 166
    .local v1, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.laiwang.recent.im.share.sdk"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz p5, :cond_2

    .line 173
    iget-object v9, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v9}, Lcom/laiwang/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p4, v9}, Lcom/laiwang/openapi/message/IILWMessage;->setAppkey(Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v9}, Lcom/laiwang/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p4, v9}, Lcom/laiwang/openapi/message/IILWMessage;->setSecret(Ljava/lang/String;)V

    .line 175
    check-cast p4, Lcom/laiwang/openapi/message/LWMessage;

    .end local p4
    invoke-static {v3, p4}, Lcom/laiwang/openapi/LWAPIIntent;->makeIntent(Landroid/content/Intent;Lcom/laiwang/openapi/message/LWMessage;)Z

    .line 181
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    const/4 v9, 0x1

    goto :goto_0

    .line 177
    .restart local p4
    :cond_2
    const-string v9, "appToken"

    iget-object v10, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v10}, Lcom/laiwang/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v9, "randomKey"

    iget-object v10, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v10}, Lcom/laiwang/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public isLWAppInstalled()Z
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "com.alibaba.android.babylon"

    invoke-static {v1, v2}, Lcom/laiwang/openapi/LWAPIUtils;->getAppPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 79
    .local v0, isLWAppInstalled:Z
    :goto_0
    sget-boolean v1, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/laiwang/openapi/LwSecurity;->getInstance()Lcom/laiwang/openapi/LwSecurity;

    move-result-object v1

    const-string v2, "com.alibaba.android.babylon"

    invoke-virtual {v1, v2}, Lcom/laiwang/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 82
    :cond_0
    return v0

    .line 78
    .end local v0           #isLWAppInstalled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAPP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "appToken"
    .parameter "secretID"
    .parameter "version"
    .parameter "appName"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v1, p2}, Lcom/laiwang/openapi/LWAPIAccount;->setLwapiToken(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v1, p3}, Lcom/laiwang/openapi/LWAPIAccount;->setLwapiSecret(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;

    iget-object v2, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    invoke-virtual {v1, v2}, Lcom/laiwang/openapi/IILWAPICallbackImpl;->setLWAPIAccount(Lcom/laiwang/openapi/LWAPIAccount;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/laiwang/openapi/LWAPI;->prepare(Landroid/app/Application;)Z

    move-result v0

    .line 92
    .local v0, ret:Z
    invoke-virtual {p0, p4, p5}, Lcom/laiwang/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z

    move-result v0

    .line 93
    iput-object p5, p0, Lcom/laiwang/openapi/LWAPI;->appName:Ljava/lang/String;

    .line 95
    return v0
.end method

.method public registerCallback(Lcom/laiwang/openapi/ILWAPI$IIApiCallback;)V
    .locals 1
    .parameter "iApiCallback"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/openapi/IILWAPICallbackImpl;

    invoke-virtual {v0, p1}, Lcom/laiwang/openapi/IILWAPICallbackImpl;->setIIApiCallback(Lcom/laiwang/openapi/ILWAPI$IIApiCallback;)V

    .line 196
    return-void
.end method

.method public transactData(Landroid/content/Context;Lcom/laiwang/openapi/message/IILWMessage;I)Z
    .locals 12
    .parameter "context"
    .parameter "message"
    .parameter "version"

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    sget-object p1, Lcom/laiwang/openapi/LWAPI;->sApp:Landroid/app/Application;

    .line 233
    :cond_0
    move-object v1, p1

    .line 235
    .local v1, apiContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/laiwang/openapi/LWAPI;->isLWAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-static {p1, p3}, Lcom/laiwang/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    .line 266
    :goto_0
    return v11

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->appName:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/laiwang/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    if-nez v0, :cond_3

    .line 245
    invoke-static {p1, p3}, Lcom/laiwang/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    goto :goto_0

    .line 249
    :cond_3
    sget-boolean v0, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    invoke-virtual {v0}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 250
    :cond_4
    const-string v2, "com.alibaba.android.babylon"

    invoke-interface {p2}, Lcom/laiwang/openapi/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)V

    :cond_5
    :goto_1
    move v11, v5

    .line 266
    goto :goto_0

    .line 253
    :cond_6
    iget-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLaiwangSupport:Z

    if-nez v0, :cond_7

    .line 254
    invoke-static {p1, p3}, Lcom/laiwang/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    goto :goto_0

    .line 258
    :cond_7
    iget-boolean v0, p0, Lcom/laiwang/openapi/LWAPI;->mIsLossVersion:Z

    if-eqz v0, :cond_8

    .line 259
    const-string v0, "\u53ca\u65f6\u66f4\u65b0\u6765\u5f80\u54e6,\u60ca\u559c\u5728\u540e\u9762"

    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/laiwang/openapi/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 261
    :cond_8
    iget-object v2, p0, Lcom/laiwang/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    iget-object v3, p0, Lcom/laiwang/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/openapi/LWAPIAccount;

    move-object v0, p2

    check-cast v0, Lcom/laiwang/openapi/message/LWMessage;

    invoke-virtual {v2, v3, v0, p3}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->transportData(Lcom/laiwang/openapi/LWAPIAccount;Lcom/laiwang/openapi/message/LWMessage;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 262
    const-string v8, "com.alibaba.android.babylon"

    invoke-interface {p2}, Lcom/laiwang/openapi/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    move-object v7, v1

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/laiwang/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/openapi/message/IILWMessage;Z)V

    goto :goto_1
.end method
