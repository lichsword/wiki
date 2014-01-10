.class public Lcom/taobao/securityjni/SafeDefender;
.super Ljava/lang/Object;
.source "SafeDefender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;,
        Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;,
        Lcom/taobao/securityjni/SafeDefender$SuccessNotify;,
        Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;
    }
.end annotation


# static fields
.field private static final APP_SIGNATURE_GETTED:I = 0x53414647

.field private static final APP_TOKEN_GETTED:I = 0x53414646

.field private static final NETWORK_ERROR:I = 0x53414645


# instance fields
.field private IsGetSuccess:Z

.field private appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

.field private context:Landroid/content/ContextWrapper;

.field private handler:Landroid/os/Handler;

.field private locked:Ljava/lang/Object;

.field private notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

.field private staticData:Lcom/taobao/securityjni/StaticDataStore;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/SafeDefender$SuccessNotify;)V
    .locals 4
    .parameter "context"
    .parameter "callBack"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v3, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    .line 25
    iput-object v3, p0, Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;

    invoke-direct {v2, p0, v3}, Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;-><init>(Lcom/taobao/securityjni/SafeDefender;Lcom/taobao/securityjni/SafeDefender$innerhandleMessage;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->handler:Landroid/os/Handler;

    .line 36
    iput-object v3, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    .line 39
    iput-object v3, p0, Lcom/taobao/securityjni/SafeDefender;->staticData:Lcom/taobao/securityjni/StaticDataStore;

    .line 42
    iput-object p1, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    .line 43
    iput-object p2, p0, Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    .line 45
    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    iget-object v1, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->staticData:Lcom/taobao/securityjni/StaticDataStore;

    .line 46
    return-void
.end method

.method private GetImeiPR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImsiPR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private InitGlobalData()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    .line 179
    return-void
.end method

.method private PublicKeyProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "pubKey"

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0x10

    const/16 v11, 0xa

    .line 193
    if-eqz p1, :cond_0

    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 195
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v2, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 197
    .local v8, readstr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 198
    .local v6, modulus:Ljava/math/BigInteger;
    const/4 v5, 0x0

    .line 200
    .local v5, exponent:Ljava/math/BigInteger;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 201
    new-instance v7, Ljava/math/BigInteger;

    const/16 v10, 0xa

    invoke-direct {v7, v8, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v6           #modulus:Ljava/math/BigInteger;
    .local v7, modulus:Ljava/math/BigInteger;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 204
    new-instance v5, Ljava/math/BigInteger;

    .end local v5           #exponent:Ljava/math/BigInteger;
    const/16 v10, 0xa

    invoke-direct {v5, v8, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .restart local v5       #exponent:Ljava/math/BigInteger;
    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, Hexmodule:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, HexExponent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v3, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    .end local v0           #HexExponent:Ljava/lang/String;
    .end local v1           #Hexmodule:Ljava/lang/String;
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #builder:Ljava/lang/StringBuilder;
    .end local v5           #exponent:Ljava/math/BigInteger;
    .end local v7           #modulus:Ljava/math/BigInteger;
    .end local v8           #readstr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 205
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #exponent:Ljava/math/BigInteger;
    .restart local v6       #modulus:Ljava/math/BigInteger;
    .restart local v8       #readstr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 206
    .end local v5           #exponent:Ljava/math/BigInteger;
    .local v4, ep:Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 205
    .end local v4           #ep:Ljava/io/IOException;
    .end local v6           #modulus:Ljava/math/BigInteger;
    .restart local v7       #modulus:Ljava/math/BigInteger;
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7           #modulus:Ljava/math/BigInteger;
    .restart local v6       #modulus:Ljava/math/BigInteger;
    goto :goto_1
.end method

.method static synthetic access$0(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/StaticDataStore;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->staticData:Lcom/taobao/securityjni/StaticDataStore;

    return-object v0
.end method

.method static synthetic access$1(Lcom/taobao/securityjni/SafeDefender;)Landroid/content/ContextWrapper;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->context:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/taobao/securityjni/SafeDefender;Landroid/os/Message;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/securityjni/SafeDefender;->innerSendMessage(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$3(Lcom/taobao/securityjni/SafeDefender;Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    return-void
.end method

.method static synthetic access$4(Lcom/taobao/securityjni/SafeDefender;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5(Lcom/taobao/securityjni/SafeDefender;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z

    return v0
.end method

.method static synthetic access$6(Lcom/taobao/securityjni/SafeDefender;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z

    return-void
.end method

.method static synthetic access$7(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$SuccessNotify;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->notify:Lcom/taobao/securityjni/SafeDefender$SuccessNotify;

    return-object v0
.end method

.method static synthetic access$8(Lcom/taobao/securityjni/SafeDefender;)Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    return-object v0
.end method

.method private getAppKeyLocked()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-boolean v3, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z

    if-nez v3, :cond_0

    .line 156
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    const-string v3, "getAppKeyLocked"

    const-string v4, "locked.wait()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/taobao/securityjni/SafeDefender;->locked:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/taobao/securityjni/SafeDefender;->IsGetSuccess:Z

    .line 154
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    const-string v2, "getAppKeyLocked"

    const-string v3, "IsGetSuccess = true;"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    if-nez v2, :cond_2

    .line 173
    :cond_1
    :goto_1
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, exp:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0           #exp:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    iget-object v2, v2, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;->pubkey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    iget-object v1, v1, Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;->pubkey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/taobao/securityjni/SafeDefender;->PublicKeyProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getMtopToken(Ljava/lang/String;)V
    .locals 3
    .parameter "userNick"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;-><init>(Lcom/taobao/securityjni/SafeDefender;Ljava/lang/String;Lcom/taobao/securityjni/SafeDefender$GetAppTokenThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private innerSendMessage(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getMtopTokenInfo()Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/securityjni/SafeDefender;->appTokenTransient:Lcom/taobao/securityjni/SafeDefender$MtopTokenInfo;

    return-object v0
.end method

.method public native getSignatureAsyn(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSignatureLocked(Ljava/lang/String;)Ljava/lang/String;
.end method
