.class public Lcom/alibaba/mobileim/sdk/openapi/e;
.super Ljava/lang/Object;
.source "WWAPIImpl.java"

# interfaces
.implements Lcom/alibaba/mobileim/sdk/openapi/b;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hL:Ljava/lang/String;

.field private hM:Z

.field private hN:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/mobileim/sdk/openapi/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mobileim/sdk/openapi/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "appId"
    .parameter "ignoreSign"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hL:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hM:Z

    .line 40
    return-void
.end method

.method private b([Landroid/content/pm/Signature;)Z
    .locals 7
    .parameter "signatures"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 117
    iget-boolean v5, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hM:Z

    if-eqz v5, :cond_0

    .line 118
    sget-object v4, Lcom/alibaba/mobileim/sdk/openapi/e;->TAG:Ljava/lang/String;

    const-string v5, "ignore signature"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-boolean v3, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hN:Z

    .line 133
    :goto_0
    return v3

    .line 122
    :cond_0
    if-nez p1, :cond_1

    move v3, v4

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, length:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 126
    aget-object v2, p1, v0

    .line 127
    .local v2, signature:Landroid/content/pm/Signature;
    if-eqz v2, :cond_2

    const-string v5, "3082022b30820194a00302010202044c7232f2300d06092a864886f70d010105050030593111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f753110300e060355040a1307616c6962616261310f300d060355040b1306616c6979756e310e300c06035504031305616c6977773020170d3130303832333038333630325a180f32313130303733303038333630325a30593111300f060355040813087a68656a69616e673111300f0603550407130868616e677a686f753110300e060355040a1307616c6962616261310f300d060355040b1306616c6979756e310e300c06035504031305616c69777730819f300d06092a864886f70d010101050003818d0030818902818100abd42ebef34927a6c58535563fbd06debadaef61b2f2100cc145c456ef2cb6875e82b278e3d7d57686a91d713e572df4652938868a9d12ce41bee1b072bc5fc2f8a6937df00bb93a5e89d4e65a03b6892ca9d9c829fdff00f94067d9948f8b19170aaa7e8a7dcf4a1714d5636f2ba8a6d9ac7379e324207f8e5a1c15291d8ae70203010001300d06092a864886f70d010105050003818100a6c4cdc7508b96c6a59a0f6c3d6e9437cac4ab1c7802c5484f708519b19f79dafb681283c4789ab8d6cf06329e8e165641ffcb7f28f1260c7226c1fc1c0c3d84c6d526e95d39c49f63d0a5190c1cae483a43f280285d27019013e48a4ee10cf7a8ab79218b1390bced96d4637ba65245a0a6424e496f9b1aeaf68c64d2bfa9ec"

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hN:Z

    goto :goto_0

    .end local v2           #signature:Landroid/content/pm/Signature;
    :cond_4
    move v3, v4

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/mobileim/sdk/openapi/a;)I
    .locals 4
    .parameter "req"

    .prologue
    .line 43
    iget-boolean v1, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hN:Z

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/mobileim/sdk/openapi/e;->ay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/e;->TAG:Ljava/lang/String;

    const-string v2, "sendReq failed for wx app signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v1, -0x1

    .line 59
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/mobileim/sdk/openapi/a;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/alibaba/mobileim/sdk/openapi/e;->TAG:Ljava/lang/String;

    const-string v2, "sendReq failed for checkArgs failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, -0x2

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/alibaba/mobileim/sdk/openapi/a;->toBundle(Landroid/os/Bundle;)V

    .line 56
    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->hL:Ljava/lang/String;

    const/16 v3, 0x10e

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/mobileim/sdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const/4 v1, -0x3

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ay()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.alibaba.mobileim"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 80
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 87
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 83
    .restart local v1       #packInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Lcom/alibaba/mobileim/sdk/openapi/e;->b([Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 84
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public az()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/mobileim/sdk/openapi/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.alibaba.mobileim"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 93
    .local v1, packInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 103
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 96
    .restart local v1       #packInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v2, versionCode:I
    const/16 v4, 0x10e

    if-gt v4, v2, :cond_0

    .line 98
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    .end local v1           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #versionCode:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
