.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
.super Ljava/lang/Object;
.source "LoginConnectorHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tao.LoginConnectorHelper"


# instance fields
.field private mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

.field private final mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;)V
    .locals 0
    .parameter "appToken"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 0
    .parameter "appToken"
    .parameter "checkCode"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    .line 36
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    .line 37
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v0, hs:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 171
    .local v2, stmp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 174
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static signgbk(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "in"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 164
    :goto_0
    return-object v3

    .line 159
    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 160
    .local v1, md:Ljava/security/MessageDigest;
    const-string v3, "gbk"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 161
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 162
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "sign error !"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getMtopCorrectedTime()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, timeStr:Ljava/lang/String;
    new-instance v1, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v1}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 43
    .local v1, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v4, "api"

    const-string v5, "com.taobao.client.sys.login"

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v4, "t"

    invoke-virtual {v1, v4, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v4, "v"

    const-string v5, "v3"

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "needSSOToken"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getUserInput()Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 49
    const-string v4, "username"

    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getUserInput()Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getPubKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/taobao/util/RSAUtil;->generateRSAPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v4

    sput-object v4, Landroid/taobao/util/RSAUtil;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    .line 52
    const-string v4, "password"

    .line 53
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getUserInput()Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->getPasswd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/util/RSAUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const-string v4, "topToken"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/common/SDKConfig;->getGlobalAppSecret()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->signgbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 61
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getUserInput()Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->signgbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v4, "token"

    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->getAppToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    if-eqz v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCodeId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 67
    const-string v4, "checkCodeId"

    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCodeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "checkCode"

    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_2
    :goto_0
    const-string v4, "appKey"

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, temstr:Ljava/lang/String;
    const-string v4, "Tao.LoginConnectorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loinUrl="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v2           #temstr:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Tao.LoginConnectorHelper"

    const-string v5, "failed to sign with pubKey"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const/4 v2, 0x0

    goto :goto_1

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "Tao.LoginConnectorHelper"

    const-string v5, "mCheckCode is not null, but getCheckCode() and getCheckCodeId() return NULL"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 10
    .parameter "bytes"

    .prologue
    .line 82
    new-instance v4, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    invoke-direct {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;-><init>()V

    .line 83
    .local v4, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;->mTaoLoginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginAppToken(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;)V

    .line 85
    new-instance v5, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v5}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 86
    .local v5, response:Landroid/taobao/apirequest/ApiResponse;
    const/4 v6, 0x0

    .line 88
    .local v6, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, p1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #retValue:Ljava/lang/String;
    .local v7, retValue:Ljava/lang/String;
    move-object v6, v7

    .line 93
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v6       #retValue:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    .line 94
    :cond_0
    const-string v8, "Tao.LoginConnectorHelper"

    const-string v9, "syncPaser() receives empty bytes"

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_1
    return-object v4

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v5, v6}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v8

    iget-boolean v8, v8, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v8, :cond_b

    .line 99
    iget-object v3, v5, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 101
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "sid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 102
    const-string v8, "sid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSessionId(Ljava/lang/String;)V

    .line 104
    :cond_3
    const-string v8, "userId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 105
    const-string v8, "userId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setUserId(Ljava/lang/String;)V

    .line 107
    :cond_4
    const-string v8, "nick"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 108
    const-string v8, "nick"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setNickName(Ljava/lang/String;)V

    .line 110
    :cond_5
    const-string v8, "topSession"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 111
    const-string v8, "topSession"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setTopSession(Ljava/lang/String;)V

    .line 113
    :cond_6
    const-string v8, "ecode"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 114
    const-string v8, "ecode"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->seteCode(Ljava/lang/String;)V

    .line 116
    :cond_7
    const-string v8, "ssoToken"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 117
    const-string v8, "ssoToken"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setSsoToken(Ljava/lang/String;)V

    .line 119
    :cond_8
    const-string v8, "logintime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 120
    const-string v8, "logintime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginTime(Ljava/lang/String;)V

    .line 122
    :cond_9
    const-string v8, "token"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 123
    const-string v8, "token"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/taobao/util/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setAutoLoginToken(Ljava/lang/String;)V

    .line 126
    :cond_a
    sget-object v8, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;->MTOP:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setLoginMode(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 127
    :catch_1
    move-exception v2

    .line 128
    .local v2, e:Lorg/json/JSONException;
    const-string v8, "Tao.LoginConnectorHelper"

    const-string v9, "error parsing JSON"

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 132
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :cond_b
    const-string v8, "ERROR_NEED_CHECK_CODE"

    iget-object v9, v5, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 133
    iget-object v3, v5, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 134
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    const-string v8, "checkCodeUrl"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "checkCodeId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    :try_start_2
    const-string v8, "checkCodeUrl"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, checkCodeUrl:Ljava/lang/String;
    const-string v8, "checkCodeId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, checkCodeId:Ljava/lang/String;
    new-instance v8, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;

    invoke-direct {v8, v0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 139
    .end local v0           #checkCodeId:Ljava/lang/String;
    .end local v1           #checkCodeUrl:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 140
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 141
    .end local v2           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v2

    .line 142
    .local v2, e:Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
    throw v2

    .line 147
    .end local v2           #e:Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :cond_c
    iget-object v8, v5, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->setErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
