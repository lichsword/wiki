.class public Lcom/taobao/keep/ProcSyncUtils;
.super Ljava/lang/Object;
.source "ProcSyncUtils.java"


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "procsync"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.taobao.security.proc.sync.account"

.field private static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.taobao.security.proc.backupsync.ProcSyncProvider"

.field private static final SUPPORT_PERIODIC_SYNC:Z = true

.field private static final SYNC_FREQUENCY:J = 0x1518L

.field private static final account:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "procsync"

    const-string v2, "com.taobao.security.proc.sync.account"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateSyncAccount(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 42
    :try_start_0
    const-string v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 44
    .local v0, accmgr:Landroid/accounts/AccountManager;
    sget-object v2, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    const-string v3, "com.taobao.security.proc.backupsync.ProcSyncProvider"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 46
    sget-object v2, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    const-string v3, "com.taobao.security.proc.backupsync.ProcSyncProvider"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 48
    sget-object v2, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    const-string v3, "com.taobao.security.proc.backupsync.ProcSyncProvider"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1518

    invoke-static {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 57
    .end local v0           #accmgr:Landroid/accounts/AccountManager;
    :goto_0
    return-void

    .line 52
    .restart local v0       #accmgr:Landroid/accounts/AccountManager;
    :cond_0
    const-string v2, "CreateSyncAccount"

    const-string v3, "CreateSyncAccount: error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0           #accmgr:Landroid/accounts/AccountManager;
    :catch_0
    move-exception v1

    .line 55
    .local v1, ep:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static TriggerRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, extData:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    sget-object v1, Lcom/taobao/keep/ProcSyncUtils;->account:Landroid/accounts/Account;

    const-string v2, "com.taobao.security.proc.backupsync.ProcSyncProvider"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
