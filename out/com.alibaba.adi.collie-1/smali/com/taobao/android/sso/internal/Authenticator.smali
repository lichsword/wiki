.class public Lcom/taobao/android/sso/internal/Authenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "Authenticator.java"


# static fields
.field public static final ACCOUNT_FEATURE_MASK:Ljava/lang/String; = "mask"

.field public static final ERROR_CODE_UNAUTHORIZED:I = 0x65

.field public static final KEY_ACCOUNT_NAMES:Ljava/lang/String; = "accounts"

.field public static final KEY_ACTUAL_NAME:Ljava/lang/String; = "accounts"

.field public static final KEY_CALLER_PID:Ljava/lang/String; = "callerPid"

.field public static final KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final KEY_EMPTY_ACCOUNT:Ljava/lang/String; = "empty"

.field public static final KEY_PEEK_ONLY:Ljava/lang/String; = "peek"

.field public static final KEY_PID:Ljava/lang/String; = "agent_pid"

.field public static final KEY_REQUEST:Ljava/lang/String; = "request"

.field public static final KEY_SIGNATURES:Ljava/lang/String; = "signatures"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final REQ_ABDICATE:Ljava/lang/String; = "abdicate"

.field public static final REQ_PEEK_TOKEN:Ljava/lang/String; = "peek-token"

.field public static final REQ_REVEAL_ACTUAL_NAME:Ljava/lang/String; = "reveal-actual-name"

.field public static final REQ_UPDATE_TOKEN:Ljava/lang/String; = "update-token"

.field public static final REQ_UPDATE_WHITELIST:Ljava/lang/String; = "update-whitelist"

.field public static final REQ_WHITELIST_TIMESTAMP:Ljava/lang/String; = "whitelist-timestamp"

.field private static final USER_DATA_KEY_ACTUAL_NAME:Ljava/lang/String; = "actual-account-name"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-direct {v0, p1}, Lcom/taobao/android/sso/internal/SignatureWhitelist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    .line 73
    return-void
.end method

.method private errorResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "code"
    .parameter "message"

    .prologue
    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method private showNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "ticker"
    .parameter "title"
    .parameter "message"
    .parameter "pendingIntent"

    .prologue
    const v4, 0x108008a

    .line 359
    iget-object v2, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 360
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 361
    .local v0, n:Landroid/app/Notification;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 362
    new-instance v0, Landroid/app/Notification;

    .end local v0           #n:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v4, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 363
    .restart local v0       #n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 384
    return-void

    .line 365
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 366
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 368
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 369
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 370
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 371
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 373
    goto :goto_0

    .line 374
    :cond_1
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 377
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 378
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 379
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 374
    goto :goto_0
.end method

.method private unsupport(Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 255
    const/4 v0, 0x6

    const-string v1, "Unsupported"

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 256
    return-void
.end method

.method private varargs verifyCallerIdentity(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .parameter "options"
    .parameter "permissions"

    .prologue
    .line 194
    const-string v11, "callerPid"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, caller_pid:I
    const-string v11, "callerUid"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 200
    .local v2, caller_uid:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    const/4 v11, -0x1

    if-ne v2, v11, :cond_2

    .line 201
    :cond_0
    const-string v11, "agent_pid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 202
    .local v5, requestPid:I
    const-string v11, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 203
    .local v8, token:I
    sget-object v11, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/android/sso/internal/TokenInfo;

    .line 204
    .local v7, ti:Lcom/taobao/android/sso/internal/TokenInfo;
    if-eqz v7, :cond_2

    .line 205
    iget-object v11, v7, Lcom/taobao/android/sso/internal/TokenInfo;->mTokens:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 206
    .local v9, token_invalidateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_1

    .line 209
    iget v1, v7, Lcom/taobao/android/sso/internal/TokenInfo;->mPid:I

    .line 210
    iget v2, v7, Lcom/taobao/android/sso/internal/TokenInfo;->mUid:I

    .line 212
    :cond_1
    iget-object v11, v7, Lcom/taobao/android/sso/internal/TokenInfo;->mTokens:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 218
    .end local v5           #requestPid:I
    .end local v7           #ti:Lcom/taobao/android/sso/internal/TokenInfo;
    .end local v8           #token:I
    .end local v9           #token_invalidateTime:J
    :cond_2
    const/4 v11, -0x1

    if-eq v2, v11, :cond_3

    const/4 v11, -0x1

    if-ne v1, v11, :cond_4

    .line 220
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v6, result:Landroid/os/Bundle;
    const-string v11, "errorCode"

    const/4 v12, 0x6

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v11, "errorMessage"

    const-string v12, "sso service fetch pid failed"

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v6           #result:Landroid/os/Bundle;
    :goto_0
    return-object v6

    .line 226
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    if-ne v1, v11, :cond_5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-ne v2, v11, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .line 228
    :cond_5
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v11, 0x0

    :goto_1
    if-lt v11, v12, :cond_6

    .line 237
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/taobao/android/sso/internal/Authenticator;->verifySignatures(II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v6, 0x0

    goto :goto_0

    .line 228
    :cond_6
    aget-object v4, p2, v11

    .line 229
    .local v4, permission:Ljava/lang/String;
    const/4 v13, -0x1

    iget-object v14, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 230
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 231
    .restart local v6       #result:Landroid/os/Bundle;
    const-string v11, "errorCode"

    const/16 v12, 0x65

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v11, "errorMessage"

    const-string v12, "lack permissions"

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v6           #result:Landroid/os/Bundle;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 238
    .end local v4           #permission:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 239
    .local v3, e:Ljava/lang/SecurityException;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 240
    .restart local v6       #result:Landroid/os/Bundle;
    const-string v11, "errorCode"

    const/16 v12, 0x65

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v11, "errorMessage"

    const-string v12, "Unsupported"

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifySignatures(II)V
    .locals 11
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 323
    iget-object v6, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 324
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 333
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Identify declined"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 324
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 325
    .local v5, process:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_0

    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, p2, :cond_0

    .line 326
    iget-object v6, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 327
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v7, v6

    .line 328
    .local v3, pkg:Ljava/lang/String;
    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 329
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v9, v10}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->match([Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    return-void

    .line 330
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Identify unknown"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 27
    .parameter "response"
    .parameter "account_type"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"

    .prologue
    .line 78
    const-string v23, "callerPid"

    const/16 v24, -0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const-string v23, "callerUid"

    const/16 v24, -0x1

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    const/16 v23, 0x0

    sput-boolean v23, Lcom/taobao/android/sso/internal/PidGetterService;->sIsAddAccountHasPid:Z

    .line 80
    :cond_1
    const/16 v21, 0x0

    .line 82
    .local v21, token:Ljava/lang/String;
    if-eqz p5, :cond_3

    const-string v23, "authtoken"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 83
    const-string v23, "authtoken"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 84
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "com.taobao.permission.UPDATE_CREDENTIALS"

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/sso/internal/Authenticator;->verifyCallerIdentity(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 85
    .local v19, result:Landroid/os/Bundle;
    if-eqz v19, :cond_3

    .line 189
    .end local v19           #result:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-object v19

    .line 89
    :cond_3
    if-eqz p5, :cond_11

    const-string v23, "request"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, request:Ljava/lang/String;
    if-eqz v18, :cond_11

    .line 90
    const-string v23, "reveal-actual-name"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 91
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 92
    .restart local v19       #result:Landroid/os/Bundle;
    const-string v23, "accounts"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, account_names:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 94
    .local v8, am:Landroid/accounts/AccountManager;
    array-length v0, v6

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v5, v6, v23

    .line 95
    .local v5, account_name:Ljava/lang/String;
    new-instance v25, Landroid/accounts/Account;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "actual-account-name"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, actual_name:Ljava/lang/String;
    if-eqz v7, :cond_4

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 99
    .end local v5           #account_name:Ljava/lang/String;
    .end local v6           #account_names:[Ljava/lang/String;
    .end local v7           #actual_name:Ljava/lang/String;
    .end local v8           #am:Landroid/accounts/AccountManager;
    .end local v19           #result:Landroid/os/Bundle;
    :cond_5
    const-string v23, "update-token"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 101
    const-string v23, "authtoken"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 102
    if-nez v21, :cond_6

    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    .line 103
    :cond_6
    const-string v23, "authAccount"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .restart local v5       #account_name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_7

    .line 105
    const/16 v23, 0x7

    const-string v24, "Empty account name"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/sso/internal/Authenticator;->errorResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    goto/16 :goto_0

    .line 107
    :cond_7
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 109
    .restart local v8       #am:Landroid/accounts/AccountManager;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v8, v4, v0, v1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 111
    .end local v4           #account:Landroid/accounts/Account;
    .end local v5           #account_name:Ljava/lang/String;
    .end local v8           #am:Landroid/accounts/AccountManager;
    :cond_8
    const-string v23, "whitelist-timestamp"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 113
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 114
    .restart local v19       #result:Landroid/os/Bundle;
    const-string v23, "timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->getTimestamp()J

    move-result-wide v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 116
    .end local v19           #result:Landroid/os/Bundle;
    :cond_9
    const-string v23, "update-whitelist"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 118
    const-string v23, "signatures"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 119
    .local v20, signatures:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    if-nez v20, :cond_a

    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "signatures unspecified"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 120
    :cond_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_b

    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 121
    :cond_b
    const-string v23, "timestamp"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 122
    .local v14, new_timestamp:J
    const-wide/16 v23, 0x0

    cmp-long v23, v14, v23

    if-nez v23, :cond_c

    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 123
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    move-object/from16 v24, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/content/pm/Signature;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14, v15}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->update([Landroid/content/pm/Signature;J)Z

    .line 124
    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 125
    .end local v14           #new_timestamp:J
    .end local v20           #signatures:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    :cond_d
    const-string v23, "abdicate"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 127
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-class v24, Lcom/taobao/android/sso/internal/AuthenticationService;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v11, comp:Landroid/content/ComponentName;
    sget-object v23, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 130
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 131
    .end local v11           #comp:Landroid/content/ComponentName;
    :cond_e
    const-string v23, "peek-token"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 133
    .restart local v8       #am:Landroid/accounts/AccountManager;
    const-string v23, "authAccount"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .restart local v5       #account_name:Ljava/lang/String;
    new-instance v23, Landroid/accounts/Account;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, authToken:Ljava/lang/String;
    if-nez v10, :cond_f

    sget-object v19, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 136
    :cond_f
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 137
    .restart local v19       #result:Landroid/os/Bundle;
    const-string v23, "authAccount"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v23, "accountType"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v23, "token"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v5           #account_name:Ljava/lang/String;
    .end local v8           #am:Landroid/accounts/AccountManager;
    .end local v10           #authToken:Ljava/lang/String;
    .end local v19           #result:Landroid/os/Bundle;
    :cond_10
    new-instance v23, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Unknown request: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 143
    .end local v18           #request:Ljava/lang/String;
    :cond_11
    if-eqz p5, :cond_15

    const-string v23, "authAccount"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 146
    .restart local v8       #am:Landroid/accounts/AccountManager;
    const-string v23, "authAccount"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5       #account_name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_12

    .line 148
    const/16 v23, 0x7

    const-string v24, "Empty account name"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/sso/internal/Authenticator;->errorResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    goto/16 :goto_0

    .line 150
    :cond_12
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .restart local v4       #account:Landroid/accounts/Account;
    const/16 v22, 0x0

    .line 152
    .local v22, userdata:Landroid/os/Bundle;
    const-string v23, "accounts"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .restart local v7       #actual_name:Ljava/lang/String;
    if-eqz v7, :cond_13

    .line 154
    new-instance v22, Landroid/os/Bundle;

    .end local v22           #userdata:Landroid/os/Bundle;
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 155
    .restart local v22       #userdata:Landroid/os/Bundle;
    const-string v23, "actual-account-name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_13
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v8, v4, v0, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 159
    if-eqz v21, :cond_14

    .line 160
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v8, v4, v0, v1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_14
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 163
    .restart local v19       #result:Landroid/os/Bundle;
    const-string v23, "authAccount"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v23, "accountType"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v4           #account:Landroid/accounts/Account;
    .end local v5           #account_name:Ljava/lang/String;
    .end local v7           #actual_name:Ljava/lang/String;
    .end local v8           #am:Landroid/accounts/AccountManager;
    .end local v19           #result:Landroid/os/Bundle;
    .end local v22           #userdata:Landroid/os/Bundle;
    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 172
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x40

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 173
    .local v13, info:Landroid/content/pm/PackageInfo;
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_16

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v23

    .line 174
    invoke-virtual/range {v23 .. v23}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "CN=Android Debug"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 175
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 176
    .local v12, host_pkg:Ljava/lang/CharSequence;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v16, notifyIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 178
    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 177
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 179
    .local v9, appIntent:Landroid/app/PendingIntent;
    const-string v23, "SSO Host"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1, v12, v9}, Lcom/taobao/android/sso/internal/Authenticator;->showNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v9           #appIntent:Landroid/app/PendingIntent;
    .end local v12           #host_pkg:Ljava/lang/CharSequence;
    .end local v13           #info:Landroid/content/pm/PackageInfo;
    .end local v16           #notifyIntent:Landroid/content/Intent;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    :cond_16
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sso/internal/Authenticator;->layEasterEgg()V

    .line 186
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 187
    .restart local v19       #result:Landroid/os/Bundle;
    const-string v23, "errorCode"

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v23, "errorMessage"

    const-string v24, "Unsupported"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v19           #result:Landroid/os/Bundle;
    :catch_0
    move-exception v23

    goto :goto_2

    :catch_1
    move-exception v23

    goto :goto_2
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/taobao/android/sso/internal/Authenticator;->unsupport(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 266
    const-string v13, "callerPid"

    const/4 v14, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    const-string v13, "callerUid"

    const/4 v14, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    .line 267
    :cond_0
    const/4 v13, 0x0

    sput-boolean v13, Lcom/taobao/android/sso/internal/PidGetterService;->sIsGetAuthTokenHasPid:Z

    .line 269
    :cond_1
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.taobao.permission.USE_CREDENTIALS"

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v13}, Lcom/taobao/android/sso/internal/Authenticator;->verifyCallerIdentity(Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 270
    .local v10, result:Landroid/os/Bundle;
    if-eqz v10, :cond_2

    move-object v13, v10

    .line 319
    :goto_0
    return-object v13

    .line 272
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 274
    .local v5, am:Landroid/accounts/AccountManager;
    if-eqz p4, :cond_e

    const-string v13, "request"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, request:Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 275
    const-string v13, "reveal-actual-name"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 276
    new-instance v10, Landroid/os/Bundle;

    .end local v10           #result:Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 277
    .restart local v10       #result:Landroid/os/Bundle;
    const-string v13, "accounts"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, account_names:[Ljava/lang/String;
    array-length v14, v3

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v14, :cond_3

    move-object v13, v10

    .line 282
    goto :goto_0

    .line 278
    :cond_3
    aget-object v2, v3, v13

    .line 279
    .local v2, account_name:Ljava/lang/String;
    new-instance v15, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "actual-account-name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, actual_name:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 283
    .end local v2           #account_name:Ljava/lang/String;
    .end local v3           #account_names:[Ljava/lang/String;
    .end local v4           #actual_name:Ljava/lang/String;
    :cond_5
    const-string v13, "update-token"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 285
    const-string v13, "authtoken"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, token:Ljava/lang/String;
    if-nez v12, :cond_6

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Token unspecified"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 287
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1, v12}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    .line 289
    .end local v12           #token:Ljava/lang/String;
    :cond_7
    const-string v13, "whitelist-timestamp"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 291
    new-instance v10, Landroid/os/Bundle;

    .end local v10           #result:Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 292
    .restart local v10       #result:Landroid/os/Bundle;
    const-string v13, "timestamp"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-virtual {v14}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v13, v10

    .line 293
    goto/16 :goto_0

    .line 294
    :cond_8
    const-string v13, "update-whitelist"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 296
    const-string v13, "signatures"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 297
    .local v11, signatures:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    if-nez v11, :cond_9

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "signatures unspecified"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 298
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 299
    :cond_a
    const-string v13, "timestamp"

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 300
    .local v7, new_timestamp:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_b

    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 301
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/android/sso/internal/Authenticator;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/Signature;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    invoke-virtual {v14, v13, v7, v8}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->update([Landroid/content/pm/Signature;J)Z

    .line 302
    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 303
    .end local v7           #new_timestamp:J
    .end local v11           #signatures:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    :cond_c
    const-string v13, "abdicate"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 305
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    const-class v14, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v6, v13, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v6, comp:Landroid/content/ComponentName;
    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v14, v15}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 308
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 309
    .end local v6           #comp:Landroid/content/ComponentName;
    :cond_d
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unknown request: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 313
    .end local v9           #request:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 314
    .restart local v12       #token:Ljava/lang/String;
    if-nez v12, :cond_f

    sget-object v13, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 315
    :cond_f
    new-instance v10, Landroid/os/Bundle;

    .end local v10           #result:Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 316
    .restart local v10       #result:Landroid/os/Bundle;
    const-string v13, "authAccount"

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v13, "accountType"

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v13, "authtoken"

    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v10

    .line 319
    goto/16 :goto_0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "authTokenType"

    .prologue
    .line 338
    const-string v0, "Full access"

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    return-object v0
.end method

.method layEasterEgg()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 343
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 344
    .local v1, matches:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_1

    .line 349
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_0

    .line 350
    const-string v4, "https://github.com/oasisfeng/deagle"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 351
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "We love open source!"

    const-string v6, "Under Construction"

    const-string v7, "Would you like to help us?"

    .line 352
    iget-object v8, p0, Lcom/taobao/android/sso/internal/Authenticator;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    .line 353
    const-string v10, "com.github.mobile"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x800

    .line 352
    invoke-static {v8, v5, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 351
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/taobao/android/sso/internal/Authenticator;->showNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 355
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 344
    :cond_1
    aget-object v0, v6, v4

    .line 345
    .local v0, account:Landroid/accounts/Account;
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 346
    .local v2, t:Ljava/lang/String;
    const-string v8, "com.google"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.twitter.android.auth.login"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.github"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 347
    :cond_2
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method
