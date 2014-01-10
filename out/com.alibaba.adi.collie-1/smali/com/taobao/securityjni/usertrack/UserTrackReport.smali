.class public Lcom/taobao/securityjni/usertrack/UserTrackReport;
.super Ljava/lang/Object;
.source "UserTrackReport.java"


# static fields
.field private static final BUILD_VERSION:Ljava/lang/String; = null

.field private static ENABLE_EXP_INFO_OUT:Z = false

.field private static final PAGE_NAME_ALL:Ljava/lang/String; = "SecurityAllData"

.field private static final PAGE_NAME_ERR:Ljava/lang/String; = "SecurityErrorData"

.field private static final PAGE_NAME_EXP:Ljava/lang/String; = "SecurityException"

.field private static final PAGE_NAME_RIT:Ljava/lang/String; = "SecurityRightData"

.field private static final PAGE_NAME_URL:Ljava/lang/String; = "SecurityLoginData"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->getPhoneInformation()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ENABLE_EXP_INFO_OUT:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ReportSecurityErrorInfo(Ljava/lang/String;Ljava/lang/Error;)V
    .locals 5
    .parameter "functionName"
    .parameter "ep"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->innerPrintStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, trace:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, build:Ljava/lang/StringBuilder;
    const-string v3, "---Serious-Error---##"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v3, "check libxx.so for reason"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, "##"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, info:Ljava/lang/String;
    const-string v3, "SecurityException"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p0, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private static ReportSecurityExceptionInfo(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter "functionName"
    .parameter "ep"

    .prologue
    .line 128
    invoke-static {p1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->innerPrintStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, trace:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, build:Ljava/lang/StringBuilder;
    const-string v3, "---Serious-Exception---##"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, info:Ljava/lang/String;
    const-string v3, "SecurityException"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p0, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static ReportSecurityInfoNoPubKeyExtra(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "functionName"
    .parameter "rightStr"
    .parameter "errStr"

    .prologue
    .line 103
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static ReportSecurityRuntimeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "functionName"
    .parameter "throwInfo"

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 38
    .end local p1
    :goto_0
    return-void

    .line 29
    .restart local p1
    :cond_0
    sget-boolean v0, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :cond_1
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 33
    check-cast p1, Ljava/lang/Error;

    .end local p1
    invoke-static {p0, p1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityErrorInfo(Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    .line 35
    .restart local p1
    :cond_2
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-static {p0, p1}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ReportSecurityExceptionInfo(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static varargs ReportSecurityUsefullInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "functionName"
    .parameter "rightStr"
    .parameter "errStr"
    .parameter "publicKey"
    .parameter "extra"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, build:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 51
    const-string v3, "MainData: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    if-eqz p3, :cond_2

    .line 59
    const-string v3, "SecurityData: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-eqz p4, :cond_3

    .line 67
    const-string v3, "Certificate: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    if-eqz p5, :cond_0

    array-length v3, p5

    if-lez v3, :cond_0

    .line 75
    const-string v3, "ExtraData: {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v3, p5

    if-lt v2, v3, :cond_4

    .line 81
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, errorInfo:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 87
    const-string v3, "SecurityAllData"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p1, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_4
    return-void

    .line 53
    .end local v1           #errorInfo:Ljava/lang/String;
    :cond_1
    const-string v3, "MainData: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_2
    const-string v3, "SecurityData: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :cond_3
    const-string v3, "Certificate: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    .restart local v2       #i:I
    :cond_4
    aget-object v3, p5, v2

    if-eqz v3, :cond_5

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p5, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "];"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 88
    .end local v2           #i:I
    .restart local v1       #errorInfo:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    if-ne p0, v3, :cond_7

    .line 90
    const-string v3, "SecurityRightData"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p1, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 91
    :cond_7
    const/4 v3, 0x2

    if-ne p0, v3, :cond_8

    .line 93
    const-string v3, "SecurityErrorData"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p1, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 96
    :cond_8
    const-string v3, "SecurityLoginData"

    sget-object v4, Lcom/taobao/securityjni/usertrack/UserTrackReport;->BUILD_VERSION:Ljava/lang/String;

    invoke-static {v3, p1, v1, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pageName"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static countDuplicatesSecurity([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .parameter "currentStack"
    .parameter "parentStack"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, duplicates:I
    array-length v3, p1

    .line 191
    .local v3, parentIndex:I
    array-length v1, p0

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    .line 199
    :cond_0
    return v0

    .line 192
    :cond_1
    aget-object v2, p1, v3

    .line 193
    .local v2, parentFrame:Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getPhoneInformation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 204
    const-string v1, " ; "

    .line 205
    .local v1, split:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, build:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DISPLAY: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PRODUCT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TAGS: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VERSION.SDK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VERSION.RELEASE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MODEL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEVICE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BRAND: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BOARD: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CPU_ABI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MANUFACTURER: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    const-string v2, "1.0.7"

    return-object v2
.end method

.method private static innerPrintStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "throwInfo"

    .prologue
    .line 141
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 142
    .local v0, str:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 143
    .local v1, writer:Ljava/io/PrintWriter;
    if-eqz p0, :cond_0

    .line 144
    invoke-static {v1, p0}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->printStackTraceSecurity(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 146
    :cond_0
    const-string v2, "Throwable is null!!"

    goto :goto_0
.end method

.method private static printStackTraceSecurity(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 11
    .parameter "err"
    .parameter "throwInfo"

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    const-string v7, "##"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 158
    .local v5, stack:[Ljava/lang/StackTraceElement;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 163
    move-object v4, v5

    .line 164
    .local v4, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 166
    .local v6, throwable:Ljava/lang/Throwable;
    :goto_1
    if-nez v6, :cond_1

    .line 185
    return-void

    .line 158
    .end local v4           #parentStack:[Ljava/lang/StackTraceElement;
    .end local v6           #throwable:Ljava/lang/Throwable;
    :cond_0
    aget-object v2, v5, v7

    .line 159
    .local v2, element:Ljava/lang/StackTraceElement;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "at "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string v9, "##"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 167
    .end local v2           #element:Ljava/lang/StackTraceElement;
    .restart local v4       #parentStack:[Ljava/lang/StackTraceElement;
    .restart local v6       #throwable:Ljava/lang/Throwable;
    :cond_1
    const-string v7, "Caused by: "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 169
    const-string v7, "##"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 173
    .local v0, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v0, v4}, Lcom/taobao/securityjni/usertrack/UserTrackReport;->countDuplicatesSecurity([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v1

    .line 174
    .local v1, duplicates:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v0

    sub-int/2addr v7, v1

    if-lt v3, v7, :cond_3

    .line 178
    if-lez v1, :cond_2

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "... "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " more"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    const-string v7, "##"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    :cond_2
    move-object v4, v0

    .line 183
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_1

    .line 175
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    const-string v7, "##"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static declared-synchronized setEnableOutPutExpInfo(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 41
    const-class v0, Lcom/taobao/securityjni/usertrack/UserTrackReport;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/taobao/securityjni/usertrack/UserTrackReport;->ENABLE_EXP_INFO_OUT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
