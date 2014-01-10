.class public Lcom/taobao/android/sso/SsoManager;
.super Ljava/lang/Object;
.source "SsoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;,
        Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
    }
.end annotation


# static fields
.field private static final KResultWaitingTimeout:J = 0xfL

.field private static final LOG_TIP_FOR_INIT_FAILURE:Ljava/lang/String; = "\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

.field private static final PID_ADDACCOUNT:Ljava/lang/String; = "REPORTPID_ADDACCOUNT_CONFIG"

.field private static final PID_GETAUTHTOKEN:Ljava/lang/String; = "REPORTPID_GETAUTHTOKEN_CONFIG"

.field private static final PID_REPORT_CONFIG_NOT_READ:I = -0x2

.field private static final PID_REPORT_CONFIG_UNKNOW:I = -0x1

.field private static final PID_REPORT_NEED:I = 0x0

.field private static final PID_REPORT_NOT_NEED:I = 0x1

.field private static final RETRY_TIME:I = 0x1

.field private static final SSO_REPORTPID_CONFIG:Ljava/lang/String; = "SSO_REPORTPID_CONFIG"

.field private static final TAG:Ljava/lang/String; = "SSO"

.field private static final VERSION_CODE_KEY:Ljava/lang/String; = "com.taobao.android.sso.Version"

.field private static mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

.field private static sDefaultAccountType:Ljava/lang/String;

.field private static sIsNeedPid4AddAccount:I

.field private static sIsNeedPid4GetAuthToken:I

.field private static sLocalEnabled:Z

.field static sLocalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 72
    sput v0, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    .line 73
    sput v0, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    .line 729
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static UpgradeForVersion1(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, account:Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 598
    .local v8, addTmpAccount:Z
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v7

    .line 599
    .local v7, accounts:[Landroid/accounts/Account;
    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    .line 602
    :cond_0
    const-string v0, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string v2, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string v5, "dummy"

    invoke-static {p0, v0, v2, v5, v4}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 603
    const/4 v8, 0x1

    .line 605
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v3, options:Landroid/os/Bundle;
    const-string v0, "request"

    const-string v2, "abdicate"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    const-string v0, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    if-nez v1, :cond_2

    .line 610
    const/4 v0, 0x0

    aget-object v1, v7, v0

    .line 611
    :cond_2
    const/4 v10, 0x0

    .line 612
    .local v10, retry:I
    const/4 v9, 0x0

    .line 613
    .local v9, result:Landroid/os/Bundle;
    :goto_0
    if-le v10, v11, :cond_5

    .line 621
    :cond_3
    if-eqz v8, :cond_4

    .line 624
    invoke-static {p0, v1}, Lcom/taobao/android/sso/SsoManager;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    .line 627
    :cond_4
    if-eqz v9, :cond_6

    const-string v0, "intent"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 628
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string v2, "upgrade exception"

    invoke-direct {v0, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, ""

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #result:Landroid/os/Bundle;
    check-cast v9, Landroid/os/Bundle;

    .line 615
    .restart local v9       #result:Landroid/os/Bundle;
    const-string v0, "errorCode"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 616
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 630
    :cond_6
    invoke-static {v9}, Lcom/taobao/android/sso/SsoManager;->convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 631
    return-object v9
.end method

.method public static addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 16
    .parameter "context"
    .parameter "accountName"
    .parameter "maskName"
    .parameter "tokenType"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p4, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/taobao/android/sso/SsoManager;->checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 242
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v5, options:Landroid/os/Bundle;
    if-eqz p4, :cond_2

    .line 244
    const-string v2, "authtoken"

    move-object/from16 v0, p4

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    if-eqz p2, :cond_3

    .line 248
    const-string v2, "authAccount"

    move-object/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "accounts"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 253
    .local v1, am:Landroid/accounts/AccountManager;
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v12

    .line 254
    .local v12, randomToken:I
    const-string v2, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v2, "token"

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v2, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v2, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const/4 v14, 0x0

    .line 260
    .local v14, retry:I
    const/4 v13, 0x0

    .line 261
    .local v13, result:Landroid/os/Bundle;
    :goto_2
    const/4 v2, 0x1

    if-le v14, v2, :cond_4

    .line 277
    :goto_3
    invoke-static {v13}, Lcom/taobao/android/sso/SsoManager;->convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 279
    const-string v2, "authAccount"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, name:Ljava/lang/String;
    const-string v2, "accountType"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, type:Ljava/lang/String;
    if-eqz v11, :cond_1

    if-nez v15, :cond_6

    :cond_1
    new-instance v2, Landroid/accounts/AuthenticatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v1           #am:Landroid/accounts/AccountManager;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #randomToken:I
    .end local v13           #result:Landroid/os/Bundle;
    .end local v14           #retry:I
    .end local v15           #type:Ljava/lang/String;
    :cond_2
    const-string v2, "empty"

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 250
    :cond_3
    const-string v2, "authAccount"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .restart local v1       #am:Landroid/accounts/AccountManager;
    .restart local v12       #randomToken:I
    .restart local v13       #result:Landroid/os/Bundle;
    .restart local v14       #retry:I
    :cond_4
    new-instance v10, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;

    invoke-direct {v10}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;-><init>()V

    .line 263
    .local v10, conn:Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
    move-object/from16 v0, p0

    invoke-static {v0, v10, v12}, Lcom/taobao/android/sso/SsoManager;->reportPid4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z

    .line 265
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/android/sso/SsoManager;->waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    move-object v13, v0

    .line 266
    const-string v2, "errorCode"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 268
    add-int/lit8 v14, v14, 0x1

    .line 273
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_3

    .line 272
    :catchall_0
    move-exception v2

    .line 273
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    .line 274
    throw v2

    .line 282
    .end local v10           #conn:Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v15       #type:Ljava/lang/String;
    :cond_6
    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v11, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v9, account:Landroid/accounts/Account;
    return-object v9
.end method

.method private static checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 13
    .parameter "context"
    .parameter "accountType"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 530
    sget v8, Lcom/taobao/android/sso/SsoManager;->sLocalVersion:I

    if-nez v8, :cond_1

    .line 532
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getLocalAuthenticationServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 533
    .local v6, service_info:Landroid/content/pm/ServiceInfo;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.taobao.android.sso.Version"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/taobao/android/sso/SsoManager;->sLocalVersion:I

    .line 534
    sget v8, Lcom/taobao/android/sso/SsoManager;->sLocalVersion:I

    if-nez v8, :cond_0

    .line 535
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "com.taobao.android.sso.Version is not defined in meta-data of authentication service.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 536
    :cond_0
    iget-boolean v8, v6, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v8, :cond_3

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    sput-boolean v8, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    .line 540
    .end local v6           #service_info:Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getActiveAuthenticator(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 541
    .local v0, active_authenticator:Landroid/accounts/AuthenticatorDescription;
    if-nez v0, :cond_5

    .line 542
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->setLocalAuthenticatorState(Landroid/content/Context;Z)V

    .line 543
    if-nez p2, :cond_4

    move v9, v10

    .line 592
    :cond_2
    :goto_1
    return v9

    .end local v0           #active_authenticator:Landroid/accounts/AuthenticatorDescription;
    .restart local v6       #service_info:Landroid/content/pm/ServiceInfo;
    :cond_3
    move v8, v10

    .line 536
    goto :goto_0

    .line 544
    .end local v6           #service_info:Landroid/content/pm/ServiceInfo;
    .restart local v0       #active_authenticator:Landroid/accounts/AuthenticatorDescription;
    :cond_4
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->waitAuthenticator(Landroid/content/Context;)V

    .line 545
    sput-boolean v9, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    goto :goto_1

    .line 547
    :cond_5
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 548
    sput-boolean v9, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    goto :goto_1

    .line 553
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 555
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v8, Lcom/taobao/android/sso/SsoManager;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Whitelist not set yet for account type: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :catch_0
    move-exception v8

    .line 562
    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.accounts.AccountAuthenticator"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 563
    .local v3, filter:Landroid/content/Intent;
    const/16 v8, 0x80

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 564
    .local v1, current:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 565
    .local v2, current_version:I
    if-eqz v1, :cond_b

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_8

    .line 566
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.taobao.android.sso.Version"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 567
    :cond_8
    new-instance v8, Landroid/accounts/AuthenticatorException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The current account authenticator installed by "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is incompatible with SSO authenticator."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 567
    invoke-direct {v8, v9}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 556
    .end local v1           #current:Landroid/content/pm/ResolveInfo;
    .end local v2           #current_version:I
    .end local v3           #filter:Landroid/content/Intent;
    :cond_9
    :try_start_1
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v4, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v7, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 557
    .local v7, signatures:[Landroid/content/pm/Signature;
    if-eqz v7, :cond_a

    sget-object v8, Lcom/taobao/android/sso/SsoManager;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-virtual {v8, v7}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->match([Landroid/content/pm/Signature;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_a
    new-instance v8, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;

    const-string v11, "sso service verify whitelist failed"

    invoke-direct {v8, v11}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 569
    .end local v7           #signatures:[Landroid/content/pm/Signature;
    .restart local v1       #current:Landroid/content/pm/ResolveInfo;
    .restart local v2       #current_version:I
    .restart local v3       #filter:Landroid/content/Intent;
    :cond_b
    sget v8, Lcom/taobao/android/sso/SsoManager;->sLocalVersion:I

    if-ge v2, v8, :cond_f

    .line 571
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->setLocalAuthenticatorState(Landroid/content/Context;Z)V

    .line 573
    const/4 v5, 0x0

    .line 575
    .local v5, ret:Landroid/os/Bundle;
    if-ne v2, v9, :cond_d

    .line 577
    :try_start_2
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->UpgradeForVersion1(Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 584
    :goto_2
    if-nez v5, :cond_c

    .line 585
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->setLocalAuthenticatorState(Landroid/content/Context;Z)V

    .line 587
    :cond_c
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->waitAuthenticator(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 580
    :cond_d
    :try_start_3
    const-string v8, "abdicate"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v8, v11, v12}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 582
    goto :goto_2

    :catchall_0
    move-exception v8

    .line 584
    if-nez v5, :cond_e

    .line 585
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->setLocalAuthenticatorState(Landroid/content/Context;Z)V

    .line 586
    :cond_e
    throw v8

    .line 588
    .end local v5           #ret:Landroid/os/Bundle;
    :cond_f
    sget-boolean v8, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    if-eqz v8, :cond_2

    .line 589
    invoke-static {p0, v10}, Lcom/taobao/android/sso/SsoManager;->setLocalAuthenticatorState(Landroid/content/Context;Z)V

    .line 590
    sput-boolean v10, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    goto/16 :goto_1
.end method

.method private static convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
        }
    .end annotation

    .prologue
    .line 521
    const-string v1, "errorCode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "errorMessage"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 522
    :cond_0
    const-string v1, "errorCode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, error_code:I
    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    new-instance v1, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;

    const-string v2, "errorMessage"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_1
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v2, "errorMessage"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getAccountTypeFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 698
    .local v0, eventType:I
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 699
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "account-authenticator"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid xml"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    .end local v1           #tagName:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 701
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_1
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "accountType"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static getActiveAuthenticator(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .parameter "context"

    .prologue
    .line 644
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, type:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 648
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 645
    :cond_1
    aget-object v0, v3, v2

    .line 646
    .local v0, authenticator:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 645
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 683
    sget-object v4, Lcom/taobao/android/sso/SsoManager;->sDefaultAccountType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 684
    :try_start_0
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getLocalAuthenticationServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 685
    .local v2, service_info:Landroid/content/pm/ServiceInfo;
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 686
    .local v3, service_xml:I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 687
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/sso/SsoManager;->getAccountTypeFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/android/sso/SsoManager;->sDefaultAccountType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v1           #resources:Landroid/content/res/Resources;
    .end local v2           #service_info:Landroid/content/pm/ServiceInfo;
    .end local v3           #service_xml:I
    :goto_0
    return-object v4

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed to parse /res/xml/authenticator.xml\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 692
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcom/taobao/android/sso/SsoManager;->sDefaultAccountType:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getLocalAuthenticationServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .parameter "context"

    .prologue
    .line 634
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    .local v0, comp:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x280

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 640
    .local v2, service_info:Landroid/content/pm/ServiceInfo;
    return-object v2

    .line 637
    .end local v2           #service_info:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 638
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authentication service not found.\nHave you set \"manifestmerger.enabled=true\" in your \"project.properties\"?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "authToken"

    .prologue
    .line 196
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static peekToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "account"
    .parameter "tokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lcom/taobao/android/sso/SsoManager;->checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 137
    .local v1, am:Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, options:Landroid/os/Bundle;
    const-string v2, "peek"

    invoke-virtual {v4, v2, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v10

    .line 140
    .local v10, randomToken:I
    const-string v2, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v2, "token"

    invoke-virtual {v4, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v2, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v2, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const/4 v12, 0x0

    .line 145
    .local v12, retry:I
    const/4 v11, 0x0

    .line 146
    .local v11, result:Landroid/os/Bundle;
    :goto_1
    if-le v12, v13, :cond_1

    .line 168
    :goto_2
    invoke-static {v11}, Lcom/taobao/android/sso/SsoManager;->convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 170
    const-string v2, "authtoken"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_1
    new-instance v9, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;

    invoke-direct {v9}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;-><init>()V

    .line 148
    .local v9, conn:Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
    invoke-static {p0, v9, v10}, Lcom/taobao/android/sso/SsoManager;->reportPid4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z

    .line 150
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/android/sso/SsoManager;->waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    move-object v11, v0

    .line 152
    if-eqz v11, :cond_2

    const-string v2, "intent"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 153
    const-string v2, "authAccount"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "peek-token"

    move-object/from16 v0, p2

    invoke-static {p0, v2, v0, v4}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 155
    const-string v2, "token"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, authToken:Ljava/lang/String;
    const-string v2, "authtoken"

    invoke-virtual {v11, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v8           #authToken:Ljava/lang/String;
    :cond_2
    const-string v2, "errorCode"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v13, :cond_3

    .line 160
    add-int/lit8 v12, v12, 0x1

    .line 165
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_2

    .line 164
    :catchall_0
    move-exception v2

    .line 165
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    .line 166
    throw v2
.end method

.method private static relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V
    .locals 8
    .parameter "context"
    .parameter "conn"

    .prologue
    const/4 v7, 0x1

    .line 365
    sget v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    if-ne v6, v7, :cond_0

    .line 404
    :goto_0
    return-void

    .line 368
    :cond_0
    sget v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 372
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 373
    .local v4, reply:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 375
    .local v1, data:Landroid/os/Parcel;
    if-eqz v0, :cond_1

    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    const/4 v6, 0x1

    new-array v5, v6, [Z

    .line 378
    .local v5, state:[Z
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 379
    const-string v6, "SSO_REPORTPID_CONFIG"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 381
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x0

    aget-boolean v6, v5, v6

    if-eqz v6, :cond_3

    .line 382
    const-string v6, "SSO"

    const-string v7, "accountmanager has pid in AddAccount"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v6, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    const/4 v6, 0x1

    sput v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    .line 390
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_4

    .line 391
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :cond_1
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 403
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #reply:Landroid/os/Parcel;
    :cond_2
    :goto_3
    invoke-static {p0, p1}, Lcom/taobao/android/sso/SsoManager;->releasePidReporter(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_0

    .line 386
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #reply:Landroid/os/Parcel;
    .restart local v5       #state:[Z
    :cond_3
    :try_start_1
    const-string v6, "SSO"

    const-string v7, "accountmanager does not have pid in AddAccount"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v6, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    const/4 v6, 0x0

    sput v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 395
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 393
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #state:[Z
    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 397
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :catchall_0
    move-exception v6

    .line 398
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v6
.end method

.method private static relReporter4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V
    .locals 8
    .parameter "context"
    .parameter "conn"

    .prologue
    const/4 v7, 0x1

    .line 407
    sget v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    if-ne v6, v7, :cond_0

    .line 446
    :goto_0
    return-void

    .line 410
    :cond_0
    sget v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 413
    invoke-virtual {p1}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 414
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 415
    .local v4, reply:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, data:Landroid/os/Parcel;
    if-eqz v0, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    const/4 v6, 0x1

    new-array v5, v6, [Z

    .line 420
    .local v5, state:[Z
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 421
    const-string v6, "SSO_REPORTPID_CONFIG"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 423
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x0

    aget-boolean v6, v5, v6

    if-eqz v6, :cond_3

    .line 424
    const-string v6, "SSO"

    const-string v7, "accountmanager has pid in GetAuthToken"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v6, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const/4 v6, 0x1

    sput v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    .line 432
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_4

    .line 433
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :cond_1
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #reply:Landroid/os/Parcel;
    :cond_2
    :goto_3
    invoke-static {p0, p1}, Lcom/taobao/android/sso/SsoManager;->releasePidReporter(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_0

    .line 428
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #reply:Landroid/os/Parcel;
    .restart local v5       #state:[Z
    :cond_3
    :try_start_1
    const-string v6, "SSO"

    const-string v7, "accountmanager does not have pid in GetAuthToken"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v6, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 430
    const/4 v6, 0x0

    sput v6, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 437
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :catch_0
    move-exception v2

    .line 438
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 435
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #state:[Z
    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 439
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #state:[Z
    :catchall_0
    move-exception v6

    .line 440
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v6
.end method

.method private static releasePidReporter(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V
    .locals 5
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 450
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getActiveAuthenticator(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 451
    .local v0, active_authenticator:Landroid/accounts/AuthenticatorDescription;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 457
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-class v4, Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "SSO"

    const-string v4, "pid reporter has not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/sso/SsoManager;->waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static reportPid(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z
    .locals 10
    .parameter "context"
    .parameter "conn"
    .parameter "randomToken"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 325
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v4, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getActiveAuthenticator(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 328
    .local v0, active_authenticator:Landroid/accounts/AuthenticatorDescription;
    if-eqz v0, :cond_0

    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v6, v7

    .line 359
    :goto_0
    return v6

    .line 330
    :cond_1
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-class v9, Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v4, p1, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 335
    .local v5, reply:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 338
    .local v2, data:Landroid/os/Parcel;
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 339
    .local v1, binder:Landroid/os/IBinder;
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    if-eqz v1, :cond_3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v1, v8, v2, v5, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    .line 351
    :try_start_2
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 356
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #data:Landroid/os/Parcel;
    .end local v5           #reply:Landroid/os/Parcel;
    :catch_0
    move-exception v3

    .line 357
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "SSO"

    const-string v8, "pid reporter failed"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e:Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    move v6, v7

    .line 359
    goto :goto_0

    .line 348
    .restart local v2       #data:Landroid/os/Parcel;
    .restart local v5       #reply:Landroid/os/Parcel;
    :catch_1
    move-exception v3

    .line 349
    .local v3, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    :try_start_4
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 350
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 351
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v6

    .line 351
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private static reportPid4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z
    .locals 4
    .parameter "context"
    .parameter "conn"
    .parameter "randomToken"

    .prologue
    const/4 v0, 0x1

    .line 296
    sget v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 297
    const-string v1, "SSO_REPORTPID_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "REPORTPID_ADDACCOUNT_CONFIG"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    .line 299
    :cond_0
    sget v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4AddAccount:I

    if-ne v1, v0, :cond_1

    .line 303
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/taobao/android/sso/SsoManager;->reportPid(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static reportPid4GetAuthToken(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z
    .locals 4
    .parameter "context"
    .parameter "conn"
    .parameter "randomToken"

    .prologue
    const/4 v0, 0x1

    .line 308
    sget v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 309
    const-string v1, "SSO_REPORTPID_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "REPORTPID_GETAUTHTOKEN_CONFIG"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    .line 311
    :cond_0
    sget v1, Lcom/taobao/android/sso/SsoManager;->sIsNeedPid4GetAuthToken:I

    if-ne v1, v0, :cond_1

    .line 315
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/taobao/android/sso/SsoManager;->reportPid(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13
    .parameter "context"
    .parameter "request"
    .parameter "tokenType"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    .line 654
    .restart local p3
    :cond_0
    const-string v1, "request"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v10

    .line 657
    .local v10, randomToken:I
    const-string v1, "agent_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 658
    const-string v1, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    const-string v1, "callerPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const-string v1, "callerUid"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const/4 v12, 0x0

    .line 662
    .local v12, retry:I
    const/4 v11, 0x0

    .line 663
    .local v11, result:Landroid/os/Bundle;
    :goto_0
    const/4 v1, 0x1

    if-le v12, v1, :cond_1

    .line 678
    :goto_1
    invoke-static {v11}, Lcom/taobao/android/sso/SsoManager;->convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 679
    return-object v11

    .line 664
    :cond_1
    new-instance v9, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;

    invoke-direct {v9}, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;-><init>()V

    .line 665
    .local v9, conn:Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
    invoke-static {p0, v9, v10}, Lcom/taobao/android/sso/SsoManager;->reportPid4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;I)Z

    .line 667
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/android/sso/SsoManager;->waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v11, v0

    .line 668
    const-string v1, "errorCode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 670
    add-int/lit8 v12, v12, 0x1

    .line 675
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_0

    .line 667
    :cond_2
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 675
    :cond_3
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    goto :goto_1

    .line 674
    :catchall_0
    move-exception v1

    .line 675
    invoke-static {p0, v9}, Lcom/taobao/android/sso/SsoManager;->relReporter4AddAccount(Landroid/content/Context;Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;)V

    .line 676
    throw v1
.end method

.method public static revealActualNames(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 6
    .parameter "context"
    .parameter "accounts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, accountType:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcom/taobao/android/sso/SsoManager;->checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    :goto_0
    return-object v4

    .line 114
    :cond_0
    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    .line 115
    .local v1, account_names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_1

    .line 116
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v3, options:Landroid/os/Bundle;
    const-string v5, "accounts"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    const-string v5, "reveal-actual-name"

    invoke-static {p0, v5, v4, v3}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    .line 115
    .end local v3           #options:Landroid/os/Bundle;
    :cond_1
    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static setLocalAuthenticatorState(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 706
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/taobao/android/sso/internal/AuthenticationService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 708
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    move v2, v3

    .line 709
    .local v2, state:I
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 710
    return-void

    .line 708
    .end local v2           #state:I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static updateToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "tokenType"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/taobao/android/sso/SsoManager;->checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, options:Landroid/os/Bundle;
    const-string v1, "authtoken"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "authAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "update-token"

    invoke-static {p0, v1, p2, v0}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;J)Z
    .locals 10
    .parameter "context"
    .parameter "signatures"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 214
    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getDefaultAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, accountType:Ljava/lang/String;
    sget-object v7, Lcom/taobao/android/sso/SsoManager;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    if-nez v7, :cond_0

    new-instance v7, Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/taobao/android/sso/internal/SignatureWhitelist;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/taobao/android/sso/SsoManager;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    .line 216
    :cond_0
    sget-object v7, Lcom/taobao/android/sso/SsoManager;->mWhitelist:Lcom/taobao/android/sso/internal/SignatureWhitelist;

    invoke-virtual {v7, p1, p2, p3}, Lcom/taobao/android/sso/internal/SignatureWhitelist;->update([Landroid/content/pm/Signature;J)Z

    move-result v5

    .line 217
    .local v5, updated:Z
    invoke-static {p0, v0, v6}, Lcom/taobao/android/sso/SsoManager;->checkPrerequisite(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 227
    .end local v5           #updated:Z
    :cond_1
    :goto_0
    return v5

    .line 218
    .restart local v5       #updated:Z
    :cond_2
    sget-boolean v7, Lcom/taobao/android/sso/SsoManager;->sLocalEnabled:Z

    if-nez v7, :cond_1

    .line 219
    const-string v7, "whitelist-timestamp"

    invoke-static {p0, v7, v9, v9}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 220
    .local v2, result:Landroid/os/Bundle;
    const-string v7, "timestamp"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 221
    .local v3, stored_timestamp:J
    cmp-long v7, p2, v3

    if-gtz v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 223
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v1, options:Landroid/os/Bundle;
    const-string v6, "signatures"

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    const-string v6, "timestamp"

    invoke-virtual {v1, v6, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    const-string v6, "update-whitelist"

    invoke-static {p0, v6, v9, v1}, Lcom/taobao/android/sso/SsoManager;->requestSpecial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 227
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static waitAuthenticator(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 714
    const-wide/16 v2, 0x40

    .local v2, spin_interval:J
    const-wide/16 v4, 0x3a98

    .line 715
    .local v4, timeout:J
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, pkg:Ljava/lang/String;
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    invoke-static {p0}, Lcom/taobao/android/sso/SsoManager;->getActiveAuthenticator(Landroid/content/Context;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .local v0, active:Landroid/accounts/AuthenticatorDescription;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 723
    .end local v0           #active:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    return-void

    .line 718
    .restart local v0       #active:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const-string v6, "SSO"

    const-string v7, "Waiting for authenticator..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-wide/16 v6, 0x3e8

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    .line 720
    :cond_2
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_1
    sub-long/2addr v4, v2

    goto :goto_0

    .line 720
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static waitResult(Landroid/accounts/AccountManagerFuture;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/accounts/AccountManagerFuture",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    .local p0, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<TT;>;"
    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, result:Ljava/lang/Object;,"TT;"
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 511
    check-cast v1, Landroid/os/Bundle;

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 515
    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/taobao/android/sso/SsoManager;->convertErrorToException(Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method
