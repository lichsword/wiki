.class public Lcom/taobao/android/ssologin/SsoLogin;
.super Ljava/lang/Object;
.source "SsoLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;,
        Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;
    }
.end annotation


# static fields
.field public static final DEFAULT_USERNAME:Ljava/lang/String; = "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "alibaba:ssotoken"


# instance fields
.field private mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mApplicationContext:Landroid/content/Context;

.field private mIsWhitelistUpdated:Z

.field private mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;

.field private mRemoteRequest:Lcom/taobao/android/ssologin/SsoLoginRequest;

.field private mToken:I


# direct methods
.method public constructor <init>(Lcom/taobao/android/ssologin/SsoLoginRequest;Landroid/content/Context;)V
    .locals 1
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mToken:I

    .line 57
    iput-boolean v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mIsWhitelistUpdated:Z

    .line 70
    iput-object p1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mRemoteRequest:Lcom/taobao/android/ssologin/SsoLoginRequest;

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/taobao/android/ssologin/SsoLogin;)Landroid/accounts/Account;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/taobao/android/ssologin/SsoLogin;)Lcom/taobao/android/ssologin/SsoStatesChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/taobao/android/ssologin/SsoLogin;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mToken:I

    return v0
.end method

.method static synthetic access$3(Lcom/taobao/android/ssologin/SsoLogin;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mToken:I

    return-void
.end method

.method private getDefaultAccount()Landroid/accounts/Account;
    .locals 7

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, accounts:[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/android/sso/SsoManager;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_2

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 127
    :cond_1
    :goto_0
    return-object v2

    .line 119
    :cond_2
    const/4 v2, 0x0

    .line 120
    .local v2, defaultAccount:Landroid/accounts/Account;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 121
    .local v0, account:Landroid/accounts/Account;
    const-string v5, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    move-object v2, v0

    .line 123
    goto :goto_0

    .line 120
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getUserName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 152
    :goto_0
    return-object v2

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, userName:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Landroid/accounts/Account;

    .line 140
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 141
    iget-object v3, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/taobao/android/sso/SsoManager;->revealActualNames(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 143
    .end local v0           #accounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateWhiteList()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-boolean v9, p0, Lcom/taobao/android/ssologin/SsoLogin;->mIsWhitelistUpdated:Z

    if-eqz v9, :cond_0

    .line 106
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v9, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    sget-object v9, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelistV:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 85
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 86
    .local v6, whitelistVersion:J
    sget-object v5, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelist:[Ljava/lang/String;

    .line 87
    .local v5, whitelist:[Ljava/lang/String;
    array-length v9, v5

    new-array v4, v9, [Landroid/content/pm/Signature;

    .line 88
    .local v4, signatures:[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 89
    .local v2, i:I
    array-length v10, v5

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_1

    .line 94
    iget-object v9, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    invoke-static {v9, v4, v6, v7}, Lcom/taobao/android/sso/SsoManager;->updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;J)Z

    move-result v9

    iput-boolean v9, p0, Lcom/taobao/android/ssologin/SsoLogin;->mIsWhitelistUpdated:Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 96
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #i:I
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .end local v4           #signatures:[Landroid/content/pm/Signature;
    .end local v5           #whitelist:[Ljava/lang/String;
    .end local v6           #whitelistVersion:J
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #i:I
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v4       #signatures:[Landroid/content/pm/Signature;
    .restart local v5       #whitelist:[Ljava/lang/String;
    .restart local v6       #whitelistVersion:J
    :cond_1
    :try_start_1
    aget-object v8, v5, v9

    .line 90
    .local v8, wl:Ljava/lang/String;
    new-instance v11, Landroid/content/pm/Signature;

    invoke-direct {v11, v8}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v4, v2
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 99
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #i:I
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .end local v4           #signatures:[Landroid/content/pm/Signature;
    .end local v5           #whitelist:[Ljava/lang/String;
    .end local v6           #whitelistVersion:J
    .end local v8           #wl:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public Login()Lcom/taobao/android/ssologin/SsoLoginResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 169
    new-instance v5, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v5}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v5

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->updateWhiteList()V

    .line 175
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 177
    .local v0, defaultAccount:Landroid/accounts/Account;
    if-nez v0, :cond_2

    .line 207
    :cond_1
    :goto_0
    return-object v2

    .line 181
    :cond_2
    const/4 v3, 0x0

    .line 183
    .local v3, ssoToken:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    const-string v6, "alibaba:ssotoken"

    invoke-static {v5, v0, v6}, Lcom/taobao/android/sso/SsoManager;->peekToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 192
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 193
    :cond_3
    new-instance v5, Landroid/accounts/AuthenticatorException;

    const-string v6, "sso service has err account- empty ssotoken"

    invoke-direct {v5, v6}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_4
    const-string v5, "SsoLogin"

    const-string v6, "peek ssotoken success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v0}, Lcom/taobao/android/ssologin/SsoLogin;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, userName:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    const-string v5, "SsoLogin"

    const-string v6, "peek username success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/taobao/android/ssologin/SsoLogin;->mRemoteRequest:Lcom/taobao/android/ssologin/SsoLoginRequest;

    invoke-interface {v5, v3, v4}, Lcom/taobao/android/ssologin/SsoLoginRequest;->doRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/ssologin/SsoLoginResult;

    move-result-object v2

    .line 207
    .local v2, ret:Lcom/taobao/android/ssologin/SsoLoginResult;
    goto :goto_0
.end method

.method public getLoginUserName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v1}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v1

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->updateWhiteList()V

    .line 324
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 326
    .local v0, defaultAccount:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/taobao/android/ssologin/SsoLogin;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logout(Ljava/lang/String;)V
    .locals 7
    .parameter "nick"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 277
    new-instance v3, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v3}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v3

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->updateWhiteList()V

    .line 285
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 288
    .local v0, defaultAccount:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/taobao/android/ssologin/SsoLogin;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, defaultUserName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/taobao/android/sso/SsoManager;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .line 304
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 307
    .local v2, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public regSsoStateListener(Lcom/taobao/android/ssologin/SsoStatesChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 335
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iput-object p1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    .line 341
    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;-><init>(Lcom/taobao/android/ssologin/SsoLogin;Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;)V

    iput-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public shareSsoToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ssoToken"
    .parameter "nick"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 223
    new-instance v3, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;

    invoke-direct {v3}, Lcom/taobao/android/ssologin/CalledFromWrongThreadException;-><init>()V

    throw v3

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 263
    :cond_1
    :goto_0
    return v3

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->updateWhiteList()V

    .line 232
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 235
    .local v0, defaultAccount:Landroid/accounts/Account;
    if-nez v0, :cond_3

    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    const-string v5, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string v6, "alibaba:ssotoken"

    invoke-static {v4, p2, v5, v6, p1}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    .line 263
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 239
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/android/ssologin/SsoLogin;->getUserName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, defaultUserName:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    const-string v5, "alibaba:ssotoken"

    invoke-static {v4, v0, v5, p1}, Lcom/taobao/android/sso/SsoManager;->updateToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 251
    .end local v1           #defaultUserName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "SsoLogin"

    const-string v5, "share token has been canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    .restart local v1       #defaultUserName:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/taobao/android/sso/SsoManager;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    const-string v5, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string v6, "alibaba:ssotoken"

    invoke-static {v4, p2, v5, v6, p1}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 255
    .end local v1           #defaultUserName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 256
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 260
    .local v2, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegSsoStateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iput-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    .line 356
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    iput-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin;->mAccountChangedReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
