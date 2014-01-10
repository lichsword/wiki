.class public Lcom/weibo/sdk/android/Weibo;
.super Ljava/lang/Object;
.source "Weibo.java"


# static fields
.field private static final AUTH_CODE:I = 0x0

.field private static final AUTH_ONCMPLT:I = 0x3e8

.field private static final AUTH_ONRR:I = 0x3e9

.field private static final AUTH_TOKEN:I = 0x1

.field private static final KEY_EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY_REFRESHTOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_TOKEN:Ljava/lang/String; = "access_token"

.field private static final SCOPE_DIRECT_MESSAGES_READ:Ljava/lang/String; = "direct_messages_read"

.field private static final SCOPE_DIRECT_MESSAGES_WRITE:Ljava/lang/String; = "direct_messages_write"

.field private static final SCOPE_EMAIL:Ljava/lang/String; = "email"

.field private static final SCOPE_FOLLOW_APP_OFFICIAL_MICROBLOG:Ljava/lang/String; = "follow_app_official_microblog"

.field private static final SCOPE_FRIENDSHIPS_GROUPS_READ:Ljava/lang/String; = "friendships_groups_read"

.field private static final SCOPE_FRIENDSHIPS_GROUPS_WRITE:Ljava/lang/String; = "friendships_groups_write"

.field private static final SCOPE_STATUSES_TO_ME_READ:Ljava/lang/String; = "statuses_to_me_read"

.field private static URL_OAUTH2_ACCESS_AUTHORIZE:Ljava/lang/String;

.field private static app_key:Ljava/lang/String;

.field private static app_secret:Ljava/lang/String;

.field private static isWifi:Z

.field private static mPackagename:Ljava/lang/String;

.field private static mWeiboInstance:Lcom/weibo/sdk/android/Weibo;

.field private static mkeyHash:Ljava/lang/String;

.field private static redirecturl:Ljava/lang/String;

.field private static scope:Ljava/lang/String;


# instance fields
.field private accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private ct:Landroid/content/Context;

.field private mWeiboHandler:Landroid/os/Handler;

.field private mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "https://open.weibo.cn/oauth2"

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->URL_OAUTH2_ACCESS_AUTHORIZE:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->mWeiboInstance:Lcom/weibo/sdk/android/Weibo;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->scope:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->app_secret:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/weibo/sdk/android/Weibo;->isWifi:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 247
    new-instance v0, Lcom/weibo/sdk/android/Weibo$1;

    invoke-direct {v0, p0}, Lcom/weibo/sdk/android/Weibo$1;-><init>(Lcom/weibo/sdk/android/Weibo;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/Weibo;->mWeiboHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private FtchAccessToken(Ljava/lang/String;)V
    .locals 4
    .parameter "authorization_code"

    .prologue
    .line 179
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 180
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "client_id"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "client_secret"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->app_secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "redirect_uri"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->URL_OAUTH2_ACCESS_AUTHORIZE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/access_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "POST"

    new-instance v3, Lcom/weibo/sdk/android/Weibo$3;

    invoke-direct {v3, p0}, Lcom/weibo/sdk/android/Weibo$3;-><init>(Lcom/weibo/sdk/android/Weibo;)V

    .line 186
    invoke-static {v1, v0, v2, v3}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 226
    return-void
.end method

.method static synthetic access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weibo/sdk/android/Weibo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/Weibo;->FtchAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weibo/sdk/android/Weibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-void
.end method

.method static synthetic access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/sdk/android/Weibo;->handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static getApp_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;
    .locals 3
    .parameter "appKey"
    .parameter "redirectUrl"
    .parameter "aScope"

    .prologue
    .line 70
    const-class v1, Lcom/weibo/sdk/android/Weibo;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Parameter is not complete, please fill complete appkey and redirectUrl."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :cond_0
    :try_start_1
    sget-object v0, Lcom/weibo/sdk/android/Weibo;->mWeiboInstance:Lcom/weibo/sdk/android/Weibo;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v0}, Lcom/weibo/sdk/android/Weibo;-><init>()V

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->mWeiboInstance:Lcom/weibo/sdk/android/Weibo;

    .line 79
    :cond_1
    sput-object p0, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    .line 80
    sput-object p1, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    .line 81
    sput-object p2, Lcom/weibo/sdk/android/Weibo;->scope:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/weibo/sdk/android/Weibo;->mWeiboInstance:Lcom/weibo/sdk/android/Weibo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getRedirecturl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    return-object v0
.end method

.method public static getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/weibo/sdk/android/Weibo;->scope:Ljava/lang/String;

    return-object v0
.end method

.method private handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 2
    .parameter "eventId"
    .parameter "b"
    .parameter "e"

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo;->mWeiboHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void

    .line 233
    :pswitch_0
    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 237
    :pswitch_1
    if-eqz p3, :cond_1

    .line 238
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    :cond_1
    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isWifi()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/weibo/sdk/android/Weibo;->isWifi:Z

    return v0
.end method

.method public static setWifi(Z)V
    .locals 0
    .parameter "isWifi"

    .prologue
    .line 288
    sput-boolean p0, Lcom/weibo/sdk/android/Weibo;->isWifi:Z

    .line 289
    return-void
.end method

.method private startDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 3
    .parameter "context"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 160
    const-string v1, "client_id"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "response_type"

    const-string v2, "code"

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "redirect_uri"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "display"

    const-string v2, "mobile"

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "scope"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->scope:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "packagename"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->mPackagename:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "key_hash"

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->mPackagename:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/weibo/sdk/android/util/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/weibo/sdk/android/Weibo;->URL_OAUTH2_ACCESS_AUTHORIZE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/authorize?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/weibo/sdk/android/util/Utility;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, url:Ljava/lang/String;
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "Error"

    .line 173
    const-string v2, "Application requires permission to access the Internet"

    .line 172
    invoke-static {p1, v1, v2}, Lcom/weibo/sdk/android/util/Utility;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Lcom/weibo/sdk/android/WeiboDialog;

    invoke-direct {v1, p1, v0, p3}, Lcom/weibo/sdk/android/WeiboDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    invoke-virtual {v1}, Lcom/weibo/sdk/android/WeiboDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public anthorize(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 105
    iput-object p2, p0, Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;

    .line 106
    iput-object p1, p0, Lcom/weibo/sdk/android/Weibo;->ct:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo;->ct:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weibo/sdk/android/Weibo;->mPackagename:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo;->ct:Landroid/content/Context;

    invoke-static {v0}, Lcom/weibo/sdk/android/util/Utility;->isWifi(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/weibo/sdk/android/Weibo;->isWifi:Z

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/weibo/sdk/android/Weibo;->startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V

    .line 110
    return-void
.end method

.method public setupConsumerConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"
    .parameter "redirectUrl"

    .prologue
    .line 94
    sput-object p1, Lcom/weibo/sdk/android/Weibo;->app_key:Ljava/lang/String;

    .line 95
    sput-object p2, Lcom/weibo/sdk/android/Weibo;->redirecturl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 126
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 127
    .local v0, params:Lcom/weibo/sdk/android/WeiboParameters;
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 128
    new-instance v1, Lcom/weibo/sdk/android/Weibo$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/weibo/sdk/android/Weibo$2;-><init>(Lcom/weibo/sdk/android/Weibo;ILcom/weibo/sdk/android/WeiboAuthListener;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/weibo/sdk/android/Weibo;->startDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    .line 156
    return-void
.end method
