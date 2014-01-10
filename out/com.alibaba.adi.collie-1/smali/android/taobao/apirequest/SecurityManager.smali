.class public Landroid/taobao/apirequest/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/SecurityManager$1;,
        Landroid/taobao/apirequest/SecurityManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final TYPE_SIGN_MTOP:I = 0x0

.field public static final TYPE_SIGN_TOP:I = 0x1


# instance fields
.field private mSecretUtil:Lcom/taobao/securityjni/SecretUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/apirequest/SecurityManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/taobao/apirequest/SecurityManager;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/apirequest/SecurityManager;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/taobao/apirequest/SecurityManager$SingletonHolder;->access$100()Landroid/taobao/apirequest/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method private getMTopSign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "appkey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 86
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v2, signParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "api"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const-string v3, "API"

    const-string v4, "api"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    const-string v3, "data"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    const-string v3, "DATA"

    const-string v4, "data"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    const-string v3, "ecode"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 94
    const-string v3, "ECODE"

    const-string v4, "ecode"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    const-string v3, "imei"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    const-string v3, "IMEI"

    const-string v4, "imei"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    const-string v3, "imsi"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    const-string v3, "IMSI"

    const-string v4, "imsi"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    const-string v3, "t"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 103
    const-string v3, "TIME"

    const-string v4, "t"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_6
    const-string v3, "v"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 106
    const-string v3, "V"

    const-string v4, "v"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_7
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 109
    .local v0, dataCtx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Landroid/taobao/apirequest/SecurityManager;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v3, v2, v0}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, mtopSignData:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getTopSing(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "appkey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 123
    :cond_0
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 124
    .local v0, dataCtx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Landroid/taobao/apirequest/SecurityManager;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v2, p1, v0}, Lcom/taobao/securityjni/SecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, topSignData:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "userName"
    .parameter "time"
    .parameter "appkey"

    .prologue
    .line 137
    invoke-static {p1}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/taobao/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    .line 140
    :cond_1
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 141
    .local v0, dataCtx:Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 142
    iget-object v2, p0, Landroid/taobao/apirequest/SecurityManager;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v2, p1, p2, v0}, Lcom/taobao/securityjni/SecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, token:Ljava/lang/String;
    goto :goto_0
.end method

.method public getSign(ILjava/util/AbstractMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "signType"
    .parameter
    .parameter "appkey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 64
    .local v0, sign:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 73
    .end local p2           #params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 66
    .restart local p2       #params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    check-cast p2, Ljava/util/HashMap;

    .end local p2           #params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Landroid/taobao/apirequest/SecurityManager;->getMTopSign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 69
    .restart local p2       #params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    check-cast p2, Ljava/util/TreeMap;

    .end local p2           #params:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Landroid/taobao/apirequest/SecurityManager;->getTopSing(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/content/ContextWrapper;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    new-instance v0, Lcom/taobao/securityjni/SecretUtil;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Landroid/taobao/apirequest/SecurityManager;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    .line 43
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V

    .line 44
    return-void
.end method
