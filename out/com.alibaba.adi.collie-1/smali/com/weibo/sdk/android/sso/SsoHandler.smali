.class public Lcom/weibo/sdk/android/sso/SsoHandler;
.super Ljava/lang/Object;
.source "SsoHandler.java"


# static fields
.field private static final AUTH_CODE:I = 0x0

.field private static final AUTH_TOKEN:I = 0x1

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x80cd

.field private static final KEY_EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY_REFRESHTOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_TOKEN:Ljava/lang/String; = "access_token"

.field private static final WEIBO_SIGNATURE:Ljava/lang/String; = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"

.field private static ssoActivityName:Ljava/lang/String;

.field private static ssoPackageName:Ljava/lang/String;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private mAuthActivity:Landroid/app/Activity;

.field private mAuthActivityCode:I

.field private mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

.field private mWeibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoPackageName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoActivityName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V
    .locals 1
    .parameter "activity"
    .parameter "weibo"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    .line 60
    iput-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 78
    iput-object p1, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 80
    invoke-static {p1}, Lcom/weibo/sdk/android/util/Utility;->isWifi(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/weibo/sdk/android/Weibo;->setWifi(Z)V

    .line 81
    new-instance v0, Lcom/weibo/sdk/android/sso/SsoHandler$1;

    invoke-direct {v0, p0}, Lcom/weibo/sdk/android/sso/SsoHandler$1;-><init>(Lcom/weibo/sdk/android/sso/SsoHandler;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/weibo/sdk/android/sso/SsoHandler;)Lcom/weibo/sdk/android/Weibo;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weibo/sdk/android/sso/SsoHandler;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weibo/sdk/android/sso/SsoHandler;)Lcom/weibo/sdk/android/WeiboAuthListener;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    sput-object p0, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    sput-object p0, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoActivityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/weibo/sdk/android/sso/SsoHandler;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivityCode:I

    return v0
.end method

.method static synthetic access$6(Lcom/weibo/sdk/android/sso/SsoHandler;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/weibo/sdk/android/sso/SsoHandler;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private bindRemoteSSOService(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .parameter "activity"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 157
    .local v1, context:Landroid/content/Context;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sina.weibo.remotessoservice"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 162
    .local v0, binded:Z
    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 166
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.sina.weibo.remotessoservice"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    goto :goto_0

    .line 173
    .end local v0           #binded:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sina.weibo.remotessoservice"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.sina.weibo"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 177
    .restart local v0       #binded:Z
    if-nez v0, :cond_0

    .line 181
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.sina.weibo.remotessoservice"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    goto :goto_0
.end method

.method public static isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 194
    .line 195
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/app/ActivityManager;

    .line 197
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    move-object v4, v5

    .line 214
    :cond_0
    :goto_0
    return-object v4

    .line 203
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    move-object v4, v5

    .line 214
    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 205
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 207
    .local v4, serviceName:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".business.RemoteSSOService"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "activity"
    .parameter "applicationId"
    .parameter "permissions"
    .parameter "activityCode"

    .prologue
    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, didSucceed:Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, paName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoPackageName:Ljava/lang/String;

    sget-object v5, Lcom/weibo/sdk/android/sso/SsoHandler;->ssoActivityName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v4, "appKey"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v4, "redirectUri"

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getRedirecturl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "packagename"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "key_hash"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/weibo/sdk/android/util/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    if-eqz p3, :cond_0

    .line 229
    const-string v4, "scope"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/weibo/sdk/android/sso/SsoHandler;->validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    const/4 v4, 0x0

    .line 244
    :goto_0
    return v4

    .line 238
    :cond_1
    :try_start_0
    invoke-virtual {p1, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    iget-object v5, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    move v4, v0

    .line 244
    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 11
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 251
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v5

    .line 255
    :cond_1
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 257
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 258
    const/16 v7, 0x40

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 259
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 260
    .local v4, signature:Landroid/content/pm/Signature;
    const-string v9, "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 261
    const/4 v5, 0x1

    goto :goto_0

    .line 259
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 264
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #signature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public authorize(ILcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V
    .locals 4
    .parameter "activityCode"
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 136
    iput p1, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivityCode:I

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, bindSucced:Z
    iput-object p2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    .line 142
    iget-object v1, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->bindRemoteSSOService(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-virtual {v1, v2, v3}, Lcom/weibo/sdk/android/Weibo;->anthorize(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 119
    const v0, 0x80cd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(ILcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public authorize(Lcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 131
    const v0, 0x80cd

    invoke-virtual {p0, v0, p1, p2}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(ILcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 285
    iget v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivityCode:I

    if-ne p1, v2, :cond_2

    .line 288
    if-ne p2, v6, :cond_8

    .line 291
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, error:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 293
    const-string v2, "error_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_0
    if-eqz v1, :cond_5

    .line 298
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    :cond_1
    const-string v2, "Weibo-authorize"

    const-string v3, "Login canceled by user."

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v2}, Lcom/weibo/sdk/android/WeiboAuthListener;->onCancel()V

    .line 359
    .end local v1           #error:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 304
    .restart local v1       #error:Ljava/lang/String;
    :cond_3
    const-string v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_4
    const-string v2, "Weibo-authorize"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    new-instance v3, Lcom/weibo/sdk/android/WeiboDialogError;

    .line 310
    invoke-direct {v3, v1, p2, v0}, Lcom/weibo/sdk/android/WeiboDialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-interface {v2, v3}, Lcom/weibo/sdk/android/WeiboAuthListener;->onError(Lcom/weibo/sdk/android/WeiboDialogError;)V

    goto :goto_0

    .line 315
    .end local v0           #description:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    if-nez v2, :cond_6

    .line 316
    new-instance v2, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    iput-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    const-string v3, "access_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 320
    const-string v3, "expires_in"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v2, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresIn(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 322
    const-string v3, "refresh_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 324
    const-string v2, "Weibo-authorize"

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login Success! access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    const-string v4, "refresh_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/weibo/sdk/android/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 332
    :cond_7
    const-string v2, "Weibo-authorize"

    .line 333
    const-string v3, "Failed to receive access token by SSO"

    .line 332
    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    iget-object v3, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    .line 336
    iget-object v4, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    const/4 v5, 0x0

    .line 335
    invoke-virtual {v2, v3, v4, v5}, Lcom/weibo/sdk/android/Weibo;->startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V

    goto/16 :goto_0

    .line 341
    .end local v1           #error:Ljava/lang/String;
    :cond_8
    if-nez p2, :cond_2

    .line 344
    if-eqz p3, :cond_9

    .line 345
    const-string v2, "Weibo-authorize"

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    new-instance v3, Lcom/weibo/sdk/android/WeiboDialogError;

    .line 348
    const-string v4, "error"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    const-string v5, "error_code"

    .line 348
    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 350
    const-string v6, "failing_url"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/weibo/sdk/android/WeiboDialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    invoke-interface {v2, v3}, Lcom/weibo/sdk/android/WeiboAuthListener;->onError(Lcom/weibo/sdk/android/WeiboDialogError;)V

    goto/16 :goto_0

    .line 354
    :cond_9
    const-string v2, "Weibo-authorize"

    const-string v3, "Login canceled by user."

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/weibo/sdk/android/sso/SsoHandler;->mAuthDialogListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v2}, Lcom/weibo/sdk/android/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0
.end method
