.class public Landroid/taobao/common/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/common/SDKConfig$1;,
        Landroid/taobao/common/SDKConfig$SingletonHolder;
    }
.end annotation


# static fields
.field private static sApiBaseUrl:Ljava/lang/String;

.field private static sAppSaveFileRootDir:Ljava/lang/String;

.field private static sAppSecret:Ljava/lang/String;

.field private static sAppkey:Ljava/lang/String;

.field private static sApplication:Landroid/app/Application;

.field private static sContext:Landroid/content/Context;

.field private static sIsSigned:Z

.field private static sProvider:Landroid/taobao/apirequest/IEcodeProvider;

.field private static sTTID:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/taobao/common/SDKConfig;->sIsSigned:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/common/SDKConfig;->sVersion:Ljava/lang/String;

    .line 81
    const-string v0, "taobao"

    sput-object v0, Landroid/taobao/common/SDKConfig;->sAppSaveFileRootDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/common/SDKConfig$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/taobao/common/SDKConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/common/SDKConfig;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/taobao/common/SDKConfig$SingletonHolder;->access$100()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGlobalAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/taobao/common/SDKConfig;->sAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Landroid/taobao/common/SDKConfig;->sAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/taobao/common/SDKConfig;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getGlobalBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Landroid/taobao/common/SDKConfig;->sApiBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/taobao/common/SDKConfig;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalIEcodeProvider()Landroid/taobao/apirequest/IEcodeProvider;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Landroid/taobao/common/SDKConfig;->sProvider:Landroid/taobao/apirequest/IEcodeProvider;

    return-object v0
.end method

.method public getGlobalIsSign()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Landroid/taobao/common/SDKConfig;->sIsSigned:Z

    return v0
.end method

.method public getGlobalSaveFileRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Landroid/taobao/common/SDKConfig;->sAppSaveFileRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalTTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/taobao/common/SDKConfig;->sTTID:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Landroid/taobao/common/SDKConfig;->sVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setGlobalAppSecret(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "appSecret"

    .prologue
    .line 113
    sput-object p1, Landroid/taobao/common/SDKConfig;->sAppSecret:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setGlobalAppkey(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "appkey"

    .prologue
    .line 108
    sput-object p1, Landroid/taobao/common/SDKConfig;->sAppkey:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setGlobalApplication(Landroid/app/Application;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "application"

    .prologue
    .line 98
    sput-object p1, Landroid/taobao/common/SDKConfig;->sApplication:Landroid/app/Application;

    .line 99
    return-object p0
.end method

.method public setGlobalBaseUrl(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 122
    sput-object p1, Landroid/taobao/common/SDKConfig;->sApiBaseUrl:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setGlobalContext(Landroid/content/Context;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "context"

    .prologue
    .line 93
    sput-object p1, Landroid/taobao/common/SDKConfig;->sContext:Landroid/content/Context;

    .line 94
    return-object p0
.end method

.method public setGlobalIEcodeProvider(Landroid/taobao/apirequest/IEcodeProvider;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "ecodeProvider"

    .prologue
    .line 132
    sput-object p1, Landroid/taobao/common/SDKConfig;->sProvider:Landroid/taobao/apirequest/IEcodeProvider;

    .line 133
    return-object p0
.end method

.method public setGlobalIsSign(Z)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "sign"

    .prologue
    .line 84
    sput-boolean p1, Landroid/taobao/common/SDKConfig;->sIsSigned:Z

    .line 85
    return-object p0
.end method

.method public setGlobalSaveFileRootDir(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 1
    .parameter "saveFileRootDir"

    .prologue
    .line 137
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 138
    sput-object p1, Landroid/taobao/common/SDKConfig;->sAppSaveFileRootDir:Ljava/lang/String;

    .line 140
    :cond_0
    return-object p0
.end method

.method public setGlobalTTID(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "ttid"

    .prologue
    .line 127
    sput-object p1, Landroid/taobao/common/SDKConfig;->sTTID:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setGlobalVersion(Ljava/lang/String;)Landroid/taobao/common/SDKConfig;
    .locals 0
    .parameter "version"

    .prologue
    .line 168
    sput-object p1, Landroid/taobao/common/SDKConfig;->sVersion:Ljava/lang/String;

    .line 169
    return-object p0
.end method
