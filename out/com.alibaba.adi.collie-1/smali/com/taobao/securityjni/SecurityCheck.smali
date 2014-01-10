.class public Lcom/taobao/securityjni/SecurityCheck;
.super Ljava/lang/Object;
.source "SecurityCheck.java"


# static fields
.field private static final P_NAME_CHECK:Ljava/lang/String; = "SecurityCheck"


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->context:Landroid/content/ContextWrapper;

    .line 29
    iput-object p1, p0, Lcom/taobao/securityjni/SecurityCheck;->context:Landroid/content/ContextWrapper;

    .line 30
    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/SecurityCheck;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    .line 82
    return-void
.end method

.method private native getCheckSignatureNative(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "timeStamp"

    .prologue
    .line 48
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    .line 49
    .local v0, ctx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 2
    .parameter "timeStamp"
    .parameter "dataCtx"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/taobao/securityjni/SecurityCheck;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestResult(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignatureNative(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, ep:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "getCheckSignature"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v0           #ep:Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .local v0, ep:Ljava/lang/Throwable;
    const-string v1, "getCheckSignature"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
